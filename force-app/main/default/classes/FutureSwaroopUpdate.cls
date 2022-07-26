public class FutureSwaroopUpdate {
    @future
    public static void swa3(){
        List<Contact>conList=[select Id,Account.Name, LastName from contact where Account.Name='swaroop veera'];
        for(contact co:conList){
            co.LastName = 'updated contact';
        }
        update conList;
    }

}