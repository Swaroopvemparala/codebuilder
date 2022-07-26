import { LightningElement } from 'lwc';

export default class LifeCycleHookParent extends LightningElement {
    renderedCallback(){
        console.log('Parent renderedCallback');
    }
    connectedCallback(){
        console.log('Parent connectedCallback');
    }
    constructor(){
        super();
        console.log('Parent constructor');
    }
    status= false
    clickHandler(e){
        this.status= !this.status
    }
}