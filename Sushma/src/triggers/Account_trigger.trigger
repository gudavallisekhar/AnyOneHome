trigger Account_trigger on Account (before insert, after insert,before update) {
    
    List<Contact> insert_cont =new List<Contact>();
    if(Trigger.isInsert){
        
            if(Trigger.isBefore){
                for(Account acc:Trigger.New){
                    if(acc.rating=='Hot'){
                        acc.BillingCity='Delhi';
                    }
                }
            }else if(Trigger.isAfter){
                
                for(Account acc:Trigger.New){
                    
                    Contact con = new Contact();
                    con.LastName = acc.Name;
                    con.AccountId= acc.Id;
                    con.FirstName= 'Fname'+acc.Name;
                    insert_cont.add(con);                     
                    
                }
                insert insert_cont;
            }    
    }else if(Trigger.isUpdate){
        
           if(Trigger.isBefore){
        	Map<id,Account> old_list = Trigger.oldMap;
            Map<id,Account> new_list = Trigger.newMap; 
            List<id> newlist_id = new List<id>();  
        	for(id key:old_list.keySet()){
                Account oldval = old_list.get(key);
                Account newval = new_list.get(key);
                if(oldval.Phone!=newval.Phone){                    
                    newlist_id.add(key);
                }
            } 
           
           if(newlist_id.size()>0){   
           List<Contact> con=[select id,accountid from contact where accountId in:newlist_id];
        
        	for(Contact cont:con){
                Account oval = old_list.get(cont.accountid);
                Account nval = new_list.get(cont.accountid);
                cont.MobilePhone=oval.Phone;
                cont.OtherPhone=nval.Phone;
        	}
            update con;}} 
        
        
        
        
    }
    
}