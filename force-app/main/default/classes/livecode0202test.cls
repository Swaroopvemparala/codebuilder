@isTest
public class livecode0202test {
    @isTest static void task42(){
        account acc= new account();
        acc.Name='live coding';
        insert acc;
        opportunity opp= new opportunity();
        opp.CloseDate= date.today();
        opp.Name=acc.Name;
        opp.AccountId=acc.id;
        opp.StageName='perception Analysis';
        insert opp;
        opp.StageName='Closed won';
        update opp;
       
    }
}