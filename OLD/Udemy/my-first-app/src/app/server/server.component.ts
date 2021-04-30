import { Component } from '@angular/core';

   //Note that the back-ticks `` allow us to 
   //have mulitple lines for the styles below:
@Component({
   selector: 'app-server',
   templateUrl: './server.component.html',
   styles: [`
      .online {
         color: white;
      }
   `]
} )
export class ServerComponent {
   serverId: number = 10;
   serverStatus: string = 'offline';

   constructor(){
      this.serverStatus=Math.random() > 0.5 ? 'online' : 'offline';
   }

   getServerStatus(){
       return this.serverStatus;
   }

   //This is the method that ngStyle uses to determine what color to put in the background 
   //of the paragraph.
   getColor(){
      return this.serverStatus === 'online' ? 'green' : 'red';
   }
}
