public class PostProviderApi {
    public string name{get;set;}
    public string Classs{get;set;}
    public string Section{get;set;}
    public string rollNumber{get;set;}
    public string EmailId{get;set;}
    public string phoneNumber{get;set;}
    public string gender{get;set;}
    class accountdetails{
         string nme;
        string cls;
        string stn;
     string rlNbr;
     string ElId;
     string pNbr;
     string gndr;
    }
    public void insertNewRecord(){
        HttpRequest Req = new HttpRequest();
         req.setEndpoint('https://d5j000001vor6eai-dev-ed.my.salesforce.com/services/apexrest/Account');
        req.setHeader('Authorization', 'Bearer !ARQAQFoAJyaBP4hf2DxpsK.pJXOBR.vEsqka9EHSLdb.F8YoXb_fl7Y1MX6giB5SOWNWcdLZW43ireifgxKmLARKExuF3ZnH');
        req.setHeader('Content-Type','application/json');
            req.setHeader('accept','application/json');
            req.setMethod('POST');
        accountdetails ac = new accountdetails();
        ac.nme = name;
        ac.cls = Classs;
        ac.stn = Section;
        ac.rlNbr=rollNumber;
        ac.ElId = EmailId;
        ac.pNbr= phoneNumber;
        ac.gndr = gender;
        system.debug(ac);
        string body = JSON.serialize(ac);
        req.setBody(body);
        Http h=new Http();
        HttpResponse res = h.send(req);
        system.debug(res.getStatusCode());    
            system.debug(res.getStatus());    
            system.debug(body);
    }

}