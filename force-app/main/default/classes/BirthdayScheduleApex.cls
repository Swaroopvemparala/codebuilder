global  class BirthdayScheduleApex implements schedulable {
    global void execute(SchedulableContext sc){         
                 BirthdayBatchApex ba= new BirthdayBatchApex();
              database.executeBatch(ba);        
        }
}