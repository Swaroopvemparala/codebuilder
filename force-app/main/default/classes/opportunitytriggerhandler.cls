public class opportunitytriggerhandler {
   /* public static void task15(list<opportunity>opplist){
        for(opportunity opp2:opplist){
            if(opp2.StageName!=null && opp2.StageName=='closed won'){
                task newtask=new task();
                newtask.Subject='Other';
                newtask.Priority='High';
                newtask.Status='Not Started';
                newtask.Description='test case automate'+'=>'+opp2.name;
                insert newtask;
            } 
        }
    }
    public static void task12(list<opportunity>opplist){
        set<id>idset= new set<id>();
        for(opportunity opplist1: opplist){
            if(opplist1.AccountId!=null){
                idset.add(opplist1.AccountId);
            }
        }
        list<AggregateResult>ar1=[select sum(amount) tot, accountid from opportunity where accountid in: idset group by accountid];
        map<id,account>m1= new map<id,account>([select id,Total_opprtunityAmountWon__c from account where id in: idset]);
        for(AggregateResult ar2: ar1){
            m1.get((string)ar2.get('accountid')).Total_opprtunityAmountWon__c=(decimal)ar2.get('tot');
        }
        update m1.values();
    }
    public static void revenue01(list<opportunity>acc){
        acc=[select name,id,AccountId from opportunity where StageName='Closed Won'];
        set<id>idset= new set<id>();
        for(opportunity opp:acc){
            idset.add(opp.AccountId);
        }
        map<id,decimal>map1= new map<id,decimal>();
        list<AggregateResult>opplist=[select accountid,SUM(amount)tot from opportunity group by accountid];
        for(AggregateResult ar: opplist){
            map1.put((id)ar.get('accountid'),(decimal)ar.get('tot'));
        }
        list<account>acclist=[select id,RevenueGenerated__c from account where id in:idset];
        for(account acc1: acclist){
            acc1.RevenueGenerated__c=map1.get(acc1.id);
        }
        update acclist;
    }*/
}