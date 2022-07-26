public class DynamicComboBox {
    @AuraEnabled
    public static List<String> getAccountNumbers()
    {
        List<Account> lan = [SELECT AccountNumber FROM Account]; 
        List<String> ls = new List<String>();
        for(Account ac:lan)
        {
            ls.add(ac.AccountNumber);
        }
        return ls;
    }
    @AuraEnabled
    public static List<Account> getAccountRecord(String accnumber)
    {
        List<Account> lac = [SELECT AccountNumber, Phone, Industry, Website FROM Account WHERE AccountNumber=:accnumber]; 
        return lac;
    }

}