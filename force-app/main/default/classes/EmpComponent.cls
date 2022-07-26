public class EmpComponent {
    @AuraEnabled
    public static List<Employee__c> getEmployeeRecords(){
        List<Employee__c> emps= [SELECT Id, First_Name__c, Last_Name__c, salary__c, Email__c, Gender__c, Username__c, Department__c FROM Employee__c];
        return emps;
    }

}