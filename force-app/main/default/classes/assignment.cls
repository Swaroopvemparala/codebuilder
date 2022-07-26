public class assignment{
    public string gender{get;set;}
    public list<Employee__c> disp{get;set;}
  
    public void search(){
        disp=new list<Employee__c>();
        if(gender=='male'){
            disp=[select Name, First_Name__c, Mobile__c,Gender__c FROM Employee__c WHERE Gender__c='Male'];
        }else{
            disp=[select Name,First_Name__c,Mobile__c,Gender__c FROM Employee__c WHERE Gender__c='Female'];
        }
}
}