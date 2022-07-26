({
	sendData : function(component, event, helper) {
		var fn = component.get('v.fnm');
        var ln = component.get('v.lnm');
        var fnm = fn + ln;
        component.set('v.fullNm',fnm);
	}
})