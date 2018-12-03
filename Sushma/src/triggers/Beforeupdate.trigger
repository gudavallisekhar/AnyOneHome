trigger Beforeupdate on Lead (before insert) {

    if(Trigger.isInsert){
        
        if(Trigger.isBefore){
            
            for(Lead led : Trigger.NEW ){
                
                if(led.leadsource=='web'){
                    led.Phone='9090908978';
                }
                
            }
        }
        
    }
    
    
}