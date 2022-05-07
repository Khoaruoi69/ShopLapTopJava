<%-- 
    Document   : EditAccount
    Created on : May 7, 2022, 3:20:07 PM
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
                            <h2>Edit <b>Account</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editDonHang">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditAccountQT" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Account</h4>
                                <a class="close" href="ManagerAccount" type="button" class="btn btn-success" aria-hidden="true" >x</a>
                            </div>
                            <div class="modal-body">					
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>Mã account</label>
                                        <input value="${listA.maacc}" name="maacc" type="text" class="form-control" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>Họ tên</label>
                                        <input value="${listA.hoten}" name="hoten" type="text" class="form-control"  readonly required>
                                        </div>
                                    <div class="form-group">                                  
                                        <label>Mật khẩu </label>
                                        <input value="${listA.matkhau}" name="matkhau" type="text" class="form-control" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input value="${listA.email}" name="email" type="text" class="form-control"  readonly required>
                                    </div>
                                    <div class="form-group ">
                                        <label>Điện thoại</label>
                                        <input value="${listA.dienthoai}"name="dienthoai" type="text" class="form-control" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>Admin</label>
                                        <input value="${listA.admin}" name="admin" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Sell</label>
                                        <input value="${listA.sell}" name="sell" type="text" class="form-control" required>
                                    </div>



                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                                <!--<a herf="LayDonHangControll" type="submit" class="btn btn-success">Edit</a>-->
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
