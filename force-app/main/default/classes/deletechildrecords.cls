public class deletechildrecords {
    @InvocableMethod
    public static void method1(list<id>objId){
        list<Employee__c>list1=[select id from Employee__c where Department_Id__c in:objId];
        delete list1;
    }
}