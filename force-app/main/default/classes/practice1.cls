public class practice1 {
     /* public static void practice2(list<Contact>conlist){
        for(contact con: conlist){
            if(con.LeadSource=='Phone Inquiry'){
                con.Description='These contact is refered by Jain Telecom Industry';
        }
            
    }
}
    public static void contact6(list<contact>conlist){
        for(contact con: conlist){
            if(string.isNotBlank(con.AccountId)){
                con.AccountId.addError('you cant delete this account as it has related account');
            }
        }
    }
	public static void oldfieldvalue(list<Contact> conlist, map<id, contact> maplist){
    list<Account> acclist = new list<Account>();
        map<id, Contact> maplistss =new map<id, Contact>();
     for(Contact con:conlist){
            if(con.AccountId!= null && maplist.get(con.id).LeadSource != con.LeadSource ) {
              con.Old_Field_Value__c = maplist.get(con.id).LeadSource+' ' + con.Lastname;
               maplistss.put(con.AccountId, con); 
            }
          }
    list<Account> acc = [select id, Old_Field_Value__c from account where id in : maplistss.keyset()];
        for(Account ac:acc){
            ac.Old_Field_Value__c = maplistss.get(ac.Id).LeadSource+' '+maplistss.get(ac.Id).Lastname;
          acclist.add(ac);  
        }
        update acclist; 
    } */        
    public static void task14(map<id,contact>conmap){
        set<id>idset= new set<id>();
        for(id cid:conmap.keyset()){
            idset.add(conmap.get(cid).AccountId);
        }
        AggregateResult[] aglist =[select count(id) ci, accountid, Level__C from contact where accountid in: idset and Level__c!=null group by accountid,Level__c];
        map<id,map<string,integer>> temp= new map<id,map<string,integer>>();
        for(AggregateResult ar: aglist){
            if(!temp.containskey((string)ar.get('AccountId'))){
                temp.put((string)ar.get('AccountId'), new map<string,integer>{'Primary'=>0,'Secondary'=>0,'Tertiary'=>0});
            }
            if((string)ar.get('Level__c')=='Primary'){
                temp.get((string)ar.get('AccountId')).put((string)ar.get('Level__c'),(integer)ar.get('ci'));
            }
            if((string)ar.get('Level__c')=='Secondary'){
                temp.get((string)ar.get('AccountId')).put((string)ar.get('Level__c'),(integer)ar.get('ci'));
        }
            if((string)ar.get('Level__c')=='Tertiary'){
                temp.get((string)ar.get('AccountId')).put((string)ar.get('Level__c'),(integer)ar.get('ci'));
    }
            map<id,account>actmap= new map<id,account>([select id,name,numberofprimarycontacts__c,numberofsecondarycontacts__c,numberofteritarycontacts__c from account where id in: idset]);
            for(id aid: actmap.keyset()){
                actmap.get(aid).numberofprimarycontacts__c=temp.get(aid).get('Primary');
                actmap.get(aid).numberofsecondarycontacts__c=temp.get(aid).get('Secondary');
                actmap.get(aid).numberofteritarycontacts__c=temp.get(aid).get('Tertiary');
                update actmap.values();
            }

    }
    }
}