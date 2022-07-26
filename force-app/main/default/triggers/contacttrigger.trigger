trigger contacttrigger on Contact (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    /*if(trigger.isbefore && trigger.isinsert){
        practice1.practice2(trigger.new);
    }
    if(trigger.isbefore && trigger.isdelete){
        practice1.contact6(trigger.new);
    }
    if(trigger.isbefore && (trigger.isinsert||trigger.isupdate)){
        conhandler.con(trigger.new);
    }
    if(trigger.isBefore && (trigger.isinsert||trigger.isupdate)){
        practice1.updateOldValue(trigger.new,trigger.OldMap,trigger.newMap);
    }
    if(trigger.isbefore  && trigger.IsUpdate){
    practice1.oldfieldvalue(trigger.new, trigger.oldmap);
}*/
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate)){
        livecodeing5.task5(trigger.new);
    }
    
}