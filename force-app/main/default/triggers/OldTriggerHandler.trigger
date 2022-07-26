trigger OldTriggerHandler on Employee__c (before update) {
    if(trigger.isbefore && trigger.isupdate){
        OldTrigger.example3(trigger.new, trigger.old);
    }

}