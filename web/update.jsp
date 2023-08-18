<%-- 
    Document   : update
    Created on : Mar 14, 2023, 11:17:12 PM
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
        <h1>Update Content</h1>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>Main title</td>
                <td>Posting time</td>
            </tr>
            <c:forEach items="${list}" var="c">
                <tr>
                    <td>${c.getID()}</td>
                    <td>${c.getMainTitle()}</td>
                    <td>${c.getPostingTime()}</td>
                    <td><a href="admin?id=${c.getID()}&update=1">Update</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
