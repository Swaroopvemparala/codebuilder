trigger ContactScenario on Contact (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        ContactScenarioHandler.scenario2(trigger.new);
    }

}