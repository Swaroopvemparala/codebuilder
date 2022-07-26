public class insert1 {
    public static void dml1(string a)
    {
        //list<account>acc=new list<Account>();
        account acc=new account(name=a);
        insert acc;
    }
     public static void dml2()
    {
        account acc=new account(name='rrr estate');
        insert acc;
        system.debug(acc.Id);
    }
    public static void dml13(integer input,string acname){
        list<account> accList=new list<account>();
        // acclist=[select id, Name, Phone, Type, AnnualRevenue, Industry FROM account ];
        for(integer i=1;i<=input;i++){
            account acc =new account();
            acc.name=acname+string.valueof(i);
            accList.add(acc);
        }
        insert accList;
    }
     public static void dml14(integer x)
    {
        integer y=x/2;
        integer z=y*2;
        list<account> acclist=new list<account>();
        for (integer i=1;i<=x;i++)
            if(z==x){
                account acc=new account();
                acc.Name='trail even';
                acc.Industry='Consulting';
                acc.NumberOfEmployees=x+10;
                acclist.add(acc);
                insert acclist;
            }else{
                account acc=new account();
                acc.Name='trail odd';
                acc.Industry='Electronics ';
                acc.AnnualRevenue=(x-1)*1000000;
                acclist.add(acc);
                insert acclist;
            }
        system.debug(acclist.size());
    }
}