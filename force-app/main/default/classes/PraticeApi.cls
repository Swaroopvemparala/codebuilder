public class PraticeApi {
    public List<accountDetails>acc{get;set;}
/*	public string Id{get;set;}
    public string Name{get;set;}
    public string Phone{get;set;}
    public string AccountNumber{get;set;}
    public string Industry{get;set;}
    public decimal AnnualRevenue{get;set;}
    class accountDetails{
        string Id;
        string name;
        string phn;
        string acnb;
        string ind;
        decimal anrv;
    }*/
    public void displayResult(){
        HttpRequest request = new httpRequest();
        request.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account1');
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
        request.setHeader('Content-Type','application/json');
        request.setHeader('accept','application/json');
        Http h = new Http();
        HttpResponse res = h.send(request);
        if(res.getStatusCode()==200){
            string Body = res.getBody();
            Object obj = JSON.deserialize(body,List<accountDetails>.class);
            acc=(List<accountDetails>)obj;
            system.debug(res.getStatusCode());
            system.debug(res.getStatus());
            system.debug(res.getBody());
        }
    }

}