public class QueueableUpdate implements Queueable {
    public void execute(Queueablecontext qc){
        List<opportunity>oppList=[select Id, account.Name from opportunity where account.Name like 'Raju'];
        for(opportunity op: oppList){
            op.Name='updated opp';
        }
        update oppList;
    }

}