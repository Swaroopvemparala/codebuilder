public class PizzaClass {
    public boolean BlueCheese{get;set;}
    public string SizeSelected{get;set;}
   // public string CheeseSelected{get;set;}
    //public string SauceSelected{get;set;}
    public string outputSize{get;set;}
    public string outputcheese{get;set;}
    public string outputsauce{get;set;}
    public integer Total{get;set;}
    public List<String> CheeseSelected {get;set;}
    public List<String> SauceSelected {get;set;}    
    public List<SelectOption> getsauceoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Tomato Sauce','Tomato Sauce'));
        Options.add(new SelectOption('Alfredo Sauce','Alfredo Sauce'));
        Options.add(new SelectOption('Buffalo Sauce','Buffalo Sauce'));
        Options.add(new SelectOption('Spicy Mexican Sauce','Spicy Mexican Sauce'));
        Options.add(new SelectOption('Garlic Parmasean Alfredo Sauce','Garlic Parmasean Alfredo Sauce'));
          Options.add(new SelectOption('Marinara Sauce','Marinara Sauce'));         
        return Options;
    }
    public void SelectSauce(){
        for(string str:SauceSelected){
          if(str=='Tomato Sauce'){
            outputsauce='Tomato Sauce'; 
        }else if(str=='Alfredo Sauce'){
            outputsauce='Alfredo Sauce';
        }else if(str=='Buffalo Sauce'){
            outputsauce='Buffalo Sauce';
        } else if(str=='Spicy Mexican Sauce'){
            outputsauce='Spicy Mexican Sauce';
        } else if(str=='Garlic Parmasean Alfredo Sauce'){
            outputsauce='Garlic Parmasean Alfredo Sauce';
        } else if(str=='Marinara Sauce'){
            outputsauce='Marinara Sauce';
        }   
        }
        
    }
     
    public void saveMyValue(){
        if(SizeSelected=='slices4'){
            outputSize='4 slices-Personal';
           
        } else if(SizeSelected=='slices6'){
            outputSize='6 slices-Medium';
           
        }else if(SizeSelected=='slices8'){
            outputSize='8 slices-Large';
           
        }else if(SizeSelected=='slices8Extra'){
            outputSize='8 slices-Extra Large';
          
        }
    }
    
      public List<SelectOption> getcheeseoptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Blue Cheese','Blue Cheese'));
        Options.add(new SelectOption('Cottage Cheese','Cottage Cheese'));
        Options.add(new SelectOption('Swiss Cheese','Swiss Cheese'));
        Options.add(new SelectOption('American Cheese','American Cheese'));
        Options.add(new SelectOption('Mozzarella','Mozzarella'));
        Options.add(new SelectOption('Cheddar Cheese','Cheddar Cheese'));
        Options.add(new SelectOption('Feta Cheese','Feta Cheese'));
        Options.add(new SelectOption('Monterey','Monterey'));
        Options.add(new SelectOption('Parmigiano Reggiano','Parmigiano Reggiano'));
        return Options;
    }
     public void Selectcheese(){
         for(string str:CheeseSelected){
             if(str=='Blue Cheese'){
                outputcheese='Blue Cheese' ;
             } else if(str=='Blue Cheese' && str=='Cottage Cheese'){
                  outputcheese='Blue Cheese, Cottage Cheese' ;
             }else if(str=='Swiss Cheese'){
                  outputcheese='Swiss Cheese' ;
             }else if(str=='American Cheese'){
                  outputcheese='American Cheese' ;
             }else if(str=='Mozzarella'){
                  outputcheese='Mozzarella' ;
             }else if(str=='Cheddar Cheese'){
                  outputcheese='Cheddar Cheese' ;
             }else if(str=='Feta Cheese'){
                  outputcheese='Feta Cheese' ;
             }else if(str=='Monterey'){
                  outputcheese='Monterey' ;
             }else if(str=='Parmigiano Reggiano'){
                  outputcheese='Parmigiano Reggiano' ;
             }
         }
    }
}