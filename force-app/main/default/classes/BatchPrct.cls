global class BatchPrct implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        string acc = 'SELECT Id, Name from Account';
        return Database.getQueryLocator(acc);
    }
    global void execute(Database.BatchableContext bc, List<Account>accList){
        for(account a:accList){
            a.Name = a.Name + ' ' +'veera';
        }
        update accList;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}