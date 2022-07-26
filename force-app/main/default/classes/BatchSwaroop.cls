global class BatchSwaroop implements Database.Batchable<sObject> {
    List<Account>accList=new List<Account>();
    global Database.QueryLocator start(Database.BatchableContext bc){
        string query='select Id,Name from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account>acList){
        Account acc = new Account();
        acc.Name='Batchable swaroop';
        accList.add(acc);
        insert accList;
        
    }
    global void finish(Database.BatchableContext bc){
        for(account ac: accList){
             BatchSwaroop2 sb= new BatchSwaroop2(ac.Name, ac.Id);
			Database.executeBatch(sb);
        }        
    }
}