public class multiplepages{
    public string salutation1{get;set;}
    public string FirstName{get;set;}
    public string LastName{get;set;}
    public string Department{get;set;}
    public string Designation{get;set;}
    public boolean ActiveStatus{get;set;}
    public integer BasicSalary{get;set;}
    public integer BasketAllowances{get;set;}
    public integer PerformanceBonus{get;set;}
    public integer SpecialAllownaces{get;set;}
    public Date StartDate{get;set;}
    public Date EndDate{get;set;}
    public integer DaysPaid{get;set;}
    public integer IncomeTaxDeduction{get;set;}
    public integer Insurancededuction{get;set;}
    public integer OtherDecduction{get;set;}
    public integer LOP{get;set;}
    public integer PerfomanceBonus{get;set;}  
    public Employee_Detail__c e{get;set;}
    public Salary__c s{get;set;}
    public Pay_Slip__c p{get;set;}
    public list<SelectOption> getsalutations(){
        List<SelectOption> slist= new List<SelectOption>();
        slist.add(new SelectOption('None','--None--'));
        List<Schema.PicklistEntry> getslist = Employee_Detail__c.Salutation__c.getDescribe().getPickListValues();
        for(Schema.PicklistEntry sallist: getslist){
            slist.add(new selectOption(sallist.getValue(),sallist.getLabel()));
        }
        return slist;
    }
    public list<selectOption> getDepartments(){
        List<SelectOption> slist= new List<SelectOption>();
        slist.add(new SelectOption('None','--None--'));
        List<Schema.PicklistEntry> getslist = Employee_Detail__c.Department__c.getDescribe().getPickListValues();
        for(Schema.PicklistEntry sallist: getslist){
            slist.add(new selectOption(sallist.getValue(),sallist.getLabel()));
        }
        return slist;
    }
    public list<SelectOption> getDesignations(){
        List<SelectOption> slist= new List<SelectOption>();
        slist.add(new SelectOption('None','--None--'));
        List<Schema.PicklistEntry> getslist = Employee_Detail__c.Designation__c.getDescribe().getPickListValues();
        for(Schema.PicklistEntry sallist: getslist){
            slist.add(new selectOption(sallist.getValue(),sallist.getLabel()));
        }
        return slist;
    }
    public pagereference NextPage(){
        pagereference p= new pagereference('/apex/salaryVF');
        return p;
    }
    public pagereference PreviousPage(){
        pagereference p1= new pagereference('/apex/employeedetails');
        return p1;
    }
    public pagereference NextPage1(){
        pagereference p2= new pagereference('/apex/payslips');
        return p2;
}
    public pagereference PreviousPage1(){
        pagereference p3= new pagereference('/apex/salaryVF');
        return p3;
}
    public pagereference submit(){
        e= new Employee_Detail__c();
        s= new Salary__c();
        p= new Pay_Slip__c();
        e.Salutation__c=salutation1;
        e.FirstName__c=FirstName;
        e.Name=LastName;
        e.Department__c=Department;
        e.Designation__c=designation;
        e.Active_status__c=ActiveStatus;
        insert e;
        s.Employee_Name__c=e.id;
       	s.Basic_Salary__c=BasicSalary;
        s.Basket_Allowances__c=BasketAllowances;
        s.performance_bonus__c=PerformanceBonus;
        s.Special_Allowances__c=SpecialAllownaces;
        s.Start_date__c=StartDate;
        s.End_date__c=EndDate;
        insert s;
        p.Employee_ID__c=e.id;
        p.Salary_ID__c=s.id;
        p.Days_paid__c=DaysPaid;
        p.Income_Tax_deduction__c=IncomeTaxDeduction;
        p.Insurance_deduction__c=Insurancededuction;
        p.Other_deductions__c=OtherDecduction;
        p.LOP__c=LOP;
        p.performance_bonus__c=PerfomanceBonus;
        insert p;
        pagereference pg= new pagereference('/'+e.id);
        return pg;
    }
}