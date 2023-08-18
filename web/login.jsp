<%-- 
    Document   : login
    Created on : Mar 14, 2023, 10:08:51 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/login.css"/>
    </head>
    <body>
        <div class="materialContainer">


            <div class="box">

                <div class="title">LOGIN</div>
                <form action="login" method="post">
                    <div class="input">
                        <label for="name"></label>
                        <input type="text" name="acc" id="name" placeholder="Account">
                        <span class="spin"></span>
                    </div>

                    <div class="input">
                        <label for="pass"></label>
                        <input type="password" name="pass" id="pass" placeholder="Password">
                        <span class="spin"></span>
                    </div>

                    <div class="button login">
                        <button><span>GO</span> <i class="fa fa-check"></i></button>
                        
                    </div>

                </form>

            <p style="color: red;">${err}</p>
            </div>

        </div>

    </body>
</html>
