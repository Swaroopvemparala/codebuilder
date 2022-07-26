global class BirthdayBatchApex implements  Database.Batchable<sObject>
{
    
    global List<String> eventMessages = new List<String>();
    
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        Date tody = system.today();
        String soqlQuery = 'SELECT Id, Name, Email_of_student__c,Date_of_birth__c,Subscribe_Email_Alert__c FROM School_Student__c WHERE Subscribe_Email_Alert__c=true and DAY_IN_MONTH(Date_of_birth__c) = ' + 
            tody.day() +  ' AND CALENDAR_MONTH(Date_of_birth__c) = ' + tody.month();
        return Database.getQueryLocator(soqlQuery);
         
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> email)
    {

        
        List<School_Student__c> StudentList = (List<School_Student__c>) email;
        
        List<Messaging.SingleEmailMessage> techMailList = new List<Messaging.SingleEmailMessage>();
        
        for (School_Student__c std : StudentList) {
           
            EmailTemplate birthdayTemplate = [select Id,Subject,Description,
                                 HtmlValue,DeveloperName,Body from EmailTemplate where DeveloperName ='BirthDay_Alert'];
            system.debug('Send to: ' + std.Name);
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
            String[] toAddresses = new String[] {std.Email_of_student__c};
                mail.setToAddresses(toAddresses);
            mail.setSubject('Happy BirthDay ' + std.Name);
            
            string emailBody= messaging.renderStoredEmailTemplate(birthdayTemplate.Id,std.id,std.Id).getHtmlBody();
             mail.setHtmlBody(emailBody );
            mail.setTemplateID(birthdayTemplate.Id);
         
            techMailList.add(mail);
            
        }
        if(!techMailList.isEmpty()) {
            try{
                Messaging.sendEmail(techMailList);
            }
            catch (Exception ex) {
                eventMessages.add('Unable to send email to student: '+ ex.getStackTraceString());
            }
        }
       
    }
    
    global void finish(Database.BatchableContext BC)
    {
     
    }
    
}