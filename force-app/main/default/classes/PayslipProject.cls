public class PayslipProject {
/*"Bank Name should only contain alphabets and must be only in capital letters
If user enters in small letters, it should be converted to capital letters"*/
    public static void task3(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            Empd2.Bank_Name__c=Empd2.Bank_Name__c.touppercase(); // to uppercase
        }
    }

/*IFSC code should be in combination of alphanumeric and should not accept special characters and only be 11 digits"*/
    public static void task4(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            Empd2.IFSC_Code__c=Empd2.IFSC_Code__c.touppercase();
            if(Empd2.Bank_Name__c!=null && Empd2.IFSC_Code__c==null){
                Empd2.IFSC_Code__c.adderror('IFSC code shouldnt be Blank');
            }
        }
    }
/*"PAN Number should be in combination of alphanumber and must be only 10 digits
Ex: ABCDE1234F (it should accept only this format)"*/
    public static void task5(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            Empd2.PAN_Number__c=Empd2.PAN_Number__c.touppercase(); // to uppercase
        }
    }
/*"AADHAAR Number should be of 12 digits and should not accept special characters, alphabets, same numbers
Ex: It should not accept numbers like 0000 0000 0000,1111 1111 1111,…...."*/
    public static void task6(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            if(Empd2.Aadhar_Number__c=='000000000000' ||Empd2.Aadhar_Number__c=='111111111111' || 
               Empd2.Aadhar_Number__c=='222222222222' ||Empd2.Aadhar_Number__c=='333333333333' || 
               Empd2.Aadhar_Number__c=='444444444444' ||Empd2.Aadhar_Number__c=='555555555555' ||
               Empd2.Aadhar_Number__c=='666666666666' ||Empd2.Aadhar_Number__c=='777777777777' ||
               Empd2.Aadhar_Number__c=='888888888888' ||Empd2.Aadhar_Number__c=='999999999999'){
                Empd2.Aadhar_Number__c.adderror('Enter valid aadhar number');
            }
        }
    }
/*"Phone Number should only be 10 digits(only numbers) and must begin with either 6 or 7 or 8 or 9
Ex: It should not accept numbers like 0000000000,1111111111,…...."*/
    public static void task8(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            if(Empd2.Phone_Num__c=='0000000000' ||Empd2.Phone_Num__c=='1111111111' || 
               Empd2.Phone_Num__c=='2222222222' || Empd2.Phone_Num__c=='3333333333' || 
              Empd2.Phone_Num__c=='4444444444' || Empd2.Phone_Num__c=='5555555555' ||
               Empd2.Phone_Num__c=='6666666666' || Empd2.Phone_Num__c=='7777777777' ||
               Empd2.Phone_Num__c=='8888888888' || Empd2.Phone_Num__c=='9999999999'){
                Empd2.Phone_Num__c.adderror('Enter valid phone number');
            }
        }
    }
/*Active Status*/
    public static void task9(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            if(Empd2.End_Date__c!=null){
                Empd2.Active_status__c=false;
            }else(Empd2.Active_status__c=true);
        }
    }  
/*Only one active salary record should be present for each employee*/
    public static void task92(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            IF(Empd2.End_Date__c==null && Empd2.Active_status__c==true){
                salary__c sal1=new salary__c();
                sal1.Employee_Name__c=Empd2.id;
                insert sal1;
            }
        }       
    }
/*DOL should not be before DOJ, add a field for Date of resignation, Date of Leaving*/
    public static void task10(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            if(Empd2.End_Date__c<Empd2.Date_of_Joining__c){
                Empd2.End_Date__c.adderror('Last Day of working shouldnt be less than Date of Joining');
            }
        }
    }
/*DOB- Age of employee should be minimum 21 years*/
    public static void task11(list<Employee_Detail__c> Empd1){
        for(Employee_Detail__c Empd2:Empd1){
            if(Empd2.Age__c<21){
                Empd2.Date_of_Birth__c.adderror('Employee Age should be minimum 21 years');
            }
        }
    }
}