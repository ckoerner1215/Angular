import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-directives-assignment',
  templateUrl: './directives-assignment.component.html',
  styleUrls: ['./directives-assignment.component.css']
})
export class DirectivesAssignmentComponent implements OnInit {

  showSecret = false;
  //log is an empty array
  log = [];

  constructor() { }

  ngOnInit(): void {
  }

  onToggleDetails(){
    this.showSecret = !this.showSecret;
    //this.log.push(this.log.length + 1);
    // Use a timestamp instead of just a number.  
    // Date is a built-in Javascript class
    this.log.push(new Date());
  }

}
