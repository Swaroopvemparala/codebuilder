public class PracticePppd {
    public string ab{get;set;}
    public string Id{get;set;}
    public string Name{get;set;}
    public string Phone{get;set;}
    public string AccountNumber{get;set;}
    public string Industry{get;set;}
    public decimal AnnualRevenue{get;set;}
    public string outputMessage{get;set;}
    class accountDetails{
        string Id;
        string nme;
        string phn;
        string acnm;
        string ind;
        decimal anrv;
    }
    public void displayResult(){
        HttpRequest request = new Httprequest();
        request.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account1');
        request.setMethod('POST');
        request.setHeader('Authorization', 'Bearer !ARUAQDMIJywzMrcxgtaiNR5zPv8sTUBQnkCIRBAW5aMRsk9dlLhzmCkppf.7RsyE1ZjtdY8Xc7RIpYgDJcoPfwfc_vXtoE6r');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('accept', 'application/json');
        accountDetails ac= new accountDetails();
        ac.Id=Id;
        ac.nme=Name;
        ac.phn=Phone;
        ac.acnm=AccountNumber;
        ac.ind=Industry;
        ac.anrv=AnnualRevenue;
        system.debug(ac);
        string body= JSON.serialize(ac);
        request.setBody(body);
        Http h= new Http();
        HttpResponse res= h.send(request);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(res.getBody());
    }
    public void updateRecord(){
        HttpRequest request = new Httprequest();
        request.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account1');
        request.setMethod('PATCH');
        request.setHeader('Authorization', 'Bearer !ARUAQDMIJywzMrcxgtaiNR5zPv8sTUBQnkCIRBAW5aMRsk9dlLhzmCkppf.7RsyE1ZjtdY8Xc7RIpYgDJcoPfwfc_vXtoE6r');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('accept', 'application/json');
        accountDetails ac= new accountDetails();
        ac.Id=Id;
        ac.nme=Name;
        ac.phn=Phone;
        ac.acnm=AccountNumber;
        ac.ind=Industry;
        ac.anrv=AnnualRevenue;
        system.debug(ac);
        string body= JSON.serialize(ac);
        request.setBody(body);
        Http h= new Http();
        HttpResponse res= h.send(request);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(res.getBody());       
    }
    public void upsertRecord(){
        HttpRequest request = new Httprequest();
        request.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account1');
        request.setMethod('PUT');
        request.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('accept', 'application/json');
        accountDetails ac= new accountDetails();
        ac.Id=Id;
        ac.nme=Name;
        ac.phn=Phone;
        ac.acnm=AccountNumber;
        ac.ind=Industry;
        ac.anrv=AnnualRevenue;
        system.debug(ac);
        string body= JSON.serialize(ac);
        request.setBody(body);
        Http h= new Http();
        HttpResponse res= h.send(request);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(res.getBody());       
    }
    public void deleteRecord(){
        HttpRequest request = new Httprequest();
        request.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account1');
        request.setMethod('DELETE');
        request.setHeader('Authorization', 'Bearer !ARUAQDMIJywzMrcxgtaiNR5zPv8sTUBQnkCIRBAW5aMRsk9dlLhzmCkppf.7RsyE1ZjtdY8Xc7RIpYgDJcoPfwfc_vXtoE6r');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('accept', 'application/json');
        Http h= new Http();
        HttpResponse res= h.send(request);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
    }
    }