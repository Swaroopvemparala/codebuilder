public class EmployeeProject {
    public string Name{get;set;}
    public integer Duration{get;set;}
    public string Clientname{get;set;}    
    public String Employee {get;set;}
      map<id,Employee__c> empdets = new map<id,Employee__c>();
      public List<SelectOption> getoptions() {
        List<SelectOption> Options = new List<SelectOption>();
          for(Employee__c emp:[Select id,First_Name__c from Employee__c]){
              empdets.put(emp.id,emp);
        Options.add(new SelectOption(emp.id,emp.First_Name__c));
          }
        return Options;
    }
     public void InsertRecord(){
         Project__c empLis = new Project__c();
         empLis.Name = Name;
         empLis.Duration__c = Duration;
         empLis.Client_Name__c = Clientname;
             empLis.Employee_Id__c = Employee;
         insert empLis;
      }  
}