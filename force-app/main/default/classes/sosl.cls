public class sosl {
    Public List<Contact> conList {get; set;}
    Public List<Account> accList {get; set;}
    Public String searchStr {get; set;}
    Public void Search(){
        conList = New List<contact>();
        accList = New List<account>();
        List<List <sObject>> searchList = [FIND :searchStr IN ALL FIELDS RETURNING  Account(Id,Name,Type), Contact(Name,Email)];
        accList = ((List<account>)searchList[0]);
        conList  = ((List<contact>)searchList[1]);
    }
}