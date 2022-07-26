import { api, LightningElement, wire } from 'lwc';
import getContactData from '@salesforce/apex/flipCard.getContactRecords';
export default class FlipCard extends LightningElement {
    @api recordId;
    @wire (getContactData, {accountId : '$recordId'}) contactData;

    handleAccountId(event){
        let accountId = event.detail.value[0];
        this.recordId = accountId;
    }

    addClass(event){
        let index = event.currentTarget.dataset.rowIndex;
        let flipElement = this.template.querySelector('[data-id="' + index + '"]');
        flipElement.classList.add('class1');
    }

    removeClass(event){
        let index = event.currentTarget.dataset.rowIndex;
        let flipElement = this.template.querySelector('[data-id="' + index + '"]');
        flipElement.classList.remove('class1');
    }
}