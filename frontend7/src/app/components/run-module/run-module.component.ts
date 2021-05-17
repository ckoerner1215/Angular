import { Component, OnInit } from '@angular/core';
import { ModuleService } from 'src/app/services/module.service';
import { Module } from 'src/app/models/module.model';
import { ActivatedRoute, Router } from '@angular/router';
import { FormGroup, FormControl, Validators} from '@angular/forms';


@Component({
  selector: 'app-run-module',
  templateUrl: './run-module.component.html',
  styleUrls: ['./run-module.component.css']
})
export class RunModuleComponent implements OnInit {


  currentModule: Module = {
    title: '',
    description: '',
    published: false
  };
   message = '';
   keys:  Array<string> = [];
   labels:  Array<string> = [];
   labelValues:  Array<string> = [];
   labelDescriptions: Array<string> = [];
   fields: Array<string> = [];
   validModule = true;

   locationOfKsh = '';

   listOfFiles: Array<string> = [];
   listOfDirectories: Array<string> = [];

   myMap = new Map();

   runInfo: any = {};

  constructor(private moduleService: ModuleService,
    private route: ActivatedRoute,
    private router: Router) { }

  ngOnInit(): void {
    this.message = '';
    console.log(this.route.snapshot.params.id);
    this.getModule(this.route.snapshot.params.id);
  }

  getModule(id: string): void {
    this.moduleService.get(id)
      .subscribe(
        data => {
          this.currentModule = data;
          console.log("Should have data now.....");
          console.log(data);
          this.getFields(this.currentModule.title);
          this.getFileList(this.currentModule.title);
          this.getDirectoryList(this.currentModule.title);
        },
        error => {
          console.log(error);
        });
  }

  getDirectoryList(title: any): void {
      this.moduleService.getListOfDirectories(title)
        .subscribe(
        data => {
          this.listOfDirectories = data;
          console.log('list of directories:  ' + this.listOfDirectories);
        },
        error => {
          console.log(error);
        });
  }

  getFileList(title: any): void {
      this.moduleService.getListOfFiles(title)
        .subscribe(
        data => {
          this.listOfFiles = data;
          console.log('list of files:  ' + this.listOfFiles);
        },
        error => {
          console.log(error);
        });
  }

  getFields(title: any): void {
    this.moduleService.help(title)
      .subscribe(
        data => {
          this.runInfo = data['runInfo'];
          this.locationOfKsh = this.runInfo['scriptLocation'];
          this.fields = Object.keys(this.runInfo);
          for (var input of data['inputs']){
               this.labels.push(input['label']);
               this.labelDescriptions.push(input['description']);
               this.labelValues.push(input['value']);
               this.keys.push(input['key']);
               this.validModule=true;
          }
        },
        error => {
          this.labels.push('Name');
          this.labelDescriptions.push(title);
          console.log("There was an issue trying to get inputs for this module.");
          console.log("ERROR: " + error);
          this.message = "This is not a working Module.";
          this.validModule = false;
        });
  }

  runModule(): void {
    var mess = '  ';

    this.moduleService.runWithInputs(this.runInfo)
      .subscribe(
        response => {
          console.log("name:  " + response.name);
          console.log("success:  " + response.success);
          console.log("error:   " + response.errorCode);
          if(response.success){
             mess = response.output;
             mess = mess + '<br>' + 'The module has run successfully.';
             this.message = mess;
          } else {
             mess = 'There was a problem running the module. <br>';
             mess = mess + '   Error code: ' + response.errorCode;
             mess = mess + '  OUTPUT: ' + response.output;
             this.message = mess; 
          }    
        },
        error => {
          console.log(error);
          this.message = "Unfortunately, this did not seem to work :(";
        });
  }

  changeKshFile(e: any) {
    console.log(this.runInfo['kshFile']);
    console.log(e.target.value);
    this.runInfo['kshFile']=e.target.value;
  }

  changeDirectory(e: any) {
    console.log(this.runInfo);
    console.log(e.target.value);
    this.runInfo['scriptLocation']=e.target.value;
  }



}
