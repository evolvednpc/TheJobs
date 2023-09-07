/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appointment.project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author User
 */
public class AppointmentsDao {
    Connection con;

    public AppointmentsDao(Connection con) {
        this.con = con;
    }
    
    //POST(add) appointments information to database
    public boolean addAppointment(Appointments appointment){
        boolean test = false;
        
        try{
            String query =  "insert into appointment (name,age,gender,number,email,consultant,description,date) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, appointment.getName());
            pst.setString(2, appointment.getAge());
            pst.setString(3, appointment.getGender());
            pst.setString(4, appointment.getNumber());
            pst.setString(5, appointment.getEmail());
            pst.setString(6, appointment.getConsultant());
            pst.setString(7, appointment.getDescription());
            pst.setString(8, appointment.getDate());
            pst.executeUpdate();
            test= true;

        }catch(SQLException e){
        }
        return test;
    }
    
//    GET(retrieve) the appointment details from databse
    public List<Appointments> getAllAppointments(){
        List<Appointments> appointment = new ArrayList<>();
        
        try{
            
            String query = "select * from appointment";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String number = rs.getString("number");
                String email = rs.getString("email");
                String consultant = rs.getString("consultant");
                String description = rs.getString("description");
                String date = rs.getString("date");
                
                Appointments row = new Appointments(id,name,age,gender,number,email,consultant,description,date);
                appointment.add(row);
            }
            
        }catch(SQLException e){
        }
        return appointment;
    }
    
    
//    PUT(edit) appointment information
    public boolean editAppointmentInfo(Appointments appointment){
        boolean test = false;
        try{
            String query = "update appointment set name=?, age=?, gender=?, number=?, email=?, doctor=?, description=? ,branch=? ,date=? where id=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, appointment.getName());
            pst.setString(2, appointment.getAge());
            pst.setString(3, appointment.getGender());
            pst.setString(4, appointment.getNumber());
            pst.setString(5, appointment.getEmail());
            pst.setString(6, appointment.getConsultant());
            pst.setString(7, appointment.getDescription());
            pst.setString(8, appointment.getDate());
            pst.setInt(9, appointment.getId());
            
            pst.executeUpdate();
            test = true;
            
        }catch(SQLException ex){

        }
        return test;
        
        
    }
    
//    get single appointment information in edit page
    public Appointments getSingleAppointment(int id){
        Appointments appointment = null;
        
        try{
            String query = "select * from appointment where id=? ";
            
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs= pst.executeQuery();
            
            while(rs.next()){
                int aid = rs.getInt("id");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String number = rs.getString("number");
                String email = rs.getString("email");
                String consultant = rs.getString("consultant");
                String description = rs.getString("description");
                String date = rs.getString("date");
                appointment = new Appointments(aid,name,age,gender,number,email,consultant,description,date);
            }
        }catch(SQLException ex){
        }
        return appointment;
    }
    
    
//    delete appointments from database
    
    
    public void deleteAppointment(int id){
        try{
            
           String query= "delete from appointment where id=?";
           PreparedStatement pst = this.con.prepareStatement(query);
           pst.setInt(1, id);
           pst.execute();
            
        }catch(SQLException ex){
        }
    }
}
