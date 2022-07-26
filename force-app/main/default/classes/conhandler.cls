public class conhandler {
    public static void con(List<Contact>conList){
        for(Contact c: conList){
            if(c.Level__c==Null){
                c.addError('You cant save an contact with level field as null');
            }
        }
    }
}