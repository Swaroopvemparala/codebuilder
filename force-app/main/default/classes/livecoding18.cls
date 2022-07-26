public class livecoding18 {
    public static void task1(string s1, string s2, string s3){
        List<Account>acclist= new list<Account>();
        acclist=[select Name,id,phone,industry,(select LeadSource from contacts where LeadSource=: s2),(select StageName from opportunities where StageName=: s3) from account where Name=: s1];
        for(Account acc: acclist){
            system.debug(acc.contacts);
            system.debug(acc.opportunities);
        }
    }

}