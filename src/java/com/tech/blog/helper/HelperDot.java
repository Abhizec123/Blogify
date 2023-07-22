
package com.tech.blog.helper;


public class HelperDot {
    public static String get10Words(String desc){
    
       String[]str= desc.split(" ");
       if(str.length>20){
           String res="";
           for(int i=0;i<20;i++){
               res+=str[i] +" ";
           }
           return  (res+"....");
       }else{
           return (desc+"...");
       }
    }
}
