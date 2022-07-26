public class QueueableApex2 implements Queueable {
    string acId;
    string name;
    string phone;
    public QueueableApex2(string acId,string conName, string ConPhone){
        this.acId=acId;
        this.name=conName;
        this.phone=ConPhone;
    }
    public  void execute(QueueableContext sample2){
        list<contact> conList = new list<Contact>();
        for(integer i=1;i<=10000;i++){
            contact con = new contact();
            con.AccountId=acId;
            con.Lastname = name+i;
            con.Phone=phone;
            conList.add(con);          
        }
        insert conList;
    }
}