@isTest
public class ConsumerTestClassTest {
    @isTest
    static void consumertest(){
        test.setMock(HttpCalloutMock.class, new MockConsumerTestClass());
        HttpResponse res= ConsumerTestClass.CalloutTest();
        string fakebody= res.getBody();
        string expected='"Employee__c":{"empn": "Rakesh","gen":"Male","mob":"7894561236"}';
        system.assertEquals(fakebody, expected);
        system.assertEquals(200,res.getStatusCode());
    }

}