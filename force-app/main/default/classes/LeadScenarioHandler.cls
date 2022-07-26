public class LeadScenarioHandler {
    public static void tekslate4(List<Lead> ld){
        for(lead l : ld){
            l.FirstName= 'Dr.' + l.FirstName;
            l.LastName = l.LastName;
        }
    }
}