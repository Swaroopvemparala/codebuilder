trigger casetrigger on Case (before insert, after insert, before update, after update, before delete, after delete, after undelete) {    
/*    if(trigger.isAfter && (trigger.isinsert|| trigger.isupdate)){
	livecode0102.task39(trigger.new);
}*/
    if(trigger.isafter && trigger.isupdate){
        livecodein7.task7(trigger.new);
    }
     
       }