public with sharing class accountDisplay {
    @AuraEnabled(cacheable= true)
    public static List<Account> getAccountData(string accName, decimal ar){
        List<Account> acc=[select Id,Name,Phone,Industry,AnnualRevenue from Account where Name=:accName or AnnualRevenue>=:ar];
        return acc;
    }
}
