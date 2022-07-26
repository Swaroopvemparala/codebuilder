global class WeatherApi {
    public string cname{get;set;}
    public decimal  temperature{get;set;}
    public void tempe(){
        Http h = new http();
        HttpRequest request = new HttpRequest();
         request.setEndpoint('https://api.openweathermap.org/data/2.5/weather?q='+cname+'&appid=21161cc9f853bf097c1e558d72543a2a');
        request.setMethod('GET');
        HttpResponse response = h.send(request);
         temperature = 0.0;
        if(response.getStatusCode()==200){
            map<string,object> result = (map<string,object>)JSON.deserializeUntyped(response.getBody());
            map<string,object> mymap = (map<string,object>)result.get('main');
            decimal tem = (decimal)mymap.get('temp');
            temperature = tem-273.5;
        }
        
    }
}