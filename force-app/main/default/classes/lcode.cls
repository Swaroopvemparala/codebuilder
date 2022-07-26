public class lcode {
    public static void task1(string s1)
    {
        list<Opportunity> traillist=new list<Opportunity>();
        traillist=[select Name, AccountId from Opportunity Where AccountId=:'s1'];
        for(Opportunity tr1:traillist)
        system.debug(traillist);
	}
    Public Static Void task2()
    {
        List<Contact> c = new List<Contact>();
        
        c = [SELECT ID FROM Contact ORDER By LastModifiedById desc LIMIT 10 ];
        
        Set<id> s = new set<id>();
       	for(Contact a: c)
        {
            s.add(a.id);
        }
        system.debug(s);
        
        
        }
    public static void task3()
{
    date date1=date.newInstance(2021, 01, 10);
    date date2=date.newInstance(2022, 01, 10);
    integer result=date1.daysBetween(date2);
        system.debug('the days between two dates are= '+ result);
}
    public static void task4(string a,string b)
    {
        list<string> names=new list<string>();
        names.add(a);
        names.add(b);
        string x=a.toUpperCase();
        string y=b.toUpperCase();
        integer r1=a.length();
        integer r2=b.length();
        system.debug('lengths of '+x+r1+'and length of '+y+r2);
        
    }
    public static void task5(string str){
        list<Account> acclist = new list<Account>();
        acclist = [SELECT id, Name, (SELECT AccountId, Status, CaseNumber FROM Cases) FROM Account WHERE Name=:str];
        if(!acclist.isEmpty()){
           for(Account acc : acclist){
             system.debug(acc.Cases);
        }
        } else{
            System.debug('No data');
        }
    }
    public static void task6(string str){
        list<Account> acclist = new list<Account>();
        acclist = [SELECT id, Name, (SELECT AccountId,Phone,Title  FROM Contacts) FROM Account WHERE Name=:str];
        if(!acclist.isEmpty()){
           for(Account acc : acclist){
             system.debug(acc.Contacts);
        }
        } else{
            System.debug('No data');
        }
    }
    Public static void tenAccountRecords()
{
    List<Account> accList = new List<Account>();
    accList = [SELECT id ,Name,(select id from contacts)From Account LIMIt 10];
    system.debug(accList);
    
}  
     public static void leadRecords(Date d)
  {
      List<Lead> leadList=[select id, Name from Lead where CreatedDate<:d];
      System.debug(leadList);
  }
    public static void addDays(Integer days, Date D )
    {
        Date newDate = d.addDays(days);
        system.debug(newDate);
    }
    Public static void industryAccounts(String indName)
    {
        List<Account> indDetails = [SELECT Name , Industry FROM Account WHERE Industry =: indName];
        system.debug(indDetails);
    }
    Public Static Void oppRecords(String s1 , String s2)
    {
        List<Opportunity> oppDetails = [SELECT Name , StageName,LeadSource FROM Opportunity WHERE StageName=:s1 AND LeadSource=:s2];
        system.debug(oppDetails);
    }
     public static void accContact()
    {
        List<Account> lastMod = [SELECT Name,Phone,LastModifiedDate FROM Account LIMIT 1];
        system.debug(lastMod);
        Contact isCon = New Contact();
        for(Account acc:lastMod)
        {
            isCon.LastName =acc.Name;
            isCon.Phone =acc.Phone;
            
        }
    system.debug(isCon.LastName + ',' +isCon.Phone);
        insert isCon;
    }
    public static void casePriority()
    {
        List<Case> caseList = new List<Case>();
        caseList = [SELECT Id,Status FROM Case LIMIT 20];
        for(case c:caseList)
        {
            if(c.Status=='Escalated')
            {
                c.Subject = 'the case has been escalated';
            }
            else
                if(c.Status=='New')
            {
                c.Subject = 'the case has been created recently';
                
            }
        else
            if(c.Status=='Working')
        {
         		c.Subject = 'the case is in working status';  
        }
            
        }
        update caseList;
        system.debug(caseList);
        }
    public static void leadRecords(String sname)
    {
        List<Lead> leadDetails = [SELECT Name,Company,Phone,Address FROM Lead WHERE Name=:sname];
        system.debug(leadDetails);
    }
    public static void usingSwitch(integer input1, integer input2, string optType){
        integer add, sub, mul, div;
        switch on optType{
            when 'add'
        {
                system.debug('Addition is:'+(input1+input2));
            }
        when 'sub'
        {
                system.debug('Subtraction is:'+(input1-input2));
            }
        when 'mul'
        {
                system.debug('Multiplication is:'+(input1*input2));
            }
         when 'div'
        {
                system.debug('Division is:'+(input1/input2));
            }
        when else{
            system.debug('None');
        }
    }
    }
    public static void task20(string str1, string str2){
             list<Account> accList = new list<Account>();
   accList = [SELECT id, Phone, Industry,(SELECT Name,Email,Title FROM Contacts),(SELECT Name,Amount FROM Opportunities) FROM Account WHERE Phone=: str1 AND Industry=: str2];
       for(Account acc : accList ){
            system.debug(acc.Contacts);
           system.debug(acc.Opportunities);
        }
    }
    public static void task3(string str){
       string query = 'SELECT AccountId,CaseNumber,Account.name, Account.Phone from case where Account.Name=:str ';
        list<Contact> listCase=database.query(query);
        contact con = new contact();
        for(Contact c : listCase){
            con.phone = c.Phone;
            update con;
            system.debug(c);            
        }
     }
    public void updateContactNumber(string accName){
        list<contact> conList=[select id,name,phone,account.phone,account.name from contact where account.name=:accName];
        // system.debug(conList[0]);
        for(contact c: conList){
            c.phone=c.account.phone;
            update c;
        }
    }
    public void creatingAccount(integer count, string accName){
        
        list<account> accList=new list<account>();
        for(integer i=1;i<=5;i++){
            account a=new account();
            a.name=accName+string.valueof(i);
            accList.add(a);
        }
        insert accList;
    }
    public void getStateName(string cityName){
        list<string> andhraPradesh=new list<string>{'vizag', 'vijayawada', 'guntur'} ;
            list<string> telangana=new list<string>{'Hyderabad', 'Warangal'} ;    
                if(andhraPradesh.contains(cityName)){
                    system.debug('Andhra Pradesh');
                }
        if(telangana.contains(cityName)){
            system.debug('Telangana');
        }
    }
}