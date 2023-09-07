/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.applicant.project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trav
 */
public class ApplicantsDao {
    Connection con;

    public ApplicantsDao(Connection con) {
        this.con = con;
    }
    
    //POST(add) applicants information to database

    /**
     *
     * @param applicant
     * @return
     */
    public boolean addApplicant(Applicants applicant){
        boolean test = false;
        
        try{
            String query =  "insert into applicant (pnumber,name,age,gender,nic,address,email,cnumber,nationality) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, applicant.getPnumber());
            pst.setString(2, applicant.getName());
            pst.setString(3, applicant.getAge());
            pst.setString(4, applicant.getGender());
            pst.setString(5, applicant.getNic());
            pst.setString(6, applicant.getAddress());
            pst.setString(7, applicant.getEmail());
            pst.setString(8, applicant.getCnumber());
            pst.setString(9, applicant.getNationality());
            pst.executeUpdate();
            test= true;

        }catch(SQLException e){
        }
        return test;
    }
    
//    GET(retrieve) the applicant details from databse
    public List<Applicants> getAllApplicants(){
        List<Applicants> Applicant = new ArrayList<>();
        
        try{
            
            String query = "select * from applicant";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String pnumber = rs.getString("pnumber");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String nic = rs.getString("nic");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String cnumber = rs.getString("cnumber");
                String nationality = rs.getString("nationality");
                
                Applicants row = new Applicants(id,pnumber,name,age,gender,nic,address,email,cnumber,nationality);
                Applicant.add(row);
            }
            
        }catch(SQLException e){
        }
        return Applicant;
    }
    
    
//    PUT(edit) applicant information
    public boolean editApplicantInfo(Applicants applicant){
        boolean test = false;
        try{
            String query = "update applicant set pnumber=?, name=?, age=?, gender=?, nic=?, address=?, email=?, cnumber=?, nationality=? where id=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, applicant.getPnumber());
            pst.setString(2, applicant.getName());
            pst.setString(3, applicant.getAge());
            pst.setString(4, applicant.getGender());
            pst.setString(5, applicant.getNic());
            pst.setString(6, applicant.getAddress());
            pst.setString(7, applicant.getEmail());
            pst.setString(8, applicant.getCnumber());
            pst.setString(9, applicant.getNationality());
            pst.setInt(10, applicant.getId());
            
            pst.executeUpdate();
            test = true;
            
        }catch(SQLException ex){
        }
        return test;
        
        
    }
    
//    get single applicat information in edit page
    public Applicants getSingleApplicant(int id){
        Applicants applicant = null;
        
        try{
            String query = "select * from applicant where id=? ";
            
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs= pst.executeQuery();
            
            while(rs.next()){
                int pid = rs.getInt("id");
                String pnumber = rs.getString("pnumber");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String nic = rs.getString("nic");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String cnumber = rs.getString("cnumber");
                String nationality = rs.getString("nationality");
                applicant = new Applicants(pid,pnumber,name,age,gender,nic,address,email,cnumber,nationality);
            }
        }catch(SQLException ex){

        }
        return applicant;
    }
    
    
//    delete applicants from database
    
    
    public void deleteApplicant(int id){
        try{
            
           String query= "delete from applicant where id=?";
           PreparedStatement pst = this.con.prepareStatement(query);
           pst.setInt(1, id);
           pst.execute();
            
        }catch(SQLException ex){
        }
    }
}
