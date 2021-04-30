import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'section5-assignment';
  // the type definition of oddNumbers is an array of numbers -
  //  number[]
  oddNumbers: number[] = [];
  evenNumbers: number[] = [];

  onIntervalFired(firedNumber: number){
    //check if firedNumber is even or odd with the modulo operator %
    if (firedNumber % 2 === 0){
      this.evenNumbers.push(firedNumber);
    } else {
      this.oddNumbers.push(firedNumber);
    }
  }
}
