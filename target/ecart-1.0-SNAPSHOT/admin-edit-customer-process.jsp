<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
    //Getting all the inputs from the admin
    int id = Integer.parseInt(request.getParameter("pid"));
    String pname = request.getParameter("pname");
    String price = request.getParameter("price");
    String gender = request.getParameter("gender");
    //String description = request.getParameter("description");
    String mprice = request.getParameter("mprice");
    String status = request.getParameter("status");
    String phone = request.getParameter("phone");
    //Querying to the database
    int updateProduct = DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set name='" + pname + "',address='" + price + "',email='" + status + "',gender='" + gender + "',password='" + mprice +"',phone='" +phone + "', where id='" + id + "'");
    if (updateProduct > 0) {
        response.sendRedirect("admin-view-customers.jsp");
    } else {
        response.sendRedirect("admin-view-customers.jsp");
    }
%>