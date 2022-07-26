public class FutureSwaroopDelete {
    @future
    public static void swa4(){
        List<opportunity>opp = [select Id,Account.Name from opportunity where Account.Name='swaroop veera'];
        for(opportunity op:opp){
            
        }
        delete opp;
    }

}