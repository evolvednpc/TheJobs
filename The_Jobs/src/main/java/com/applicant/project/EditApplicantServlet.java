/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.applicant.project;

import com.appointment.project.DBAPConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class EditApplicantServlet extends HttpServlet {

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
            out.println("<title>Servlet EditPatientServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            int pid = Integer.parseInt(request.getParameter("pid"));
            String pnumber = request.getParameter("pnumber");
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");          
            String nic = request.getParameter("nic");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String cnumber = request.getParameter("cnumber");          
            String nationality = request.getParameter("nationality");
            
            //Applicants applicant = new Applicants(pnumber,name,age,gender,nic,address,email,cnumber,nationality);
            

            //Create a patient object and set those vlaue to book object
            Applicants applicant = new Applicants();
            applicant.setPnumber(pnumber);
            applicant.setName(name);
            applicant.setAge(age);
            applicant.setGender(gender);
            applicant.setNic(nic);
            applicant.setAddress(address);
            applicant.setEmail(email);
            applicant.setCnumber(cnumber);
            applicant.setNationality(nationality);
            applicant.setId(pid);

            //create new PatientsDao object
            try {
                ApplicantsDao adao = new ApplicantsDao(DBAPConnection.getConnection());
                if (adao.editApplicantInfo(applicant)) {
                    response.sendRedirect("applicant.jsp");
                } else {
                    out.print("Error");
                }
            } catch (IOException e) {
                e.printStackTrace();
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
