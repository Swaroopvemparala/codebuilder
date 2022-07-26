public class livecoding {
    public static void task11(){
        date myDate=Date.newInstance(2022,12,10);
        date newDate=myDate.addDays(10);
        date expectedDate=Date.newInstance(2022,12,20);
        system.debug('the dates are:'+expectedDate+newDate);
    }

}