import { LightningElement } from 'lwc';

export default class C2pChildComponent extends LightningElement {
    closeMethod(){
        const myEvent = new CustomEvent('close',{detail:
                                                {msg:"Modal closed successfully"}
    })
        this.dispatchEvent(myEvent)
    }
}