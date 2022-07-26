public class sosltabs {
    public string input1{get;set;}
    public list<account> dispacc{get;set;} 
    public list<opportunity> dispopp{get;set;}
    public list<list<sobject>> nestedlist;
    public list<account> acclist;
    public list<opportunity> opplist;  
    public  void method1(){
        dispacc=new list<account>();
        dispopp=new list<opportunity>();
        nestedlist=[find :input1 in all fields returning Account(name,phone LIMIT 2),opportunity(name,amount)];
        dispacc=((list<account>)nestedlist[0]);
        dispopp=((list<opportunity>)nestedlist[1]);
}
}