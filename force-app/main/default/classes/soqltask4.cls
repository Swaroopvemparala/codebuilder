public class soqltask4 {
    public static void check(){
        List<Account>acc1=[SELECT name,Industry FROM Account];
        set<String>acc2=new set<String>();
        for(account acc3:acc1){
            acc2.add(acc3.industry);
        }
        system.debug(acc2);
    }

}