<%-- 
    Document   : DonHangKH
    Created on : May 18, 2022, 10:09:45 PM
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
        <jsp:useBean id="a" class="dao.DAO" scope="request"></jsp:useBean>
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
                                <h2>Lịch sử<b> mua hàng</b></h2>
                            </div>
                            <div class="col-sm-6">                               
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                
                                <th>Mã đơn</th>
                                <th>Ngày đặt </th>
                                <th>ngày giao</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ giao</th><!-- comment -->
                                <th>Khách hàng</th>
                                <th>Trạng thái</th>
                            </tr>

                        </thead>

                    <c:forEach items="${listA}" var="o">
                        <tbody>
                            <tr>
                                
                                <td>${o.madon}</td>
                                <td>${o.ngaydat}</td>
                                <td>${o.ngaygiao}</td>
                                <td>${o.dienthoai}</td>
                                <td>${o.diachigiao}</td>
                                <td>${o.maacc}</td>
                                <c:if test="${o.thanhtoan==true}">
                                <td>Đã thanh toán</td>
                                </c:if>
                                <c:if test="${o.thanhtoan==false}">
                                    <td style="color: red">Chưa thanh toán</td>
                                </c:if>                               
                                <td>
                                    <!--<a href="LoadBill?pmadon=${o.madon}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>-->
                                    <a  href="InformationDonHangKH?pmadon=${o.madon}" class="btn-close" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Information">info</i></a>
                                </td>
                            </tr>
                        </tbody>
                    </c:forEach>

                </table>
            </div>
            <a class="navbar-brand" href="HomeControll" type="button" class="btn btn-success" >Thoát</a>
        </div>






        <!-- Delete Modal HTML -->


        <script src="js/manager.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>