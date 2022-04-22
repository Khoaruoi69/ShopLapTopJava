<%-- 
    Document   : Menu
    Created on : Apr 18, 2022, 8:24:07 PM
    Author     : Khoa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top" style="background-color: #D70018!important">
            <div class="container">
                <i style="color: white"class="fa fa-home fa-3x" aria-hidden="true"></i>
                <a class="navbar-brand" href="HomeControll" > LAPTOP</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div style="font: 14px sans-serif; color: #ffffff" class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="nav navbar-nav navbar-right">
                        
                       <c:if test="${sessionScope.acc.admin== true}">
                        <li class="nav-item">
                            <a style="color: rgb(255 255 255)" class="nav-link" href="#">Manager Bill</a>
                           
                        </li>
                        </c:if>
                        
                        <c:if test="${sessionScope.acc.admin== true}">
                        <li class="nav-item">
                            <a style="color: rgb(255 255 255)" class="nav-link" href="#">Manager Account</a>
                           
                        </li>
                        </c:if>
                        
                        <c:if test="${sessionScope.acc.sell== true}">
                        <li class="nav-item">
                            <a style="color: rgb(255 255 255)" class="nav-link" href="ManagerControll">Manager Product</a>
                        </li>
                        </c:if>
                        
                        <form action="SearchControll" method="post" class="form-inline my-2 my-lg-0">
                        <div  class="input-group">
                            
                            <input value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Bạn cần tìm gì ?">
                            
                        </div>
                            <a class="btn btn-light btn-sm ml-3" href="show">
                            <i class="fa fa-shopping-cart"  aria-hidden="true" >  Giỏ hàng</i>
                            <span class="badge badge-light">3</span>
                        </a>
                     
                    </form>
                        
                        
                        <!-- Dung session hien login logout  -->
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                
                                <a style="color: rgb(255 255 255)" class="nav-link fa fa-user" href="#"> Hello ${sessionScope.acc.hoten}</a>
                            </li>
                        <li class="nav-item">
                            <a style="color: rgb(255 255 255)" class="nav-link fa fa-sign-out " href="LogoutControll"> Đăng xuất</a>
                        </li>
                        </c:if>
                        
                        <c:if test="${sessionScope.acc == null}">

                        <li class="nav-item">
                            
                            <a style="color: rgb(255 255 255)" class="nav-link fa fa-sign-in" href="Login.jsp"> Đăng nhập</a>
                        </li>
                        </c:if>
                       
                       
                    </ul>
                   
           
                            
                </div>
            </div>
        </nav>
        
                            
                            
                           
        <!--end of menu-->
