public class AccountScenarioHandler {
public static void scenario1(list<account> acc){
        set<id> accowner=new set<id>();
        for(account ac:acc){
            accowner.add(ac.OwnerId);
        }
        system.debug(accowner);
       Map<Id, user> usermap = new Map<Id, user>([SELECT Name FROM  user WHERE Id IN: accowner]);
        for(account ac:acc){
            User usr=usermap.get(ac.OwnerId);
            ac.Sales_rep__c=usr.Name;
        }
    }
  public static void tekslate2(list<account> accList){
        list<account> acList = [select id,name from account where name=:accList[0].name];  
        if(acList.size() != 0){
           accList[0].addError('Name already exist');  
        }
    }
    public static void tekslate3(List<Account> acc1){
        for(Account a: acc1){
            if(a.Hello__c != 'world'){
                a.Hello__c = 'world';
            }	
        }
    }
    
}