public class chraccorrection {
    public static void check(string a, string b, string c){
        integer ans=0;
        integer n =a.length();
        string[] str1=a.split('');
        string[] str2=b.split('');
        string[] str3=c.split('');
        for(integer i=0;i<n;i++){
            string x=str1[i];
            string y=str2[i];
            string z=str3[i];
            if(x==y&&y==z){
                ans++;
                }
            else{
                ans+=2;
            }
            }
            system.debug(''+ans);
        }
    }