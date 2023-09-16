/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appointment.project;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet("/EditAppointmentsServlet")
public class EditAppointmentServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditAppointmentServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            int aid = Integer.parseInt(request.getParameter("aid"));
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            String number = request.getParameter("number");
            String email = request.getParameter("email");
            String consultant = request.getParameter("consultant");
            String description = request.getParameter("description");
            String date = request.getParameter("date");
            
            //appointments appointment = new appointments(name,age,gender,number,email,doctor,description,branch,date);

            //Create a appointment object and set those vlaue to book object
            Appointments appointment = new Appointments();
            appointment.setName(name);
            appointment.setAge(age);
            appointment.setGender(gender);
            appointment.setNumber(number);
            appointment.setEmail(email);
            appointment.setConsultant(consultant);
            appointment.setDescription(description);
            appointment.setDate(date);
            appointment.setId(aid);

            //create new AppointmentsDao object
            try {
                AppointmentsDao adao = new AppointmentsDao(DBAPConnection.getConnection());
                if (adao.editAppointmentInfo(appointment)) {
                    response.sendRedirect("applicantAppointment.jsp");
                } else {
                    out.print("Error");
                }
            } catch (IOException e) {
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
