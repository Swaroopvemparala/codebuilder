trigger LeadScenario on Lead (before insert, before update) {
    if(trigger.isbefore &&(trigger.isInsert || trigger.isUpdate)){
        LeadScenarioHandler.tekslate4(trigger.new);
    }

}