public class livecodeing5 {
    public static void task5(list<contact>conlist){
        set<id>acc1= new set<id>();
        set<id>acc2= new set <id>();
        for(contact con1:conlist){
            if(con1.accountid!=null && con1.Type__c=='Positive'){
                acc1.add(con1.accountid);
            }
            else if(con1.accountid!=null && con1.Type__c=='Negative'){
                acc2.add(con1.accountid);
            }
            if(acc1!=null && acc1.size()>0){
                list<aggregateresult>aglist1=[select accountid,sum(Amount_x__c)positiveamount from contact where accountid in: acc1 group by accountid];
                list<account>acclist=new list<account>();
                for(aggregateresult ag1:aglist1){
                    account acc= new account();
                    acc.id=(id)ag1.get('accountid');
                    acc.Rollup_amount_x__c=(decimal)ag1.get('positiveamount');
                    acclist.add(acc);
                }
                update acclist;
            }
            else if(acc2!=null && acc2.size()>0){
                list<aggregateresult>aglist1=[select accountid,sum(Amount_y__c)Negativeamount from contact where accountid in: acc2 group by accountid];
                list<account>acclist=new list<account>();
                for(aggregateresult ag1:aglist1){
                    account acc= new account();
                    acc.id=(id)ag1.get('accountid');
                    acc.Rollup_amount_y__c=(decimal)ag1.get('Negativeamount');
                    acclist.add(acc);
                }
                update acclist;
            }
        }
    }
}