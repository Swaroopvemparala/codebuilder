public class update1 {
     public static void dml15()
    {
        integer x=1;
        list<account> acclist=[select name,NumberOfEmployees,Industry from account where Industry='energy'];
        for(account a1:acclist)
            a1.NumberOfEmployees=a1.NumberOfEmployees+1;
        update acclist;
    }
     public static void dml16()
    {
        list<account> acclist=[select name,NumberOfEmployees,Industry,AnnualRevenue from account where Industry='energy'];
        for(account a1:acclist)
            if(a1.AnnualRevenue==null)
        {
            a1.AnnualRevenue=0;
            a1.AnnualRevenue=a1.AnnualRevenue-1000;
            a1.NumberOfEmployees=a1.NumberOfEmployees+10;
            update acclist;
        }else{
            if(a1.AnnualRevenue!=null)
            {
                a1.AnnualRevenue=a1.AnnualRevenue-1000;
                a1.NumberOfEmployees=a1.NumberOfEmployees+10;
                update acclist;
            }
        }
    }
    public static void dml17()
    {
        list<account> acclist=[select name,NumberOfEmployees,Industry from account];
        for(account a1:acclist)
            if(a1.NumberOfEmployees==null){
                a1.NumberOfEmployees=10;
                update acclist;
            }else{
                a1.NumberOfEmployees=a1.NumberOfEmployees+10;
                update acclist;
            }
    }
}