import { LightningElement, wire, track } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';

export default class ContactList extends LightningElement {
    columns = [
        { label: 'FirstName', fieldName: 'FirstName' },
        { label: 'LastName', fieldName: 'LastName' },
        { label: 'Email', fieldName: 'Email', type: 'email' },
    ];

    @track contacts = [];

    @wire(getContacts)
    contactInfo({ _error, data }) {
        if (data) {
            this.contacts = data;
        }
    };

}