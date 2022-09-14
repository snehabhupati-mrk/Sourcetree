public with sharing class AccountControllercmp {
    @AuraEnabled(cacheable=true)
        public static List<Account> getAllAccounts(){
            
            List<Account> accs = [select id,name,website,industry,rating from Account];
            return accs;
        }
    }