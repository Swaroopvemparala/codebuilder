public class Basicprograms {
    public static void number(){
        integer a=5;
    system.debug(a);
    }
    public static void second(){
        double a=2.3;
        system.debug(a);
    }
    public static void third(){
        string a='m';
        system.debug(a);
    }
    public static void fourth(){
        string x = 'Antra';
        system.debug(x);
    }
    public static void fifth(){
        string x='abc123@gmail.com';
        system.debug(x);
    }
    public static void sixth(){
        boolean x= true;
        system.debug(x);
    }
    public static void seventh(){
        integer x=10;
        integer y=x;
        system.debug(x);
        system.debug(y);
    }
    public static void eighth(){
        integer x=10;
        double y= 10.3;
        system.debug(x);
        system.debug(y);
    }
    public static void ninth(){
        double x=10.3;
        long y= x.longValue();
        system.debug(x);
        system.debug(y);
    }
    public static void tenth(){
        integer a=5;
        integer b=9;
        integer c=a+b;
        system.debug(a);
        system.debug(b);
        system.debug(c);
    }
    public static void eleventh(){
        integer a=5;
        double b=9.5;
        double c=a+b;
        system.debug(a);
        system.debug(b);
        system.debug(c);
    }
    public static void twelve(){
        string firstname='Antra';
        string lastname='Inc';
        string fullname= firstname +lastname;
        system.debug(fullname);
    }
    public static void thirteen(){
        integer a=5;
        double b=math.pow(a, 2);
        double c=math.pow(a, 3);
        system.debug(b);
        system.debug(c);
    }
    public static void fourteen(){
		integer a=5;
		double b= math.pow(a, 2);
		double c= math.pow(a, 3);
		double d= b+c;
		system.debug(d);
}
    public static void fifteen(){
		integer radius=5;
		double perimeter= 2*math.pi*radius;
		double area= math.pi*radius*radius;
		system.debug(perimeter);
		system.debug(area);
}
    public static void sixteen( ){
		integer length= 5;
		integer breadth=3;
		integer area=length*breadth;
		integer perimeter=2*(length+breadth);
		system.debug(area);
		system.debug(perimeter);
}
    public static void twentyone(){
integer a=10000;
double b= 0.3*10000;
double c= 0.1*10000;
double sumofgrosssalary=a+b+c;
system.debug(sumofgrosssalary);
integer d=2000;
integer e= 200;
double f= 0.1*10000;
double deduction= (d-e-f);
double netsalary= sumofgrosssalary-deduction;
system.debug(netsalary);
}
    public static void twentyfour(){
integer a=440;
double b= 0.1*a;
double original= (a*100)/(100+0.1);
system.debug('Original cost ' +original);
}
    public static void twentyfive(){
double a= 500;
double years= a/365;
double months= a/31;
double week= a/7;
double days= a;
system.debug('Years' +years);
system.debug('Months' +months);
system.debug('Week' +week);
system.debug('Days' +days);
}
    public static void twentysix(){
double a=100000;
double minutes= a/60;
double seconds= a/3600;
system.debug('Minutes: ' +minutes);
system.debug('Seconds: ' +seconds);
}
    public static void twentyeight(){
integer a=100000;
integer days= a/86400;
integer hours= a/3600;
integer minutes= a/60;
system.debug('Days' +days);
 system.debug('Hours' +hours);
system.debug('Minutes' +minutes);
system.debug('Seconds' +a);
}



}