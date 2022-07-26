public class PayslipVF {
    public Employee_Detail__c e{get;set;}
    public Salary__c s{get;set;}
    public Pay_Slip__c p{get;set;}
    public string currentTab{get;set;}
    public PayslipVF(){
        e= new Employee_Detail__c();
        s= new Salary__c();
        p= new Pay_Slip__c();
}
    public pagereference save(){
        insert e;
        s.Employee_Name__c=e.id;      
        insert s;
        p.Employee_ID__c=e.id;
        p.Salary_ID__c=s.id;
        insert p;
        pagereference pg= new pagereference('/'+e.id);
        return pg;
    }
    {
        currentTab='1';
    }
    public void Next(){
        currentTab= string.valueOf(integer.valueof(currentTab)+1);
    }
    public void previous(){
        currentTab= string.valueOf(integer.valueof(currentTab)-1);
    }
}