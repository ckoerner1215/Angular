import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-even',
  templateUrl: './even.component.html',
  styleUrls: ['./even.component.css']
})
export class EvenComponent implements OnInit {
  // We want to set this from another component
  // The value is sent into this component as an input
  // The value is passed from outside into this component
  // So we have to add the @Input decorator
  // tslint:disable-next-line: no-input-rename
  @Input('number') number: number ;

  constructor() { }

  ngOnInit(): void {
  }

}
