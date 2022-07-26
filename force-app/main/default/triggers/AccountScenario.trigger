trigger AccountScenario on Account (before insert, before update) {
    if(trigger.isBefore&&(trigger.isInsert || trigger.isUpdate)){		
		AccountScenarioHandler.scenario1(trigger.new);
}
    if(trigger.isbefore &&(trigger.isInsert || trigger.isUpdate)){
        AccountScenarioHandler.tekslate2(trigger.new);
    }
    if(trigger.isbefore &&(trigger.isInsert || trigger.isUpdate)){
        AccountScenarioHandler.tekslate3(trigger.new);
    }
}