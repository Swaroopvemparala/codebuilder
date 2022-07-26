public class EmployeeDepHandler {
public static void case1(List<Employee__c> em){
        for(Employee__c e:em){
            Integer count = [SELECT Count() FROM Employee__c WHERE Department_Id__c =:e.Department_Id__c ];
            if(count>3){
                e.addError('please select another department');
            }
        }          
        }
     public static void case2(List<Employee__c> em)
    {
        for(Employee__c e:em){
        switch on e.Department__c{
            when 'Development'{
                if(!(e.Salary__c>25000&&e.Salary__c<70000)){
                    e.addError('Salary should be between 25000 and 70000');
                }
            }
            when 'Testing'{
                if(!(e.Salary__c>10000&&e.Salary__c<40000)){
                    e.addError('Salary should be between 10000 and 40000');
                }
            }
            when 'Marketing'{
                if(!(e.Salary__c>15000&&e.Salary__c<25000)){
                    e.addError('Salary should be between 15000 and 25000');
                }
            }
        }   
        }    
    }
    public static void case3(List<Employee__c> empList){
        for(Employee__c emp:empList){
            if(emp.Username__c!=emp.Email__c){
                emp.Username__c.addError('Username and Email should be same');
           }
        }
    }
    }