public class livecoding1 {
    public static void task4(){
        date d1=date.newInstance(2021,01,10);
        date d2=date.newInstance(2022,01,10);
        integer result=d1.daysBetween(d2);
        system.debug('The days between two days are:' +result);
    }

}