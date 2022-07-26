public class FutureParent {
    @future
    public static void fupa(string a){
        contact con = new contact();
            con.LastName = 'Rebel';
            con.AccountId= a;
            insert con;
        }
    public static void fupa1(string a, string b){
        contact con = new contact();
            con.LastName = b;
            con.AccountId= a;
            insert con;
            datetime parentTime = system.now();
            system.debug('parentTime'+parentTime);
    }
    }