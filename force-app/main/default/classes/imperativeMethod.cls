public with sharing class imperativeMethod {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountData(string accName, decimal ar){
        List<Account> acc= [select Id,Name,Phone,Industry,AnnualRevenue from Account where Name=: accName or AnnualRevenue>=:ar
        with SECURITY_ENFORCED];
        return acc;
    }
}
