@isTest
global class MockConsumerTestClass implements HttpCalloutMock {
    global HttpResponse respond(HttpRequest req){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'Application/json');
        response.setBody('"Employee__c":{"empn": "Rakesh","gen":"Male","mob":"7894561236"}');
        response.setStatusCode(200);
        return response;
    }
}