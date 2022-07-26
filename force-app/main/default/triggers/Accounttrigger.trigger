trigger Accounttrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
  /*  if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        Accounttriggerhandler.Account1(trigger.new);
    }
    if(trigger.isbefore && trigger.isinsert){
        Accounttriggerhandler.Account2(trigger.new);
    }else if(trigger.isafter){
         Accounttriggerhandler.Account2(trigger.new);
    }
    if(trigger.isafter && trigger.isupdate){
        Accounttriggerhandler.Account3(trigger.new);
    }
    if(trigger.isbefore && trigger.isinsert){
        Accounttriggerhandler.Account4(trigger.new);   
    }
    if(trigger.isbefore && trigger.isdelete){
        Accounttriggerhandler.Account7(trigger.old);
}
     if(trigger.isafter && (trigger.isinsert || trigger.isupdate)){
        Accounttriggerhandler.Account8(trigger.new);
    }if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        Accounttriggerhandler.Account81(trigger.new);
    }*/
}