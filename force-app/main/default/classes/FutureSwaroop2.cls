public class FutureSwaroop2 {
    @future
    public static void swa2(string a, string b){
        Contact con = new contact();
        con.LastName = a + ' '+'testing';
        con.AccountId = b;
        insert con;
        opportunity opp = new opportunity();
        opp.Name= a+' '+'testing opp';
        opp.CloseDate= date.today()+20;
        opp.StageName='Needs Analysis';
        opp.AccountId=b;
        insert opp;
    }

}