/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package email;

/**
 *
 * @author Admin
 */

public class encription {
    public static int binary(int N){
        int sum=0,i;
        int binaryarr[] = new int[40];    
        int index = 0;
        while(N > 0){
            binaryarr[index++] = N%2;    
            N/=2;    
        }    
        for(i = index-1;i >= 0;i--){
            sum*=10;
            sum+=binaryarr[i];
        }   
        return sum;
    }
    public static String encrpfun(String s){
        try {
        int i;
        String rs="";
        for(i=0;i<s.length();i++){
            char c=s.charAt(i);
            if((c>='A'&&c<='Z')||(c>='a'&&c<='z')){
                rs=rs+binary(c*8)+"/";
            }
            else if(c>='0'&&c<='9')
                rs=rs+binary(c*6)+"/";
            else
                rs=rs+binary(c*4)+"/";
        }
        return rs;
        } 
        catch (Exception e) {
            System.out.print("Encription Unsucessfull!");
            return "Null";
        }
    }
}
