import { LightningElement, wire } from 'lwc';
import gad from '@salesforce/apex/accountDisplay.getAccountData';
export default class AccountDisplay extends LightningElement {
    acn
    changeHandlerName(event){
        this.acn= event.target.value;
    }
    arn
    changeHandlerPhone(event){
        this.arn=event.target.value;
    }
    @wire(gad,{accName:'$acn', ar:'$arn'}) acts;
}