public class EmployeeDetailvfcontroller {
    public list<Employee_Detail__c>lstval{get;set;}
    public list<Employee_Detail__c>lstval1{get;set;}
    public list<Employee_Detail__c>lstval2{get;set;}
    public string inputName{get;set;}
    public EmployeeDetailvfcontroller(){
        lstval=[select Name, FirstName__c, Salutation__c, Employee_ID__c from Employee_Detail__c];
    }
    public void  DisplayButton(){
        lstval1=[select Name, FirstName__c, Salutation__c, Employee_ID__c from Employee_Detail__c]; 
}
    public void displaywithInput(){
        if(string.isBlank(inputName)){
            apexpages.addMessage(new ApexPages.message(apexpages.Severity.INFO,'Enter A Name'));
        }
        else{
        lstval2=[select Name, FirstName__c, Salutation__c, Employee_ID__c from Employee_Detail__c where Name=: inputName];
    }
}
}