<%-- 
    Document   : Add
    Created on : Mar 14, 2023, 10:24:44 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Add Content</h2>
        <form action="admin" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>Main title</td>
                    <td><input type="text" name="mainTitle"></td>
                </tr>
                <tr>
                    <td>title 1</td>
                    <td><input type="text" name="title1"></td>
                </tr>
                <tr>
                    <td>content 1</td>
                    <td><textarea cols="30" rows="10" type="text" name="content1"></textarea></td>
                </tr>
                <tr>
                    <td>title2</td>
                    <td><input type="text" name="title2"></td>
                </tr>
                <tr>
                    <td>content 2</td>
                    <td><textarea cols="30" rows="10" type="text" name="content2"></textarea></td>
                </tr>
                <tr>
                    <td>image</td>
                    <td><input type="text" name="image"></td>
                </tr>
                <tr>
                    <td>Ten nuoc hoa</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="add" value="Add"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
