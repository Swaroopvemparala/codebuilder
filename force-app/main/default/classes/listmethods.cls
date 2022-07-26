// List to List //
public class listmethods {
    public static void lsmethod(){
    List<integer>ls1 = new List<integer>();
    ls1.add(1);
	ls1.add(2);// creates a new list based on existing one
    List<integer>ls2 = new List<integer>(ls1);
    system.debug(ls2);
}


// Set to List //
    public static void setmethod(){
        set<integer>se1 = new set<integer>();
        se1.add(1);
        se1.add(2);
        List<integer>ll1= new List<integer>(se1);
        system.debug(ll1);
    }
    
}