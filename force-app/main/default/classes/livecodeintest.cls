@istest
public class livecodeintest {
    @istest static void testcode(){
        account acc= new account();
        acc.Name='Demo test';
        acc.Email_ID__c='abc@mail.com';
        insert acc;
        Case clist= new case();
        clist.Status='new';
        clist.Origin='phone';
        clist.Priority='Low';
        insert clist;
        clist.Priority='High';
        update clist;
    }
}