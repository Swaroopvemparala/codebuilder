public class DisplayRecords {
    public string enm{get;set;}
    public integer count{get;set;}
    public list<Employee__c>em{get;set;}
    public list<aggregateResult>agg{get;set;}
    public list<integer>en{get;set;}
    public void displayRecords(){
     	  //em=[select Id, Name, First_Name__c, Mobile__c, Email__c FROM Employee__c WHERE First_Name__c like '%A'];
     	  //em=[select Id, Name, First_Name__c, Mobile__c, Email__c FROM Employee__c ORDER BY First_Name__c];
			//em=[select Id, Name, First_Name__c, Mobile__c, Email__c FROM Employee__c limit 2]; 
			//em=[select Id, Name, First_Name__c, Mobile__c, Email__c FROM Employee__c ORDER BY First_Name__c LIMIT 2];
        //count=[select count() FROM Employee__c];
       // agg=[select Id, Name, First_Name__c, Mobile__c, Email__c FROM Employee__c GROUP BY Id];
        for(aggregateResult ag:agg){
            
        }
}        
}