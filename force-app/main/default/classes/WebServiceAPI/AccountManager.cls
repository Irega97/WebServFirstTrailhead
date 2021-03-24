@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    
    @HttpGet
    //Devuelve ID, name de cuenta y de contactos asociados
    global static Account getAccount(){
        RestRequest req = RestContext.request;
        System.debug('REQUEST LAUNCHED: ' + req);
        String accountID = req.requestURI.substringBetween('Accounts/','/contacts');
        System.debug('AccountID: ' + accountID);
        Account account = [SELECT ID, name, (SELECT ID, name FROM Contacts) FROM Account WHERE ID = :accountID];
        return account;
    }
}
