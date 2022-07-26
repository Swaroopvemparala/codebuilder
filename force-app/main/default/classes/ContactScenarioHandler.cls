public class ContactScenarioHandler {
    public static void scenario2(List<contact> lstCon){
   List<Contact_Relationship__c> conlist = new List<Contact_Relationship__c>(); 
 	for(Contact newcon : lstCon){
   	if(newcon.Contact_Relationship__c == true){
     Contact_Relationship__c CR = new Contact_Relationship__c();
     CR.Name = newcon.LastName;
     CR.Contact__c = newCon.id;
     ConList.add(CR);
     }
    }
   insert ConList;
  }
}