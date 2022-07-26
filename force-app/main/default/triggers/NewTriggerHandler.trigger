trigger NewTriggerHandler on Employee__c (before insert, before update) {
    if(trigger.isbefore&&(trigger.isinsert || trigger.isupdate)){
        NewTrigger.Example1(trigger.new);
    }
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        NewTrigger.Example2(trigger.new);
    }
}