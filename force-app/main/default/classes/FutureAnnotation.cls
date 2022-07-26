public class FutureAnnotation {
    public static void fuan(){
        account acc = new account();
        acc.Name='abcd 26';
        insert acc;
        FutureParent.fupa(acc.Id);
    } 
}