public class ConsumerTestClass {
    public static HttpResponse calloutTest(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://freelancercom5-dev-ed.my.salesforce.com');
        req.setMethod('GET');
        http h= new http();
        HttpResponse res= h.send(req);
        if(res.getStatusCode()==200){
            system.debug(res.getBody());
        }
        return res;
    }

}