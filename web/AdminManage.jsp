<%-- 
    Document   : AdminManage
    Created on : Mar 14, 2023, 10:16:36 PM
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
        <style>

            /* CSS */
            .button-43 {
                background-image: linear-gradient(-180deg, #37AEE2 0%, #1E96C8 100%);
                border-radius: .5rem;
                box-sizing: border-box;
                color: #FFFFFF;
                display: flex;
                font-size: 16px;
                justify-content: center;
                padding: 1rem 1.75rem;
                text-decoration: none;
                width: 10%;
                border: 0;
                cursor: pointer;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
                margin-top: 10px;
            }

            .button-43:hover {
                background-image: linear-gradient(-180deg, #1D95C9 0%, #17759C 100%);
            }

            @media (min-width: 768px) {
                .button-43 {
                    padding: 1rem 2rem;
                }
            }
        </style>
        <h2>Chức năng quản lý Blog</h2>
        <a href="post">Home</a>
        <form action="login" method="get">
            <button class="button-43" type="submit" name="add" value="Add">Add</button>
            <button class="button-43" type="submit" name="update" value="Update">Update</button>
            <button class="button-43" type="submit" name="delete" value="Delete">Delete</button>
            <button class="button-43" type="submit" name="viewer" value="Viewer">Message form viewer</button>
        </form>
    </body>
</html>
