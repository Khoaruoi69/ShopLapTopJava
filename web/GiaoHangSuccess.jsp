<%-- 
    Document   : GiaoHangSuccess
    Created on : May 18, 2022, 9:01:55 PM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <jsp:useBean id="a" class="dao.DAO" scope="request"></jsp:useBean>
            <style>
                .currSign:after {
                    content: ' VNÐ';
                }
                
                .text {
                    color: black;
                    position: absolute;
                    buttom: 5px
                   
                }
            </style>

        </head>

        <body>




        <jsp:include page="Menu.jsp"></jsp:include>
        <jsp:include page="Banner.jsp"></jsp:include>



            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="HomeControll">Laptop</a></li>
                                <li class="breadcrumb-item"><a href="#">Hãng</a></li>
                                <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row">
                    <h1 class="text">Cảm ơn bạn đã mua hàng tại shop chúng tôi.<br>

                                     Chúng tôi sẽ giao hàng cho bạn sớm nhất có thể.</h1>
                    <img src="https://thegioitaisan.com/wp-content/uploads/giao-hang.jpg" alt="" style="width:90%; padding-left: 200px"> 

                </div>



            </div>
        <jsp:include page="footer.jsp"></jsp:include>

        <script>
            let x = document.querySelectorAll(".myDIV");
            for (let i = 0, len = x.length; i < len; i++) {
                let num = Number(x[i].innerHTML)
                        .toLocaleString('en');
                x[i].innerHTML = num;
                x[i].classList.add("currSign");
            }
        </script>

    </body>


</html>