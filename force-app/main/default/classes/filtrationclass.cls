public class filtrationclass {
    public string enm{get;set;}// input variable
    public string mbo{get;set;}// input variable
    public string eml{get;set;}// input variable
	List<employee__c>em;
    public List<employee__c>dem{get;set;}// input variable
    public filtrationclass(){ // constructor name - should be same as class name
        em=[select Id, Name, First_Name__c, Mobile__c, Email__c FROM Employee__c WHERE Email__c!= null ];// original records will be stored in this array
    }
    public void displayRecords(){
        dem= new List<Employee__c>();// creates new collection after giving another input text the previous value will be deallocated by the garbage collector
            if(enm!=''){ // If employee name is not null
                for(Employee__c e:em){ // creating a reference name which are assigned from a original value
                    if(e.First_Name__c == enm){ // check the records of the given input text
                        dem.add(e);// Display the records of the given input text(Filtration)
                    }
                }
            }
        else if(mbo!=''){
            for(Employee__c e:em){
                if(e.Mobile__c == mbo){
                    dem.add(e);
                }
            }
        }
        else if(eml!=''){
            for(Employee__c e:em){
                if(e.Email__c.startsWith(eml)){
                    dem.add(e);
                }
            }
        }
    }
}