<%-- 
    Document   : send
    Created on : Mar 15, 2023, 12:21:02 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Message form viewer</h1>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Email</td>
                <td>PhoneNumber</td>
                <td>Message</td>
            </tr>
            <c:forEach items="${Viewer}" var="v">
                <tr>
                    <td>${v.getID()}</td>
                    <td>${v.getName()}</td>
                    <td>${v.getEmail()}</td>
                    <td>${v.getPhoneNumber()}</td>
                    <td>${v.getMessage()}</td>
                    
                </tr>
            </c:forEach>
    </body>
</html>
