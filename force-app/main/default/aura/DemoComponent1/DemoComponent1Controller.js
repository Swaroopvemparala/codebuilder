({
	addition : function(component, event, helper) {
        var fno= component.get('v.fn');
        var sno= component.get('v.sn');
		var sum1= parseInt(fno)+parseInt(sno);
        var act= $A.get('e.c:ResultEvent');
        act.setParams({'sum':sum1});
        act.fire();
	},
    subtract : function(component, event, helper) {
        var fno= component.get('v.fn');
        var sno= component.get('v.sn');
		var sub1= parseInt(fno)-parseInt(sno);
        var act= $A.get('e.c:ResultEvent');
        act.setParams({'sub':sub1});
        act.fire();
	}
})