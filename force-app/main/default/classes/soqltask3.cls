public class soqltask3 {
    public static void check(){
        List<Account>accList=[SELECT Name,Phone,Type,AnnualRevenue, Industry FROM Account WHERE Type='Customer - Direct' AND AnnualRevenue<25000 AND Industry in('Apparel','Energy','Consulting')];
        for(Account acc:accList){
           system.debug('Account Type:' +acc.Type+',Annual Revenue:' +acc.AnnualRevenue+ ',Industry:' +acc.Industry);
      
        }
        
        
    }

}