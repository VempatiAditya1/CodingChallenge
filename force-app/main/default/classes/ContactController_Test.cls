/*******************************************************************************************************
* @Name        ContactController_Test
* @Author       Aditya Vempati
* @Date         02/08/2023
*******************************************************************************************/
@isTest(seeAllData = false)
public class ContactController_Test {
    
    private final static String DUMMY_NAME = 'dummyName';
    private final static String DUMMY_EMAIL = 'test@test.com';
    
    @testSetup
    private static void setupTestData()
    {
        List<Contact> contacts = new List<Contact>();
        for(Integer i = 0; i < 10; i++)
        {
            contacts.add(new Contact(FirstName = DUMMY_NAME + i , LastName = DUMMY_NAME + i, Email = DUMMY_EMAIL)); 
        }
        insert contacts;
    }
    
    @isTest
    private static void whenContactsArePresentThenItShouldGetContacts()
    {
        Integer contactsPresentInOrg = [SELECT COUNT() FROM Contact];
        //Given Contacts Should be Present
        System.Assert.isTrue(contactsPresentInOrg > 0 , 'Contacts are not Present in Org');
        Test.startTest();
        
        //When 
        List<Contact> contacts = ContactController.getContacts();
        
        Test.stopTest();
        //Then contactsPresentInOrg and retrieved contacts size should be equal
        System.Assert.areEqual(contacts.size(), contactsPresentInOrg);
    }
    
}