({
	doInit : function(component, event, helper) {
        var act=component.get('c.getAccountNumbers');
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var res=response.getReturnValue();
            var options=[];
            for(var i=0;i<res.length;i++){
                options[i]={'label': res[i],'value':res[i]};
                }
                component.set('v.accnums',options);
        },'SUCCESS');
    },
    changeAccountNumber : function(component, event, helper) {
        var accnum=component.get('v.anum');
        var act = component.get('c.getAccountRecord');
        $A.enqueueAction(act,false);
        act.setParams({'accnumber':accnum});
        act.setCallback(this,function(response){
            var res=response.getReturnValue();
            component.set('v.accrecord',res);
       },'SUCCESS'); 
    },
    changeValue : function(component, event, helper) {
        var v=component.get('v.val');
        alert("The option is "+v);
		
	}
})