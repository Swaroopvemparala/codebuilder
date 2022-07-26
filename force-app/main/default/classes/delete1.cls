public class delete1 {
    public static void dml18(){
        list<account> acclist=[select name,AnnualRevenue from account where AnnualRevenue=null ];
        delete acclist;
        /*for(account a1:acclist)
            if(a1.AnnualRevenue==null){
            }*/
    }
     public static void dml19(){
        //string x='[0-9]';
        list<account> acclist=[select name,AnnualRevenue from account where name like 'to delete%' ];
        //for(account a1:acclist)
            //system.debug(a1);
            delete acclist;
    }
}