public class Schedule_Job implements Schedulable {

    public void execute(SchedulableContext sc){
      
        Update_Account_Batch UAB = new Update_Account_Batch();
		Database.executeBatch(UAB,3);
        
    }
    
    
}