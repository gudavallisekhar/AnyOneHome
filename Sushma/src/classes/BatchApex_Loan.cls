global class BatchApex_Loan implements Database.Batchable<sobject> {

    
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        User u =[Select id,alias from user where alias='Bharg'];
        String query='select id,ownerid from Employee__c where ownerid=\''+u.Id+'\'';
        return Database.getQueryLocator(query);
        
    }
    
    global void execute(Database.BatchableContext bc,List<Employee__c> scope){   
         User u =[Select id,alias from user where alias=:'jayan'];
        for(Employee__c emp:scope){
            emp.OwnerId=u.id;
        } update scope;
    }
    global void finish(Database.BatchableContext bc){}
}