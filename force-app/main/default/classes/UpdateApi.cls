public class UpdateApi {
    public string name1{get;set;}
    public decimal salary{get;set;}
    public string status{get;set;}
    public string empd{get;set;}
    class accountdetails{
        string nme;
        decimal sal;
        string sta;
    }
    public void UpdateRecords(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account'+empd);
        req.setHeader('Authorization', 'Bearer !ARUAQA4lkQDMWNp16t6jYxH51YI4G3EYXhNEdg_vPWfpy6nVp49.K.H3tbkyiM5TpMcN0_8k51yAIu_bnVaAhC075TVxIBSs');
    	req.setHeader('Content-Type','application/json');
        req.setHeader('accept','application/json');
        req.setMethod('PATCH');
        accountdetails ac= new accountdetails();
        ac.nme= name1;
        ac.sal= salary;
        ac.sta= status;
        system.debug(ac);
        string body = Json.serialize(ac);
        req.setBody(body);
        http h= new http();
        HttpResponse res = h.send(req);
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        system.debug(body);
    } 
}