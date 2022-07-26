public class DeleteConnectedApi {
    public string empd{get;set;}
    public string name{get;set;}
    public void deleteRecord(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest/Account'+empd);
        req.setHeader('Authorization', 'Bearer !ARUAQA4lkQDMWNp16t6jYxH51YI4G3EYXhNEdg_vPWfpy6nVp49.K.H3tbkyiM5TpMcN0_8k51yAIu_bnVaAhC075TVxIBSs');
        req.setHeader('Content-Type','application/json');
        req.setHeader('accept','application/json');
        req.setMethod('DELETE');
        Http h=new Http();
        HttpResponse res = h.send(req);
        system.debug(res.getStatusCode());    
        system.debug(res.getStatus());  
    }
}