public class Create_Account {

    public String acc_name  {get;set;}
    public String acc_phone {get;set;}
    public String acc_city {get;set;}
    public String ins_message {get;set;}
    public Integer incval {set;get;}
    public List<Account> list_acc {set;get;}
    Account acc;
    public String result {set;get;}
  
    public Create_Account(){ incval=0; list_acc = [select id,name,phone,type,billingcity from account LIMIT 10000];}
    public void Save_Record(){
     	acc = new Account();
        acc.name = acc_name;
        acc.Phone = acc_phone;
        acc.BillingCity = acc_city;
        insert acc;
        ins_message	=	'Account Successfully Created';
    }
    
    @AuraEnabled
    public static String save_record(String accName,String phone,String city){
        String message;

       try{
        Account  a = new Account();
        a.name = accName;
        a.Phone = phone;
        a.BillingCity = city;
        insert a;
        message = 'Successfully Record Created'; }catch(Exception en){ message = 'Fail'; }
        return message;
    }
    
    public void Display_Records(){
        list_acc = [select id,name from account];
    }
    
    public void Dateret(){
       incval = incval + 1; 
       result='Today My Date : '+System.today()+ 'Increment Value is :'+incval;
    }
    
}