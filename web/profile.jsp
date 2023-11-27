<%@ page import="com.tarachand.entities.User" %>
<%@page errorPage="error_page.jsp"  %>
<% 
    User usr = (User)session.getAttribute("currentUser");
    
    if(usr == null){
        response.sendRedirect("signin.jsp");
    }

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3><%= usr.getName() %></h3>
<h3><%= usr.getEmail() %></h3>
<h3><%= usr.getPassword() %></h3>
<h3><%= usr.getMobile() %></h3>
<h3><%= usr.getGender() %></h3>
<h3><%= usr.getProfile() %></h3>
<h3><%= usr.getLastAccessedIP() %></h3>