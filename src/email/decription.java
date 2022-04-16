/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package email;

//import static email.encription.binary;

/**
 *
 * @author Admin
 */
public class decription {
    public static String decrpfun(String s){
        try {
        int i,sum=0,co=0,powsum;
        String rs="";
        for(i=0;i<s.length();i++){
            char c=s.charAt(i);
            if(c=='/'){
                powsum=0;
                co=0;
                while(sum>0){
                    powsum+=sum%10*Math.pow(2,co++);
                    sum/=10;
                }
                if((powsum>=520&&powsum<=720)||(powsum>=776&&powsum<=976))
                    rs=rs+(char)(powsum/8);
                else if(powsum>=288&&powsum<=342)
                    rs=rs+(char)(powsum/6);
                else
                    rs=rs+(char)(powsum/4);
                sum=0;
                co=0;
            }
            else{
                sum*=10;
                sum+=(c-48);
            }
        }
        return rs;
        } 
        catch (Exception e) {
            System.out.print("Decription Unsucessfull!");
            return "Null";
        }
    }
}
