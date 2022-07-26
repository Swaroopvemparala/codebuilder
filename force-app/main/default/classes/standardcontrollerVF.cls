public class standardcontrollerVF {
    public string InputName{get;set;}
    public string InputPhone{get;set;}
    public account acc{get;set;}
    public contact con{get;set;}
    public void saveaccount(){
        acc= new account();
        con= new contact();
        acc.Name= InputName;
        acc.Phone= InputPhone;
        insert acc;
        con.Accountid= acc.id;
        con.Lastname= InputName;
        insert con;
    }
}