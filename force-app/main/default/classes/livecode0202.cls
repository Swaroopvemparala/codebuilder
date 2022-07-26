public class livecode0202 {
    public static void task42(list<opportunity>opplist){
        set<id>opplist1= new set<id>();
        for(opportunity opplist2: opplist){
            if(opplist2.AccountId!=null){
                opplist1.add(opplist2.AccountId);
            }
        }
        integer ar1=[select count() from opportunity where StageName='closed won' and accountid in: opplist1];
        integer ar2=[select count() from opportunity where StageName='closed lost' and accountid in: opplist1];
        list<account>acclist=[select id,NoOfClosedLostOpportunities__c,NoOfClosedWonOpportunities__c from account where id in: opplist1];
        for(account acc: acclist){
            acc.NoOfClosedLostOpportunities__c=ar2;
            acc.NoOfClosedWonOpportunities__c=ar1;
        }
        update acclist;
    }
    }