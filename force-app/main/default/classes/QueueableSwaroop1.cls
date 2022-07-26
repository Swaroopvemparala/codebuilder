public class QueueableSwaroop1 implements Queueable {
    string a;
    string b;
    public QueueableSwaroop1(string a, string b){
    this.a=a;
    this.b=b;
    }
    public void execute(Queueablecontext qa){
        contact co = new contact();
        co.LastName= a+' '+'Que';
        co.AccountId=b;
        insert co;
        opportunity op= new opportunity();
        op.Name= a+' '+'opp test';
        op.AccountId=b;
        op.CloseDate=date.today()+20;
        op.StageName='Qualification';
        insert op;
         List<opportunity>oppList=[select Id, account.Name from opportunity where account.Name like 'Raju'];
        for(opportunity opp: oppList){
            opp.Name='updated opp';
        }
        update oppList;
        List<contact>conList=[select Id,LastName from contact where LastName like 'Raju'];
		delete conList;
    }

}