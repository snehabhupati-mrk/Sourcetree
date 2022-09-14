public class AccountCOnVFApexclass {
   public  Contact con {set;get;}
  public account acc{set;get;}
    public AccountCOnVFApexclass(ApexPages.StandardController controller) {
      con = new Contact();
      acc = (Account)controller.getrecord();
    }
    public void saverecord(){
    con.Accountid =acc.id;
    insert con;
    }
}