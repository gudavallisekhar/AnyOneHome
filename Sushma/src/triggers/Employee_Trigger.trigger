trigger Employee_Trigger on Employee__c (before insert) {
    
    
    for(Employee__c emp:Trigger.NEW){
        
        if(emp.State__c=='Delhi'){
            
            emp.Email__c = emp.Employee_Name__c+'gudavalli@gmail.com';
        }
        
    }

}