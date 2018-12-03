global class Account_Ownere_Update_BatchApex implements Database.Batchable<Sobject> {

    
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        User u =[select id,alias from user where alias='sguda'];
        String Query ='select id,ownerId from Account where ownerId=\''+u.id+'\'';
        return Database.getQueryLocator(Query);
        
    }
    
    global void execute(Database.BatchableContext bc,List<Account> acc){
        
       /* User u =[select id,alias from user where alias='jayan'];
        
        for(Account ant:acc){
            ant.OwnerId=u.Id;
        } 
        update acc;*/
        
    }
    
    global void finish(Database.BatchableContext bc){}
    
    
}