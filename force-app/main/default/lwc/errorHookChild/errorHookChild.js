import { LightningElement } from 'lwc';

export default class ErrorHookChild extends LightningElement {
    renderedCallback(){
        console.log('Child renderedCallback');
    }
    connectedCallback(){
        console.log('Child connectedCallback');
        throw new Error('Loading of child component failed')
    }
    constructor(){
        super();
        console.log('Child constructor');
    }
    disconnectedCallback(){
        console.log('Child disconnectedCallback');
    }
}