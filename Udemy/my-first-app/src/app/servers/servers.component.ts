import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-servers',
  templateUrl: './servers.component.html',
  styleUrls: ['./servers.component.css']
})
export class ServersComponent implements OnInit {
  allowNewServer = false;
  serverCreationStatus = 'No server was created!!';
  serverName = 'TestServer';
  serverCreated = false;
  servers = ['Testserver 1', 'Testserver 2'];
  constructor() {
    setTimeout(() => {
      this.allowNewServer = true;
    }, 2000);
  }

  ngOnInit(): void {
  }

  // an event will call this method
  onCreateServer() {
    this.serverCreated = true;
    this.servers.push(this.serverName);
    this.serverCreationStatus = 'Server was created!  Name is ' + this.serverName;
  }

  //not using this method anymore since we commented out 
  //the first input in the servers.component.html file 
  onUpdateServerName(event: InputEvent){
    console.log(event);
    this.serverName=(<HTMLInputElement>event.target).value;
  }

}
