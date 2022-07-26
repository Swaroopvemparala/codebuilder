({
	doInit : function(component, event, helper) {
        var act=component.get('c.getEmployeeRecords');
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var res= response.getReturnValue();
            component.set('v.empdata', res);
        },'SUCCESS');
		
	},
    changeEname : function(component, event, helper) {
        var edata1= component.get('v.empdata');
        console.log("1");
        var enm= component.get('v.ename');
        console.log("2");
		var ned1= [];
        for(var i=0;i<edata1.length;i++){
            console.log("3");
            if(enm===edata[i].First_Name__c){
                ned1.push(edata[i]);
            }
        }
        component.set('v.nedata', ned1);
        console.log("4");
	},
    changeMaxsal : function(component, event, helper) {
        var edata2= component.get('v.empdata');
        var minsal= component.get('v.minsal');
        var maxsal= component.get('v.maxsal');
        var ned2=[];
        for(var i=0;i<edata2.length;i++){
            if(edata2[i].salary__c>=minsal && edata2[i].salary__c<=maxsal){
                ned2.push(edata2[i]);
            }
        }
        component.set('v.nedata', ned2);
		
	},
    changeGender : function(component, event, helper) {
        var edata3= component.get('v.empdata');
        var gen= component.get('v.genValue');
        var ned3=[];
        for(var i=0;i<edata3.length;i++){
            if(gen===edata3[i].Gender__c){
                ned3.push(edata3[i]);
            }
		}
        component.set('v.nedata', ned3);
    }
})