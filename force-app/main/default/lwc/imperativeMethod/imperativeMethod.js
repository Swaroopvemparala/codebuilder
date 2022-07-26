import { LightningElement } from 'lwc';
import gad from '@salesforce/apex/imperativeMethod.getAccountData';
export default class ImperativeMethod extends LightningElement {
    acn
    changeHandlerName(event){
        this.acn= event.target.value;
    }
    arn
    changeHandlerPhone(event){
        this.arn=event.target.value;
    }
    actDataStatus= false
    actData
    actErrStatus= false
    actErr
    clickHandler(event){
        gad({accName:this.acn,ar:this.arn})
        .then(result =>{
            this.actData= result;
            this.actDataStatus= true;
        })
        .catch(error =>{
            this.actErr= error;
            this.actErrStatus= true;
        })
    }
}