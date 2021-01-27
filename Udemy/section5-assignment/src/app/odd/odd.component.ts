import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-odd',
  templateUrl: './odd.component.html',
  styleUrls: ['./odd.component.css']
})
export class OddComponent implements OnInit {
  // We want to set this from another component
  // The value is sent into this component as an input
  // The value is passed from outside into this component
  // So we have to add the @Input decorator
  @Input() number: number ;
  constructor() { }

  ngOnInit(): void {
  }

}
