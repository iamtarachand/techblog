<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<%@ include file="header.jsp" %>
<%@include file="navbar.jsp" %>

<section class="py-5 text-center">
    <img src="inc/img/error.png" class="img-fluid" style="height:300px !important"/>
    <h3 class="display-4">sorry! something went wrong...</h3>
    <%= exception %>
    <br>
    <a href="index.jsp" class="btn ta-btn">Go Home</a>
</section>
<%@include file="footer.jsp" %>