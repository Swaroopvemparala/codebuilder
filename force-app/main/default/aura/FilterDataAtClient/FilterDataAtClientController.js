({
	doInit : function(component, event, helper) {
        var act=component.get('c.getEmployeeRecords');
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var res= response.getReturnValue();
            if(res!=''){
                component.set('v.sts', 'true');
                component.set('v.emplist', res);
                component.set('v.filteremplist', res);
            }
            else{
                component.set('v.sts', 'false');
                component.set('v.msg', 'Records not available');
            }
        },'SUCCESS');
		
	},
    displayonName : function(component, event, helper) {
        var er1= component.get('v.emplist');
        var enm= component.get('v.ename');
        var er11=[];
        for(var i=0;i<er1.length;i++){
            if(er1[i].First_Name__c === enm){
                er11.push(er1[i]);
            }
        }
		component.set('v.filteremplist', er11);
	},
    displayonGender : function(component, event, helper) {
        var er2= component.get('v.emplist');
        var egn= component.get('v.genValue');
        var er22=[];
        for(var i=0;i<er2.length;i++){
            if(er2[i].First_Name__c === enm){
                er22.push(er2[i]);
            }
        }
        component.set('v.filteremplist', er22);
		
	},
    displayonSalary : function(component, event, helper) {
        var er3= component.get('v.emplist');
		var minsal= component.get('v.minsal');
        var maxsal= component.get('v.maxsal');
        var er33=[];
        for(var i=0;i<er3.length;i++){
            if(er3[i].salary__c>minsal && er3[i].salary__c<maxsal){
                er33.push(er3[i]);
            }
        }
        component.set('v.filteremplist', er33);
	}
})