import { Component, OnInit, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-game-control',
  templateUrl: './game-control.component.html',
  styleUrls: ['./game-control.component.css']
})
export class GameControlComponent implements OnInit {
  // Now this event can be caught from outside this component
  // intervalFired is the event name
  @Output() intervalFired = new EventEmitter<number>();
  interval;
  lastNumber = 0;

  constructor() { }

  ngOnInit(): void {
  }

  // tslint:disable-next-line: typedef
  onStartGame(){
    // setInteral is a built in Angular function
    this.interval = setInterval( () => {
      this.intervalFired.emit(this.lastNumber + 1);
      this.lastNumber++;
    }, 1000);
  }

  // tslint:disable-next-line: typedef
  onPauseGame(){
    clearInterval(this.interval);
  }

}
