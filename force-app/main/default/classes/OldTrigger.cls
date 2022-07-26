public class OldTrigger {
    public static void example3(List<Employee__c> em, List<Employee__c> en){
        integer i=0;
        for(Employee__c e: em){
            Employee__c ne =en.get(i);
            if(e.Email__c!= ne.Email__c){
                e.addError('Email Already Exist');
            }
            i++;
        }
    }

}