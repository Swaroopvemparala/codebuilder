global class PostConnectedApi {
    public List<PostConnectedClass>pcc{get;set;}
    public string accname{get;set;}
    public string AccountNumber{get;set;}
        class accountdetails{
        string Name1;
        string AccountNumber;
    }
    	global void postco(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:ConsumerNamedCredentials/services/apexrest');
        request.setHeader('Content-Type','application/json');
        request.setHeader('accept','application/json');
        request.setMethod('POST');
        Http h= new Http();
        HttpResponse response = h.send(request);
        if(response.getStatusCode()==200){
            string body= response.getBody();
            object obj= JSON.deserialize(body, List<PostConnectedClass>.class);
             pcc= (List<PostConnectedClass>)obj;
        }
    }
}