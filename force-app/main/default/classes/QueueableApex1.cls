public class QueueableApex1 implements Queueable{ 
    string a ;
    string b;
    public QueueableApex1(string name, string phone ){
        this.a = name;
        this.b = phone;
    }
    public  void execute(QueueableContext sample1){
        Account acc= new Account();
        acc.name = a+'test';
        acc.Phone= b;
        insert acc;
        ID jobID =system.enqueueJob(new QueueableApex2(acc.id,acc.name,acc.Phone));
        System.debug('jobID'+jobID);
        AsyncApexJob jobInfo = [SELECT Status, NumberOfErrors FROM AsyncApexJob WHERE Id = :jobID];
        system.debug('job info '+ jobinfo.id);
        system.debug('job status '+ jobinfo.status);
    }   
}