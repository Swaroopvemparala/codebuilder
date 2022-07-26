public class soqltask5 {
    public static void check(){
        integer a;
        List<Account>accList=new list<Account>();
        a=[SELECT count() FROM Account WHERE Industry in('Apparel','Consulting','Energy','Hospitality')];
        for(Account acc:accList)
            system.debug(acc);
        system.debug(a);
    }
    

}