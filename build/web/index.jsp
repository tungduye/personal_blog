<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Blog Cá Nhân- Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <style>

            * {
                border: 0;
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            .search-bar input,
            .search-btn,
            .search-btn:before,
            .search-btn:after {
                transition: all 0.25s ease-out;
            }
            .search-bar input,
            .search-btn {
                width: 3em;
                height: 3em;
            }
            .search-bar input:invalid:not(:focus),
            .search-btn {
                cursor: pointer;
            }
            .search-bar,
            .search-bar input:focus,
            .search-bar input:valid  {
                width: 100%;
            }
            .search-bar input:focus,
            .search-bar input:not(:focus) + .search-btn:focus {
                outline: transparent;
            }
            .search-bar {
                margin: auto;
                padding: 1em;
                justify-content: center;
                max-width: 20em;
            }
            .search-bar input {
                background: transparent;
                border-radius: 1.5em;
                box-shadow: 0 0 0 0.4em #171717 inset;
                padding: 0.25em;
                transform: translate(0.5em,0.5em) scale(0.5);
                transform-origin: 100% 0;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
            }
            .search-bar input::-webkit-search-decoration {
                -webkit-appearance: none;
            }
            .search-bar input:focus,
            .search-bar input:valid {
                background: #fff;
                border-radius: 0.375em 0 0 0.375em;
                box-shadow: 0 0 0 0.1em #d9d9d9 inset;
                transform: scale(1);
            }
            .search-btn {
                background: #171717;
                border-radius: 0 0.75em 0.75em 0 / 0 1.5em 1.5em 0;
                padding: 0.5em;
                position: relative;
                transform: translate(0.25em,0.25em) rotate(45deg) scale(0.25,0.125);
                transform-origin: 0 50%;
            }
            .search-btn:before,
            .search-btn:after {
                content: "";
                display: block;
                opacity: 0;
                position: absolute;
            }
            .search-btn:before {
                border-radius: 50%;
                box-shadow: 0 0 0 0.2em #f1f1f1 inset;
                top: 0.75em;
                left: 0.75em;
                width: 1.2em;
                height: 1.2em;
            }
            .search-btn:after {
                background: #f1f1f1;
                border-radius: 0 0.25em 0.25em 0;
                top: 51%;
                left: 51%;
                width: 0.75em;
                height: 0.25em;
                transform: translate(0.2em,0) rotate(45deg);
                transform-origin: 0 50%;
            }
            .search-btn span {
                display: inline-block;
                overflow: hidden;
                width: 1px;
                height: 1px;
            }

            /* Active state */
            .search-bar input:focus + .search-btn,
            .search-bar input:valid + .search-btn {
                background: #2762f3;
                border-radius: 0 0.375em 0.375em 0;
                transform: scale(1);
            }
            .search-bar input:focus + .search-btn:before,
            .search-bar input:focus + .search-btn:after,
            .search-bar input:valid + .search-btn:before,
            .search-bar input:valid + .search-btn:after {
                opacity: 1;
            }
            .search-bar input:focus + .search-btn:hover,
            .search-bar input:valid + .search-btn:hover,
            .search-bar input:valid:not(:focus) + .search-btn:focus {
                background: #0c48db;
            }
            .search-bar input:focus + .search-btn:active,
            .search-bar input:valid + .search-btn:active {
                transform: translateY(1px);
            }

            @media screen and (prefers-color-scheme: dark) {
                input {
                    color: #f1f1f1;
                }
                .search-bar input {
                    box-shadow: 0 0 0 0.4em #f1f1f1 inset;
                }
                .search-bar input:focus,
                .search-bar input:valid {
                    background: #3d3d3d;
                    box-shadow: 0 0 0 0.1em #3d3d3d inset;
                }
                .search-btn {
                    background: #f1f1f1;
                }
            }
            .pagination{
                display: inline-block;
            }
            .pagination a{
                color: black;
                font-size: 20px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active{
                background-color: rgb(0,204,204);
                color: white;
            }
            .pagination a:hover:not(.active){
                background-color: rgb(0,204,204);
                color: white;
            }

            /* YouTube icon */
        </style>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
            <div class="container px-4 px-lg-5">

                <!--<a class="navbar-brand" href="post">Start Bootstrap</a>-->
                <form action="detail" class="search-bar" method="post">
                    <input type="search" name="search" pattern=".*\S.*" required placeholder="Tên nước hoa">
                    <button class="search-btn" type="submit">
                        <span>Search</span>
                    </button>

                </form>
                <p style="color: white">${err}</p>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapses" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="post">Home</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="about.jsp">About</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="detail?id=1">Sample Post</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="contact.jsp">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Header-->
        <header class="masthead" style="background-image: url('assets/img/index.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>Blog Cá Nhân</h1>
                            <span class="subheading">Đào Duy Tùng He163913</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                    <c:forEach items="${post}" var="p">
                        <div class="post-preview">
                            <a href="detail?id=${p.getID()}" ${p.getID()}>
                                <h2 class="post-title">${p.getMainTitle()}</h2>
                                <h3 class="post-subtitle"></h3>
                            </a>
                            <p class="post-meta">
                                Posted by
                                <a href="about.jsp">Duy Tung</a>
                                on ${p.getPostingTime()}
                            </p>
                        </div>

                        <!-- Divider-->
                        <hr class="my-4" />
                    </c:forEach>
                    <!-- Post preview-->
                    <!-- Pager-->
                    <c:set var="page" value="${page}"/>
                    <div class="pagination">
                        <c:forEach begin="${1}" end="${soTrang}" var="i">
                            <a class="${i==page?"active":""}" href="post?page=${i}"> ${i} </a>
                        </c:forEach>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-->
        <footer class="border-top">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <!--                        <ul class="list-inline text-center">
                                                    <li class="list-inline-item">
                                                        <a href="#!">
                                                            <span class="fa-stack fa-lg">
                                                                <i class="fas fa-circle fa-stack-2x"></i>
                                                                <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a href="#!">
                                                            <span class="fa-stack fa-lg">
                                                                <i class="fas fa-circle fa-stack-2x"></i>
                                                                <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a href="#!">
                                                            <span class="fa-stack fa-lg">
                                                                <i class="fas fa-circle fa-stack-2x"></i>
                                                                <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                                            </span>
                                                        </a>
                                                    </li>
                                                </ul>-->


                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="https://www.instagram.com/tung_duyyyy/" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://www.facebook.com/tungduy04082002" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://www.tiktok.com/@tungduy1212?lang=vi-VN" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-tiktok fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        
                        
                        <div class="small text-center text-muted fst-italic">Những bài viết trên được đánh giá qua trải nghiệm của <a href="about.jsp">Duy Tung</a></div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
