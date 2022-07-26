public class NewTrigger {
    public static void Example1(List<Employee__c> em){
        for(Employee__c e: em){
            integer count=[select count() from Employee__c where Department_Id__c =: e.Department_Id__c];
            if (count>3){
                e.Department_Id__c.AddError('This Employee cannot be assigned to '+e.Department_Id__c+' department');
            }
        }
    }
    public static void Example2(List<Employee__c> em){
        for(Employee__c e: em){
        switch on e.Department__c{
            when 'Development'{
                if(!(e.Salary__c > 25000&& e.salary__c< 70000)){
                    e.addError('Salary range should be in between 25000 to 70000');
                }
            }
            when 'testing'{
                if(!(e.salary__c >10000 && e.salary__c<40000)){
                    e.addError('Salary range should be in between 10000 to 40000');
                }
            }
            when 'Marketing'{
                if(!(e.salary__c > 20000 && e.salary__c<60000)){
                    e.addError('Salary range should be in between 20000 to 60000');
                }
            }
        }
    }
}
}