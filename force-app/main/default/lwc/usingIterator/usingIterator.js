import { LightningElement } from 'lwc';

export default class UsingIterator extends LightningElement {
    cmpNames=['Antra','Hogar','Techwish']

    cmpData=[{CompanyName: 'Antra',Employees:2000, Location:'Hyderabad'},
    {CompanyName: 'Hogar',Employees:4000, Location:'Delhi'},
    {CompanyName: 'Techwish',Employees:6000, Location:'Banglore'}]
}