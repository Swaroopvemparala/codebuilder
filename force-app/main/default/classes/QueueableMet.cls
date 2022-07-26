public class QueueableMet implements Queueable {
    public List<Account>accList;
    public QueueableMet(List<Account>accList){
        this.accList=accList;
    }
    public void execute(QueueableContext context){
        for(Account acc: accList){
            acc.Name= acc.Name+'' +'swaroop';
        }
        update accList; 
    }
}