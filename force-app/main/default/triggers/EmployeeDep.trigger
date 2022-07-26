trigger EmployeeDep on Employee__c (before insert,before update) {
    if(trigger.isBefore&&(trigger.isInsert || trigger.isUpdate)){		
		EmployeeDepHandler.case1(trigger.new);
}
     if(trigger.isBefore&& (trigger.isInsert || trigger.isupdate)){
        EmployeeDepHandler.case2(trigger.new);
    }
    
    if(trigger.isBefore&&trigger.isInsert){
        EmployeeDepHandler.case3(trigger.new);
    }
    }