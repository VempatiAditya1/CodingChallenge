<b>Description:</b>
Retrieves the list of contacts using the Lightning web component that displays contacts in a table and adds the component to the new page.

<b>Technical Approach:</b>
1. Created a new Apex Class  "ContactController" and method "getContacts".
2. Created an LWC Component named "contactList" and used a wire adapter to get 
3. Contacts using the apex method getContacts.
4. Used Lightning Datatable to render Contacts List.
5. Created an App Page and embedded contactList LWC Component.
4. Added App Page to App.
