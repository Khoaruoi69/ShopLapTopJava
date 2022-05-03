<%-- 
    Document   : ThemSanPham
    Created on : May 3, 2022, 8:34:18 PM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .container{
                width: 1245px;
            }

        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Sản phẩm <b>bạn mua</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="HomeControll"  class="btn btn-success" data-toggle="modal"><span>Xác nhận mua hàng</span></a>

                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>Mã</th>
                            <th>Tên </th>
                            <th>Hình</th>
                            <th>Giá bán</th>
                            <th>CPU</th>
                            <th>GPU</th><!-- comment -->
                            <th>RAM</th>
                            <th>Hardware</th>
                            <th>Pin</th>
                            <th>Màn hình</th>
                            <th>số lượng</th>


                        </tr>

                    </thead>
                    <div name="madon" value="${donHang.madon}"></div>
                    <!--<div name="acc">${sessionScope.acc.maacc}</div>-->
                    <c:forEach items="${list}" var="o">
                        <tbody>
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td name="malaptop" value="${o.malaptop}">${o.malaptop}</td>
                                <td>${o.tenlaptop}</td>
                                <td>
                                    <img src="${o.hinh}">
                                </td>
                                <td name="giaban">${o.giaban}</td>
                                <td>${o.cpu}</td>
                                <td>${o.gpu}</td>
                                <td>${o.ram}</td>
                                <td>${o.hardware}</td>
                                <td>${o.pin}</td>
                                <td>${o.manghing}</td>
                                
                                <td name="soluong">${o.amount}</td>

                                <!--<td>-->
                                    <!--<a href="LoadControll?pmalaptop=${o.malaptop}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>-->
                                    <!--<a href="DeleteControll?pmalaptop=${o.malaptop}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>-->
                                <!--</td>-->
                            </tr>
                        </tbody>
                    </c:forEach>

                </table>

            </div>
        </div>





        <!-- Delete Modal HTML -->
        <a class="navbar-brand" href="HomeControll" type="button" class="btn btn-success" >Exit</a>
        <script src="js/manager.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>
