public class Loan_DML_Apex {
    
    public List<Loan_Wrapper> loan {set;get;}
    
    public void search_val(){
        
         List<Employee__c> emp =[select id,name,ownerId,Email__c,Citynames__c,State__c from Employee__c];
         loan = new List<Loan_Wrapper>();
         for(Employee__c ec:emp){
            Loan_Wrapper lw = new Loan_Wrapper();
            lw.emps=ec;
            lw.flag=false; 
            loan.add(lw);
         }
        
    }
    
    public void assignto(){
        User u=[select id,alias from user where alias='Bharg'];
        List<Employee__c> newlist=new List<Employee__c>();
        for(Loan_Wrapper aw:loan){
            
            if(aw.flag==true){
               aw.emps.ownerId=u.id; 
               newlist.add(aw.emps);
            }            
        } 
        system.debug(newlist);
        update newlist;
        
        
    }

}