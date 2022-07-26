global class SendGreetings implements Database.Batchable<sObject> {
    string query;
    global Database.QueryLocator start(Database.BatchableContext bc){
        string query='select Id,Name,Email__c,Date_of_birth__c from employee__c';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<employee__c>emp){
        for(employee__c iteratorUser:emp){
            date thisdate=system.today();
            integer sysday= thisdate.day();
            integer sysmonth=thisdate.month();
            string dayandmonth=sysday+'/'+sysmonth;
			Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
            List<string>toAddresses = new List<string>();
            toAddresses.add('swaroop.vvns25@gmail.com');
            mail.setToAddresses(toAddresses);
            List<string>ccAddresses = new List<string>();
            mail.setCcAddresses(ccAddresses);
            mail.setSubject('Happy birthday Have a blast - Birthday Reminder');
            String message='<html><body style="font-size: 25px; color: blue">HAPPY BIRTHDAY</body></html>';
            mail.setHtmlBody(message);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        }
    }
    global void finish(Database.BatchableContext bc){
        
    }
}