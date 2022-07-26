public class AccountPaginationController {
    Public ApexPages.StandardSetController controller
	{
		Get
	{
		if(controller == null)
	{
		controller = new ApexPages.StandardSetController(Database.getQueryLocator([Select id, name, rating, industry, annualrevenue, type, phone, fax, active__c from Account Order by name]));
	}
		return controller;
	}
	Set;
	}
		Public List<Account> getAccounts()
	{
		controller.SetPageSize(5);
		return (List<Account>) controller.GetRecords();
}
}