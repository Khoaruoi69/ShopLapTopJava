<%-- 
    Document   : InformationDonHang
    Created on : May 6, 2022, 9:29:13 PM
    Author     : Khoa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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


        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Information <b>Bill</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            
            
            <div id="InformationDonHang">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="InformationDonHang" method="#">
                            <div class="modal-header">						
                                <h4 class="modal-title">Thông tin đơn hàng</h4>
                                <!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
                                <a class="close" href="LayDonHangControll" type="button" class="btn btn-success" aria-hidden="true" >x</a>
                            </div>
                            <div class="modal-body">					
                                <div class="modal-body">
                                    <div class="form-group d-none">
                                        <label>Mã đơn</label>
                                        <input value="${list.madon}" name="madon" type="text" class="form-control" readonly required>
                                    </div>
                                    
                                        <div class="form-group d-none">
                                            <label>Mã Laptop</label>
                                            <input value="${list.malaptop}" name="malaptop" type="text" class="form-control" readonly required>
                                        </div>
                                        <div class="form-group d-none">
                                            <label>Số lượng</label>
                                            <input value="${list.soluong}"name="soluong" type="text" class="form-control" readonly required>
                                        </div>
                                        <div class="form-group d-none">
                                            <label>Đơn giá</label>
                                            <input value="${list.dongia}" name="giaban" type="text" class="form-control" readonly required>
                                        </div>
                                    
                                </div>

                            </div>
                            <div class="modal-footer">
                                        <a class="navbar-brand" href="LayDonHangControll" type="button" class="btn btn-success" >Exit</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <!-- format tien -->


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>