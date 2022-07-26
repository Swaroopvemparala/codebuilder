public class qwdwq {
    public static void task1(string s1){
        List<Account>indus=[select id,name from account where industry=: s1];
        system.debug(indus);
    }

}