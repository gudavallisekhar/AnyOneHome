public class Test_Inset_Class {

    public string a_name {set;get;}
    public string a_industry {set;get;}
    Public Account acc {set;get;}
    
    
    public Test_Inset_Class(){ acc = new Account(); }
    
    public void insert_Account(){
                         acc.name =  a_name;    
                         acc.Industry= a_industry;
        
        if(acc.name=='Rajesh'){
            acc.Phone='990998989';
            acc.Ownership='public';
        }else{
            acc.Phone='100000000';
            acc.Ownership='privage';
        }
        insert acc;
    }
    
    
}