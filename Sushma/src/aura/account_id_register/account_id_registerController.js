({
	fireid : function(component, event, helper) {
		
        var evt = component.getEvent('actfire');
        evt.setParams({'accinfo':'Gudavalli','accinfoa':'Sushma'});
        evt.fire();
	}
})