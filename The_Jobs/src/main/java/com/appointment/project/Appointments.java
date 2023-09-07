/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.appointment.project;

/**
 *
 * @author Trav
 */
public class Appointments{
    int id;
    String name;
    String age;
    String gender;
    String number;
    String email;
    String consultant;
    String description;
    String date;

    public Appointments() {
    }

    public Appointments(int id, String name, String age, String gender, String number, String email, String consultant, String description, String date) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.number = number;
        this.email = email;
        this.consultant = consultant;
        this.description = description;
        this.date = date;
    }

    public Appointments(String name, String age, String gender, String number, String email, String consultant, String description, String date) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.number = number;
        this.email = email;
        this.consultant = consultant;
        this.description = description;
        this.date = date;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getConsultant() {
        return consultant;
    }

    public void setConsultant(String consultant) {
        this.consultant = consultant;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "appointments{" + "id=" + id + ", name=" + name + ", age=" + age + ", gender=" + gender + ", number=" + number + ", email=" + email + ", consultant=" + consultant + ", description=" + description + ", date=" + date + '}';
    }
}
