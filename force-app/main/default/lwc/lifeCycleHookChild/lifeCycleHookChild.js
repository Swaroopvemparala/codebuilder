import { LightningElement } from 'lwc';

export default class LifeCycleHookChild extends LightningElement {
    renderedCallback(){
        console.log('Child renderedCallback');
    }
    connectedCallback(){
        console.log('Child connectedCallback');
    }
    constructor(){
        super();
        console.log('Child constructor');
    }
    disconnectedCallback(){
        console.log('Child disconnectedCallback');
    }
}