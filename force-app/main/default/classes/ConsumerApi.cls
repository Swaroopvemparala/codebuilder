global class ConsumerApi {
    public List<ConsumerClass>acc{get;set;}
    global void displayAttributes(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com/services/apexrest');
        request.setHeader('Authorization', 'Bearer !ARUAQEyOgAbx7hVfxBdlga0.lojW3EVjfkPfIkg2JyK8U8XaTJvRovXnynFdh.FhO_R4HQfBT36QrJ_NmtnkB.EG1A74Pzm6');
        request.setMethod('GET');
        Http h= new Http();
        HttpResponse response = h.send(request);
        if(response.getStatusCode()==200){
            string body= response.getBody();
            object obj= JSON.deserialize(body, List<ConsumerClass>.class);
             acc= (List<ConsumerClass>)obj;
        }
    }
}