public class EmployeeClass {
    /*public string ename{get;set;}    
    public double esal{get;set;}
    public string email{get;set;}*/
    public static Id insertEmployee(string ename, decimal esal, string email) {        
        Employee__c em =new Employee__c();
        em.First_Name__c = ename;
        em.salary__c = esal;
        em.email__c = email;
        insert em;  
        return em.Id;
    }

}