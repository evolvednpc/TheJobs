/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.applicant.project;

/**
 *
 * @author Trav
 */
public class Applicants {

    int id;
    String pnumber;
    String name;
    String age;
    String gender;
    String nic;
    String address;
    String email;
    String cnumber;
    String nationality;

    public Applicants() {
    }

    public Applicants(int id, String pnumber, String name, String age, String gender, String nic, String address, String email, String cnumber, String nationality) {
        this.id = id;
        this.pnumber = pnumber;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.nic = nic;
        this.address = address;
        this.email = email;
        this.cnumber = cnumber;
        this.nationality = nationality;
    }

    public Applicants(String pnumber, String name, String age, String gender, String nic, String address, String email, String cnumber, String nationality) {
        this.pnumber = pnumber;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.nic = nic;
        this.address = address;
        this.email = email;
        this.cnumber = cnumber;
        this.nationality = nationality;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPnumber() {
        return pnumber;
    }

    public void setPnumber(String pnumber) {
        this.pnumber = pnumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCnumber() {
        return cnumber;
    }

    public void setCnumber(String cnumber) {
        this.cnumber = cnumber;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
    
    @Override
    public String toString() {
        return "applicants{" + "id=" + id + ", pnumber=" + pnumber + ", name=" + name + ", age=" + age + ", gender=" + gender + ", nic=" + nic + ", address=" + address + ", email=" + email + ", cnumber=" + cnumber + ", nationality=" + nationality +'}';
    }
    
}
