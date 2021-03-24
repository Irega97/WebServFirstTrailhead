@isTest
private class AccountManagerTest {
    
    @isTest static void testGetAccount(){
        RestRequest request = new RestRequest();
        Account acc = new Account(Name = 'ivan');
        insert acc;
        System.debug(acc.ID);
        Contact contact = new Contact(AccountID = acc.ID, Lastname='pepe');
        insert contact;
        request.requestURI = 
            'https://mindful-hawk-pyg05h-dev-ed.lightning.force.com/services/apexrest/Accounts/' 
            + acc.ID + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account account = AccountManager.getAccount();
        /* System.assert(acc != null); */
        System.assertEquals(acc, account);
    }
}
