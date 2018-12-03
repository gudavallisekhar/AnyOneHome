({
	
    initval : function(component, event, helper) {
		component.set("v.avalue","3000");
     
	},
    
    calc : function(component, event, helper) {
        
        var aval = component.find("avalue").get("v.value");
        var bval = component.find("bvalue").get("v.value");
        var cval = parseInt(aval)+parseInt(bval);
		   			console.log(cval);
         		    component.set("v.titak",cval);
	}
    
    
})