import { Component, OnInit } from '@angular/core';
import { ModuleService } from 'src/app/services/module.service';
import { Module } from 'src/app/models/module.model';
import { ActivatedRoute, Router } from '@angular/router';
import { FormGroup, FormControl, Validators} from '@angular/forms';
import { saveAs } from 'file-saver';

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
   downloadedFile = '';
   filename = ''
 
   scriptLocation = '';
   kshFile = '';

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
          this.runInfo['scriptLocation']=this.listOfDirectories[0];
          this.locationOfKsh = this.listOfDirectories[0];
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
          console.log('data[0]: ' + data[0]);
          this.kshFile = data[0];
          this.runInfo['kshFile']=data[0];
          console.log('11111111111' + this.kshFile);
          console.log('222222222222' + this.runInfo['kshFile']);
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
          this.runInfo['scriptLocation'] = this.locationOfKsh;
          this.runInfo['kshFile'] = this.kshFile;
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

  downloadFile(): void {
    var mess = '  ';
    var index, i;  

    for (i=0; i < this.runInfo['kshFile'].length; i++){
           if (this.runInfo['kshFile'].substring(i, i+1) == '/'){
		   index = i+1;
	   }
    }
    var filename = this.runInfo['kshFile'].substring(index);
    this.filename = filename;

    console.log("in run-module.ts...........");
    console.log("kshFile:   " + this.kshFile);
    console.log("kshFile:   " + this.runInfo['kshFile']);
    this.moduleService.downloadFile(this.runInfo['kshFile'])
      .subscribe(
        response => {
          console.log("file:  " + this.runInfo['kshFile']);
          if(response.success){
             mess = response.output;
             var blob = new Blob([mess], {type: "text/plain;charset=utf-8", endings:"native"});
             saveAs(blob, filename);
          } else {
             mess = 'There was a problem getting the file. <br>';
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
  showFile(): void {
    var mess = '  ';
  
    console.log("in run-module.ts...........");
    console.log("kshFile:   " + this.kshFile);
    console.log("kshFile:   " + this.runInfo['kshFile']);
    this.moduleService.showFile(this.runInfo['kshFile'])
      .subscribe(
        response => {
          console.log("file:  " + this.runInfo['kshFile']);
          if(response.success){
             mess = response.output;
             mess = mess + '<br>' + 'This is the contents of the .ksh file.';
             this.message = mess;
             //var blob = new Blob([mess], {type: "text/plain;charset=utf-8"});
             //saveAs(blob, "kshfile.txt");
          } else {
             mess = 'There was a problem getting the file. <br>';
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

  uploadFile(): void {
    var mess = '  ';

    this.downloadedFile = "/d/Users/carolyn.koerner/Downloads/" + this.filename;

    this.moduleService.uploadFile(this.downloadedFile)
      .subscribe(
        response => {
          if(response.success){
             mess = response.output;
          } else {
             mess = 'There was a problem uploading the file. <br>';
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


  runModule(): void {
    var mess = '  ';
    console.log("ksh file: " + this.runInfo['kshFile']);
    console.log("script location: " + this.runInfo['scriptLocation']);

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
    this.kshFile = e.target.value;
  }

  changeDirectory(e: any) {
    console.log(this.runInfo);
    console.log(e.target.value);
    this.runInfo['scriptLocation']=e.target.value;
    this.scriptLocation=e.target.value;
  }



}
