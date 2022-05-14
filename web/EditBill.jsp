<%-- 
    Document   : EditBill
    Created on : May 6, 2022, 10:44:52 PM
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
                            <h2>Chỉnh sửa<b> hóa đơn</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editDonHang">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditDonHang" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Chỉnh sửa hóa đơn</h4>
                                <a class="close" href="LayDonHangControll" type="button" class="btn btn-success" aria-hidden="true" >x</a>
                            </div>
                            <div class="modal-body">					
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>Mã đơn</label>
                                        <input value="${listPP.madon}" name="madon" type="text" class="form-control" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>Mã khách hàng</label>
                                        <input value="${listPP.maacc}" name="maacc" type="text" class="form-control" readonly required>
                                    </div>

                                    <div class="form-group">                                  
                                        <label>Ngày đặt </label>
                                        <input value="${listPP.ngaydat}" name="ngaydat" type="text" class="form-control" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>Ngày giao</label>
                                        <input value="${listPP.ngaygiao}" name="ngaygiao" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group ">
                                        <label>Số điện thoại</label>
                                        <input value="${listPP.dienthoai}"name="dienthoai" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Địa chỉ giao</label>
                                        <input value="${listPP.diachigiao}" name="diachigiao" type="text" class="form-control" required>
                                    </div>
                                    <!--                                    <div class="form-group">
                                                                            <label>Trạng thái</label>
                                                                            <input value="${listPP.thanhtoan}" name="trangthai" type="text" class="form-control" required>
                                                                        </div>-->
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                        <c:if test="${listPP.thanhtoan==true}">
                                            <div class="form-check">
                                                <input class="form-check-input" value="true"type="radio" name="trangthai" id="flexRadioDefault1" checked>
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    Đã thanh toán
                                                </label>
                                            </div>
                                            <div class="form-check">
                                            <input class="form-check-input"  value="false" type="radio" name="trangthai" id="flexRadioDefault2">
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                Chưa thanh toán
                                            </label>
                                        </div>
                                        </c:if>
                                        <c:if test="${listPP.thanhtoan==false}">
                                        <div class="form-check">
                                                <input class="form-check-input" value="true" type="radio" name="trangthai" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    Đã thanh toán
                                                </label>
                                            </div>
                                        <div class="form-check">
                                            <input class="form-check-input" value="false" type="radio" name="trangthai" id="flexRadioDefault2" checked>
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                Chưa thanh toán
                                            </label>
                                        </div>
                                        </c:if>
                                    </div>


                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Chỉnh sửa">
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
