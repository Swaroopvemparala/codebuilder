public class soqltask1 {
    public static void check(){
        List<Account>accList=[SELECT Name,Phone,Type,AnnualRevenue,Industry FROM Account WHERE Industry='Energy'];
        system.debug(accList);
        for(Account acc:accList){
            system.debug('Account Name:' +acc.Name +', AnnualRevenue:' +acc.AnnualRevenue);
        }
    }

}