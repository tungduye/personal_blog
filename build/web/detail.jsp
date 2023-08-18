<%-- 
    Document   : detail
    Created on : Mar 14, 2023, 11:26:29 PM
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
        <h1>Update content</h1>
        <form action="admin" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="${c.getID()}" readonly></td>
                </tr>
                <tr>
                    <td>Main title</td>
                    <td><input type="text" name="mainTitle" value="${c.getMainTitle()}"></td>
                </tr>
                <tr>
                    <td>title 1</td>
                    <td><input type="text" name="title1" value="${c.getTitle1()}"></td>
                </tr>
                <tr>
                    <td>content 1</td>
                    <td><textarea cols="30" rows="10" type="text" name="content1" >${c.getContent1()}</textarea></td>
                </tr>
                <tr>
                    <td>title2</td>
                    <td><input type="text" name="title2" value="${c.getTitle2()}"></td>
                </tr>
                <tr>
                    <td>content 2</td>
                    <td><textarea cols="30" rows="10" type="text" name="content2">${c.getContent2()}</textarea></td>
                </tr>
                <tr>
                    <td>image</td>
                    <td><input type="text" name="image" value="${c.getImage()}"></td>
                </tr>
                <tr>
                    <td hidden>Posting time</td>
                    <td><input hidden type="text" name="postingTime" value="${c.getPostingTime()}"></td>
                </tr>
                <tr>
                    <td>Ten nuoc hoa</td>
                    <td><input type="text" name="name" value="${c.getName()}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="update1" value="Update" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
