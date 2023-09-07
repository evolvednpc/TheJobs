/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.appointment.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Trav
 */
public class DBAPConnection {
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
