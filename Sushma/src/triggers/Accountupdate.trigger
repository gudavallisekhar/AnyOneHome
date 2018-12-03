trigger Accountupdate on Account (before insert,after insert,before update) {
  /*
   	List<Contact> contt = new List<Contact>();
   	if (Trigger.isInsert) {
        
            if(Trigger.isBefore){   
                for(Account a:Trigger.new){
                    if(a.rating=='Hot'){
                        a.Phone='8801136823';
                        a.Industry='banking';
                    }
                }
            }else if(Trigger.isAfter){
                
                for(Account a:Trigger.new){
                    if(a.rating=='Hot'){
                    Contact cont = new Contact();
                    cont.AccountId =a.Id;
                    cont.LastName=a.Name;
                    cont.Phone=a.Phone;
                    cont.Email='test@gmail.com';
                    cont.Description= 'What a great is this';
                    contt.add(cont);    
                    }
                }
                insert contt;
            } 
    
    }else if(Trigger.isUpdate){
        
       
        Map<Id,Account> old_vals = Trigger.oldMap;
        Map<Id,Account> new_vals = Trigger.newMap;
        List<Id> Account_Ids = new List<Id>();
        for(Id key:old_vals.keyset()){
            Account olditem =old_vals.get(key);
            Account newitem =new_vals.get(key);
            if(olditem.Phone!=newitem.Phone){Account_Ids.add(olditem.Id);}
        }
        
        List<Contact>  cont =[select id,accountId from Contact where AccountId in :Account_Ids];
        List<Contact> upd = new List<Contact>();
        for(Contact con:cont){
           
            Account oldval = old_vals.get(con.accountId);
            Account newval = new_vals.get(con.accountId);
            con.phone=newval.phone;
            con.MobilePhone=oldval.phone;
           // upd.add(cons);
            
        }
       update cont;
        
        
        
    } */
   
}