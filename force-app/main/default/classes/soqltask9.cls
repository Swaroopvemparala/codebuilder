public class soqltask9 {
    public static void check(){
        List<Account>accList=[SELECT Name, Industry FROM Account WHERE name like '%A'];
        for(Account a:accList)
            system.debug(a);
    }

}