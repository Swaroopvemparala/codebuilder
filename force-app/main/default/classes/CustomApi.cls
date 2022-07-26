public class CustomApi {
    public string Id{get;set;}
    public string Empname{get;set;}
    public string Gender{get;set;}
    public string Mobile{get;set;}
    public List<CustomWrapper>cw{get;set;}
    class accountDetails{
        string Id;
        string empn;
        string Gen;
        string Mob;
    }
    public void displayResult(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/prac/');
        req.setMethod('GET');
        req.setHeader('Authorization', 'Bearer !ARUAQGTgThqojqOWOEBqxrOhOG4IJWQSu6gx2ZSX3xyVTbH3nPdbe_sLpMaWgYDQcD6oVnnDd76hDdZJybsVBvOSC_e85CZV');
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept', 'application/JSON');
        Http h= new Http();
        HttpResponse res= h.send(req);
        if(res.getStatusCode()==200){
            string body= res.getBody();
            object obj= JSON.deserialize(body, List<CustomWrapper>.class);
            cw=(List<CustomWrapper>)obj;
            system.debug(res.getStatusCode());
            system.debug(res.getStatus());
            system.debug(res.getBody());
        }        
    }
}