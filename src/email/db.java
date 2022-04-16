/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package email;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class db {
    public static Connection mycon(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/emailsoftware","root","root"); 
            return con; 
        } 
        catch (Exception e) {
            return null;
        }
    }
}
