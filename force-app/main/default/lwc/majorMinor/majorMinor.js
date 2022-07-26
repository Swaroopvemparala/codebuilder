import { LightningElement } from 'lwc';

export default class MajorMinor extends LightningElement {
    age
    status
    flag=true
    changeAge(event){
        this.age=event.target.value
        if(this.age>=18){
            this.status=true
        }
        else{
            this.flag=false
            this.status=false
        }
    }
}
