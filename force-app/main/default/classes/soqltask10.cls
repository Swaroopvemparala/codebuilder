public class soqltask10 {
    public static void check(){
        List<Account>accList=[SELECT Name, Phone, Type, AnnualRevenue, Industry, NumberofEmployees FROM Account WHERE AnnualRevenue>500000 AND NumberofEmployees<>150000];
        for(Account a:accList)
            system.debug(a);
        
    }

}