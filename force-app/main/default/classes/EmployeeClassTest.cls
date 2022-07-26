@isTest
public class EmployeeClassTest {
    @isTest
    static void testEmployeeClass(){
        Test.startTest();
		Employee__c em= new Employee__c();
		Id eid= EmployeeClass.insertEmployee('abc', 25000.0, 'abc@gmail.com');
		insert em;
		/*Employee__c e=[select Id, First_Name__c,salary__c,Email__c from Employee__c where Email__c='abc@gmail.com' limit 1];*/
		System.assert(eid!=null,'sorry record not inserted');
		Test.stopTest();
    }

}