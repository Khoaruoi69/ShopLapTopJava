<%-- 
    Document   : ManagerAccount
    Created on : May 7, 2022, 12:46:13 PM
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
                            <h2>Manage <b>Account</b></h2>
                        </div>
                        <div class="col-sm-6">

                            <!--<a href="LayDonHangDTT" type="button" class="btn btn-primary" ><i class="material-icons">feed</i><span>Đơn hàng đã thanh toán</span></a>-->
                            <!--<a href="LayDonHangCTT" type="button" class="btn btn-primary" ><i class="material-icons">feed</i><span>Đơn hàng chưa thanh toán</span></a>-->
                            <!--<a href="LayDonHangControll" type="button" class="btn btn-primary" ><i class="material-icons">feed</i><span>Tất cả đơn hàng</span></a>-->
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
                            <th>Mã account</th>
                            <th>Họ tên</th>
                            <th>Mật khẩu</th>
                            <th>Email</th>
                            <th>Điện thoại</th><!-- comment -->
                            <th>Admin</th>
                            <th>Sell</th>


                        </tr>

                    </thead>

                    <c:forEach items="${listA}" var="o">
                        <tbody>
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.maacc}</td>
                                <td>${o.hoten}</td>
                                <td>${o.matkhau}</td>
                                <td>${o.email}</td>
                                <td>${o.dienthoai}</td>
                                <td>${o.admin}</td>
                                <td>${o.sell}</td>
                                <td>
                                    <a href="LoadAccount?maacc=${o.maacc}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <!--<a  href="InformationDonHang?pmadon=${o.maacc}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Information">info</i></a>-->
                                </td>
                            </tr>
                        </tbody>
                    </c:forEach>

                </table>


                <div class="clearfix">
                    
                    <ul class="pagination">
                        
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
        
        




        <!-- Delete Modal HTML -->
        <a class="navbar-brand" href="HomeControll" type="button" class="btn btn-success" >Exit</a>

        <script src="js/manager.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>