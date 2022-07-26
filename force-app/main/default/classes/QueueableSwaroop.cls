public class QueueableSwaroop implements Queueable{
    public void execute(Queueablecontext qc){
        Account ac= new Account();
        ac.Name= 'Raju';
        insert ac;
        system.enqueueJob(new QueueableSwaroop1(ac.Name, ac.Id));
        
    }

}