public class Loan_Schedule implements schedulable {

    public void execute(SchedulableContext sc){
        BatchApex_Loan BL = new BatchApex_Loan();
        database.executeBatch(BL,1);        
    }
    
}