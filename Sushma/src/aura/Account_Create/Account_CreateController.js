({
	save : function(component, event, helper) {
		
        var account_name	=	component.find("aname").get("v.value");
        var account_phon	=	component.find("aphone").get("v.value");
        var account_city	=	component.find("acity").get("v.value");
        
        var action = component.get("c.save_record");
        action.setParams({"accName":account_name,
                        "phone":account_phon,
                         "city":account_city});
        
        action.setCallback(this,function(response){
        
                  var status =  response.getState();
            
            if(status=='SUCCESS'){
                component.set("v.message",response.getReturnValue());}
        		});
        
        
        $A.enqueueAction(action);
        
	}
})