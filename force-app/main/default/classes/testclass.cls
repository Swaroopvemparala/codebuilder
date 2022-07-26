@istest
public class testclass {
    @istest static void testcode(){
        account acc= new account();
        acc.Name='DemoTest';
        insert acc;
        opportunity opp= new opportunity();
        opp.Name='oppTest';
      //  opp.closedDate= date.today();
        opp.stageName='Qualifiaction';
        opp.AccountId= acc.Id;
        opp.Amount=2000;
        insert opp;
        opp.stageName='Closed Won';
        update opp;
    }
}