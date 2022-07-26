public class VFBasics {
    public string string1{get;set;}
    public string string2{get;set;}
    public integer integer1{get;set;}
    public integer integer2{get;set;}
    public integer integer3{get;set;}
    public integer integer4{get;set;}
    public string name{get;set;}
    public integer salary{get;set;}
    public integer experience{get;set;}
    public string output1{get;set;}
    public string StudentName{get;set;}
    public integer age{get;set;}
    public string branch{get;set;}
    public string output2{get;set;}
    public string ProductName{get;set;}
    public integer price{get;set;}
    public integer quantity{get;set;}
    public string output3{get;set;}
    public string MovieName{get;set;}
    public string TiketsAvailable{get;set;}
    public string showtimings{get;set;}
    public string output4{get;set;}
    public void submit(){
        if(string.isNotBlank(string1)){
            string2='Hello '+string1;
        }
    } 
    public void length(){
        if(string.isNotBlank(string1)){
            string2=string.valueof(string1.deleteWhitespace().length());
        }
    } 
    public void palindrome(){
        if(string.isNotBlank(string1)){
            string str=string1.reverse();
            string2= str==string1 ? 'Is a palindrome':'Not a palindrome';
        }
    }
    public void Add(){
       integer4=integer1+integer2+integer3;
        }
    public void Multiply(){
        integer4=integer1*integer2*integer3;
    }
    public void average(){
        integer4=(integer1+integer2+integer3)/3;
    }  
    public void Greatest(){
        if(integer1>integer2 && integer1>integer3){
            integer4=integer1;
            }
        else if(integer2>integer1 && integer2>integer3){
                integer4= integer2;
        }
        else{
            integer4= integer3;
        }
    }
    public void click(){
        output1='The Name of the Employee '+Name +' has a Salary of  '+Salary +' And Experience of '+Experience+ 'in years';
    }
    public void Clickfordetails(){
        output2='The Name of the student is' +StudentName+' of age' +age +' pursuing in' +branch+' branch';
    }
    public void ClickforResult(){
        Output3='Product Name is' +ProductName +' and the price is'+price +' for quantity'+quantity;
    }
    public void ClickforTikets(){
        output4='The Movie Name is' + MovieName +' number of tikets'+ TiketsAvailable + ' and the show timings is at'+ showtimings;
    }
}