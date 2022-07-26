public class soqltask6 {
    public static void check(){
        List<Account>accList=new List<Account>();
        List<AggregateResult>aggresult=[SELECT Industry, count(id) NUM FROM Account group by Industry];
        map<string,integer>Industrycount=new map<string,integer>();
        for(AggregateResult a:aggresult){
            Industrycount.put((string)a.get('Industry'),(Integer)a.get('NUM'));
        }
        system.debug('Industrycount');
    }

}