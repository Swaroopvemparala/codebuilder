@isTest
public class livecode05{
    @isTest static void testrun(){
        account acc= new account();
        acc.Name='test';
        acc.phone='9874546123';
        insert acc;
        contact con1= new contact();
        con1.mobilephone='9874546123';
        con1.LastName='new contact';
        con1.AccountId=acc.id;
        con1.Amount_x__c=300;
        con1.Amount_y__c=300;
        con1.Type__c='negative';
        insert con1;
        contact con= new contact();
        con.mobilephone='9874546123';
        con.LastName='new contact';
        con.AccountId=acc.id;
        con.Amount_x__c=300;
        con.Type__c='positive';
        insert con;
    }
}