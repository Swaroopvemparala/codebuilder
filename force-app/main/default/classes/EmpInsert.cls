public class EmpInsert {
    public string enm{get;set;}
    public decimal esl{get;set;}
    public string eml{get;set;}
    public void insertRecord(){
        Employee__c em = new Employee__c();
        em.First_Name__c = enm;
        em.salary__c = esl;
        em.Email__c = eml;
        insert em;
    }
}