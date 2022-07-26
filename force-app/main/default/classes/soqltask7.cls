public class soqltask7 {
    public static void check(){
        List<Account>accList=[SELECT Name, Industry FROM Account WHERE Industry='Energy' LIMIT 2];
        for(Account a:accList)
            system.debug(accList);
    }

}