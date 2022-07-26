public class livecodein7 {
    public static void task7(list<Case>clist){
        set<id>idset=new set<id>();
        for(Case clist1:clist){
            idset.add(clist1.accountid);
        }
        integer a=[select count() from Case where Priority='Low' and accountid in:idset];
        integer b=[select count() from Case where Priority='Medium' and accountid in:idset];
        integer c=[select count() from Case where Priority='High' and accountid in:idset];
        list<account>accountlist=[select Id,Name,high_priority_cases__c,medium_priority_cases__c,low_priority_cases__c from account where Id in:idset];
        for(account acc:accountlist){
            acc.low_priority_cases__c=a;
            acc.medium_priority_cases__c=b;
            acc.high_priority_cases__c=c;
        }
        update accountlist;
    }   
    public static void task8(list<account>acclist){
        set<id>accid= new set<id>();
        map<string,List<Case>>resultM= new map<string,List<Case>>();
        for(account cs:acclist){
            if(cs.name!=null){
                accId.add(cs.name);
            }
        }
        map<id,account>accmap= new map<id,account>([select id,name from account where id in:accId]);
        List<Case>cslist=[select id,Priority from Case where accountid in:accid];
        for(Case cs: cslist){
            if(resultM.containskey(accmap.get(cs.AccountId).name)){
                resultM.get(accmap.get(cs.AccountId).name).add(cs);
            }
            else{
                List<Case>newcase= new list<Case>();
                cslist.add(cs);
                resultM.put(accmap.get(cs.AccountId).name,newcase);
            }
        }
    }
}