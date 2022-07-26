public class soqltask8 {
    public static void check(){
        List<Account>accList=[SELECT Name, Industry FROM Account WHERE name like 'E%'];
        for(Account a:accList)
            system.debug(a);
    }

}