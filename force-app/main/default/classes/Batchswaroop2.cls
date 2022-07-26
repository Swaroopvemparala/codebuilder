global class Batchswaroop2 implements Database.Batchable<sObject> {
    string a;
    string b;
    global BatchSwaroop2(string a, string b){
        this.a=a;
        this.b=b;
    }
    global Database.QueryLocator start(Database.BatchableContext bs){
        string query = 'select Id,Name from account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account>accList){
        contact co= new contact();
        co.LastName = a+' '+'test batch';
        co.AccountId = b;
        insert co;
        opportunity op= new opportunity();
        op.Name= a+' '+'op test';
        op.AccountId = b;
        op.CloseDate=date.today()+20;
        op.StageName='Qualification';
        insert op;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}