global class SpoonacularConsumer {
    public string name{get;set;}
    global SpoonacularWrapper sw{get;set;}
    global void searchIngredients(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.spoonacular.com/food/ingredients/search?query='+name+'&apiKey=15002300a8434f33a837411224e71e5b');
        request.setMethod('GET');
        Http h = new Http();
        HttpResponse response = h.send(request);
        if(response.getStatusCode()==200)
        {
            String body=response.getBody();
            Object obj=JSON.deserialize(body, SpoonacularIngre.class);
            SpoonacularIngre si =(SpoonacularIngre)obj;
          //  si= sw.getSpoonacularWrapper();
            sw=(SpoonacularWrapper)obj;
        }
    }
}