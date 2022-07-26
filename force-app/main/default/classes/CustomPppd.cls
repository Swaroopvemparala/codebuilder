public class CustomPppd {
    public string Id{get;set;}
    public string Empname{get;set;}
    public string Gender{get;set;}
    public string Mobile{get;set;}
    public string abc{get;set;}
    class accountDetails{
        string Empn;
        string Gen;
        string Mob;
    }
    public void insertRecord(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/prac');
        req.setMethod('POST');
        req.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
        req.setHeader('Content-Type', 'application/Json');
        req.setHeader('accept', 'application/Json');
        accountDetails ac= new accountDetails();
        ac.Empn= Empname;
        ac.Gen= Gender;
        ac.Mob= Mobile;
        system.debug(ac);
        string body= Json.serialize(ac);
        req.setBody(body);
        Http h= new Http();
        HttpResponse res= h.send(req);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(res.getBody());
    }
    public void updateRecord(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/prac/'+Empname);
        req.setMethod('PATCH');
        req.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
        req.setHeader('Content-Type', 'application/Json');
        req.setHeader('accept', 'application/Json');
        accountDetails ad= new accountDetails();
        ad.Empn= Empname;
        ad.gen= gender;
        ad.mob= mobile;
        system.debug(ad);
        string body= json.serialize(ad);
        req.setBody(body);
        Http h= new Http();
        HttpResponse res= h.send(req);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(res.getBody());
    }
    public void upsertRecord(){
        HttpRequest req= new Httprequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/prac/'+Empname);
        req.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
       req.setMethod('PUT');
        req.setHeader('Content-Type', 'application/Json');
        req.setHeader('accept', 'application/Json');
        accountDetails acc= new accountDetails();
        acc.Empn= Empname;
        acc.Gen= Gender;
        acc.Mob= Mobile;
        system.debug(acc);
        string body= Json.serialize(acc);
        req.setBody(body);
        Http h= new http();
        HttpResponse res= h.send(req);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(res.getBody());
    }
    public void deleteRecord(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/prac/'+Empname);
        req.setMethod('DELETE');
        req.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('accept', 'application/json');
        Http h= new http();
        HttpResponse res= h.send(req);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
    }

}