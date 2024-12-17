public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {    
        return[Select Id,Name,Active__c from Account where Active__c = 'Yes' with SECURITY_ENFORCED];
    }
}