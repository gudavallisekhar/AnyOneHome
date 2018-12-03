public class schedule_feature implements schedulable {

    public void execute(SchedulableContext sc){
        
        info();
    }
    
    @future
    public static void info(){}
    
}