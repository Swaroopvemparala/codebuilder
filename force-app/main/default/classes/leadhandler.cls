public class leadhandler {
    public static void lead1(list<Lead>leadlist){
        for(lead led: leadlist){
            string temp= led.Salutation;
            if(temp==null){
                led.addError(led.Name,'Please add Mr or Mrs');
            }
        }
    }
}