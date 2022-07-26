public class Accounttriggerhandler {
  /*  public static void Account1(list<Account>acclist){ 
        for(Account acc: acclist){
            if(string.isBlank(acc.Description) || acc.Description.length()<10){
                acc.Description='The program is less than 10 char';
                acc.Rating='HOT';
            }
        }
    }
    public static void Account2(list<Account>acclist){
        list<Contact>conlist=new list<Contact>();
        for(account acc:acclist){
        for(integer i=1;i<=5;i++){
            contact newcon= new contact();
            newcon.AccountId=acc.id;
            newcon.LastName= acc.Name+i;
            conlist.add(newcon);
        }
        }
        if(!conlist.isempty())
            insert conlist;
            }
    public static void Account3 (list<Account>acclist){
        Set<id> setid = new set<id>();
        for(Account acc1:acclist ){
            if(!string.isBlank(acc1.BillingCity)  || string.isNotEmpty(acc1.BillingCity))
            setid.add(acc1.id);
        }
  list<Contact> con = [SELECT id,name,Accountid, MailingCity, Account.BillingCity,LastModifiedDate FROM Contact  WHERE Accountid in:setid ];
                 for(Contact cons:con){
              cons.MailingCity = cons.Account.BillingCity;
          }
            update con;    
   }
     public static void Account4(list<account> accList){
        list<account> acList = [select id,name from account where name=:accList[0].name];  
        if(acList.size() != 0){
           accList[0].addError('Name already exist');  
        }
    }

    public static void Account7(list<Account>acclist){
        set<Id>accId1=new set<Id>();
        for(account acc:acclist){
            accId1.add(acc.Id);
            list<AggregateResult>aggres=[select count(Id)num from contact where Account.Id in: accId1];
            for(aggregateResult ar: aggres){
                integer numofcontacts = (integer)ar.get('num');
                if(numofcontacts>=3){
                    acc.addError('You cannot delete this record as it contains more than 3 contacts');
                }
            }
}
    }
     public static void Account8(list<account> acList1){
         list<contact> clist=new list<contact>();
        for(account acList2:acList1){
        contact newcnt=new contact();
        newcnt.LastName=acList2.name+'test';
        newcnt.AccountId=acList2.Id;
            clist.add(newcnt);
    }
         insert clist;
    }
    public static void Account81(list<account> acclist){
        map<id,integer> map1=new  map<id,integer>();
        list<aggregateresult> aglist1=[select count(id)cid,accountid from contact group by accountid];
        for(aggregateresult aglist2:aglist1){
            map1.put((id)aglist2.get('accountid'),(integer)aglist2.get('cid'));
            system.debug(map1);
        }
        //acclist=[select id,Min_no_of_Contacts__c from account];
        for(account ac1: acclist){
            ac1.Min_no_of_Contacts__c=map1.get(ac1.Id);
        }
        //update acclist;
}   */
    public static void scenario1(){
        set<Id> dup = new set<Id>();
        
    }
}