({
	castvote : function(cmp, event, helper) {
		var name= cmp.get("v.Cadidate_Name");
        var age= cmp.get("v.Age");
        var gen= cmp.get("v.Cadidate_Gender");
        if(age<18){
            cmp.set('v.output_message', 'Sorry your not eligible to vote');
        }
        else{
            cmp.set('v.output_message', 'Your are eligible to vote');
        }
        if(Cadidate_Gender=='male'){
            cmp.set('v.Cadidate_Gender',true);
        }
        else{
            cmp.set('v.Cadidate_Gender',false);
        }
	}
})