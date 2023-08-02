/*******************************************************************************************************
* @Name        ContactController
* @Author       Aditya Vempati
* @Date         02/08/2023
*******************************************************************************************/
public inherited sharing class ContactController 
{
    @AuraEnabled(Cacheable = true)
    public static List<Contact> getContacts()
    {
        return Security.stripInaccessible(AccessType.READABLE,[SELECT FirstName,LastName,Email FROM Contact LIMIT 100], true)?.getRecords();
    }
}