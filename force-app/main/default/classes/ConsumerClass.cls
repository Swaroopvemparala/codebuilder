public class ConsumerClass {
    private string Id;
    private string Name;
    private string Phone;
    private string AccountNumber;
    private string Industry;
    private decimal AnnualRevenue;
    public void setId(string Id){
        this.Id = Id;
    }
    public string getId(){
        return Id;        
    }
    public void setName(string Name){
        this.Name = Name;
    }
    public string getName(){
        return Name;        
    }
    public void setPhone(string Phone){
        this.Phone = Phone;
    }
    public string getPhone(){
        return Phone;        
    }
    public void setAccountNumber(string AccountNumber){
        this.AccountNumber = AccountNumber;
    }
    public string getAccountNumber(){
        return AccountNumber;        
    }
    public void setIndustry(string Industry){
        this.Industry = Industry;
    }
    public string getIndustry(){
        return Industry;        
    }
    public void setAnnualRevenue(decimal AnnualRevenue){
        this.AnnualRevenue = AnnualRevenue;
    }
    public decimal getAnnualRevenue(){
        return AnnualRevenue;        
    }
}