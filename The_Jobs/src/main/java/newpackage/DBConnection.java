/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author User
 */
public class DBConnection {
    private static Connection con;
    
    public static Connection getConnection() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema?zeroDateTimeBehavior=CONVERT_TO_NULL","root","123");
        }catch(ClassNotFoundException | SQLException e){
        }
        return con;
    }
}
