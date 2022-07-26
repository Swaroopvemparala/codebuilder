public class livecode0102 {
    public static void task39(list<case>caselst){
        List<id>idset= new List<id>();
        for(case caselst1: caselst){
            if(caselst1.Accountid!=null && caselst1.status=='closed'){
                idset.add(caselst1.Accountid);
            }
            list<Case> caseList =[select Id  from case where status='closed' and accountid in: idset];
            map<id,account>map1=new map<id,account>([select id,closed_cases__c from account where id in: idset]);
            if(idset.size()>0){
            Account acc = new account();
            acc.Id = (Id)idset.get(0);
            acc.closed_cases__c = caseList.size();
            update acc;
                }
            
        }
}
}