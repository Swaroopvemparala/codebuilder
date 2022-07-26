public class WeatherWrapper {
    private string cname;
    private decimal  temperature;
    private decimal temp_c;
    public void setCname(string Cname){
        this.Cname = Cname;
    }
    public string getCname(){
        return Cname;
    }
    public void setTemperature(decimal Temperature){
        this.Temperature = Temperature;
    }
    public decimal getTemperature(){
        return Temperature;
    }
    public void setTemp_c(decimal Temp_c){
        this.Temp_c = Temp_c;
    }
    public decimal getTemp_c(){
        return Temp_c;        
    }
}