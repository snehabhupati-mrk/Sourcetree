public class AccountApexClass {
    public class AccnconData {
         Account acc;
         Contact con;
    }
    
    public  void CreateAccount(){
        Account acc = new Account(name = 'test_Static_Account',phone = '8748237488',AccountNumber = 'jhjhs67890', Email__c = 'info@gmail.com');
        insert acc;
    }
    public static list<Account> CreateMultipleAccounts(integer count,string n){
         list<Account> Acclist = new list<Account>();
        for(integer i=0;i<count;i++){
        Account acc = new Account(name = n+i,phone = '835983483',Accountnumber = 'hdjsh45578', Email__c = 'account@gmail.com');
            acclist.add(acc);
        }
        if(!Acclist.isEmpty())  {
        insert acclist;
        }
            return acclist;
    }
    public static void printAccounts(list<Account>acclist){
       for(Account a : acclist){
    system.debug(a);
}
    }
    public static AccnConData createAccandCon(){
        Account a = new Account(name = 'dummy_wrappwer_Accounts',phone = '27377621', Email__c = 'WrapperAccount@gmail.com',AccountNumber = '12345qwert');
      insert a;
        Contact c  = new Contact(Lastname = 'dummy_wrappwer_Conatcts',phone = '3647681788',Email = 'Wrappercontact@gmail.com',AccountID = a.id);
        
        
        
        if(a.id !=null){
           
            insert c;
        } 
        
    
       
        AccnconData  obj = new AccnconData();
            obj.acc=a ;
            obj.con = c ;
        return obj;                                                         }
}