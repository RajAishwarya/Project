/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginPage;

/**
 *
 * @author Abhiraj
 */
import java.sql.*;

public class Validate
 {
     public static boolean checkUser(String email,String pass) 
     {
      boolean st =false;
      String DefUname="abhiraj";
      String DefPass="qweasdzxc";
      
          if(email.equals(DefUname))
        {
            if(pass.equals(DefPass))
            {
                st=true;
                return st;
            }
            else
            {
                return st;
            }
        }     
         return false;
     }
}     
