public class FilterDataClientClass {
    @AuraEnabled
    public static List<Employee__c> getEmployeeRecords(){
        List<Employee__c>emps=[SELECT Id, First_Name__c, Email__c, Gender__c, salary__c, Mobile__c FROM Employee__c];
        return emps;
    }

}