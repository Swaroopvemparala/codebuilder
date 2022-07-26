public class Accountrelatedlist {
    public boolean chckbox{get;set;}
    public List<Account>acc{get;set;}
    public void save(){
        acc=new List<Account>();
        if(chckbox==true){
            acc=[select Name, AnnualRevenue,(select Amount,	ExpectedRevenue FROM Opportunities),(select MobilePhone, acc_website__c FROM contacts) FROM Account];
        }
    }
}