import { LightningElement, track } from 'lwc';

export default class DemoComponent extends LightningElement {
    name={cn:'Antra', location:'Hyderabad', employees:50}
    @track age=[20,30,40] // non reactive private property. After adding @track it becomes reactive private property
    ag=20 // reactive private property
    get age1(){
        return this.age[0]
    }
/*name
age
    changeFirstName(event){
    this.name= event.target.value
}*/
changeAge(event){
    this.age[0]= event.target.value
}
}
