public class soqltask2 {
    public static void check(){
        List<Account>accList=[SELECT Name,Phone,Type,AnnualRevenue,Industry,NumberofEmployees FROM Account WHERE NumberofEmployees>=5000 AND (Industry='Energy' OR Industry='Education')];
        system.debug(accList);
        for(Account acc:accList){
            system.debug('Account Name:' +acc.Name+', number of Employees:' +acc.NumberofEmployees);
        }
        
        
    }

}