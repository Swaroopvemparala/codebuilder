public class InsertRec {
    @future
    public static void rec1(){
        list<Account> accn=new list<Account>();
        for(integer i=1;i<=10000;i++){
        Account acc=new Account();
        acc.Name='salesforce antra'+i;
            accn.add(acc);
    }
        insert accn;
    }
}