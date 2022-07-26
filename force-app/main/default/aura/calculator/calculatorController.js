({
    addition : function(cmp, event, helper) {
        helper.getData(cmp);
        var sum=parseInt(helper.fn)+parseInt(helper.sn);
        var rs='Sum of 2 numbers: '+sum;
        cmp.set('v.result',rs);
    },
   
   
    Substraction : function(cmp, event, helper) {
        helper.getData(cmp);
        var sum=parseInt(helper.fn)-parseInt(helper.sn);
        var rs='diff of 2 numbers: '+sum;
        cmp.set('v.result',rs);
    },
   
    Multiplication : function(cmp, event, helper) {
        helper.getData(cmp);
        var sum=parseInt(helper.fn)*parseInt(helper.sn);
        var rs='product of 2 numbers: '+sum;
        cmp.set('v.result',rs);
    }
})