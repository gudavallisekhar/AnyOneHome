global class Update_Account_Batch implements Database.Batchable<sobject>  {

    global Database.QueryLocator start(Database.BatchableContext bc){ 
    
        User user_id =[select id,name,alias from user where alias=:'jayan'];
        String Query = 'select id,ownerid from account where ownerId=\''+user_id.Id+'\'';
        return Database.getQueryLocator(Query);
    
    }
    
    global void execute(Database.BatchableContext bc,List<account> info){
        
         User user_id =[select id,name,alias from user where alias=:'sguda'];
        
            for(Account acc:info){
                acc.OwnerId=user_id.Id;
            } 
            try{update info;}catch(Exception e){}
        
        
    }
    
    global void finish(Database.BatchableContext bc){}
    
}