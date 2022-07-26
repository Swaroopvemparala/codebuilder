({
	 myFullName : function(component, event, helper) {
        var fname = component.get("v.firstName");
        var lname = component.get("v.lastName");
        var flname=fname+' '+lname;
        component.set('v.fullname',flname);
     }
})