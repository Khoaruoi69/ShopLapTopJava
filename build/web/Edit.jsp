<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
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
            .currSign:after {
            content: ' VNÐ';
        }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditControll" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="modal-body">
                                    <div class="form-group">
                                <label>Mã Laptop</label>
                                <input value="${detail.malaptop}" name="malaptop" type="text" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Tên Laptop</label>
                                <input value="${detail.tenlaptop}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình</label>
                                <input value="${detail.hinh}" name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group myDIV">
                                <label>Giá bán</label>
                                <input value="${detail.giaban}"name="price" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>CPU</label>
                                <input value="${detail.cpu}" name="CPU" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>GPU</label>
                                <input value="${detail.gpu}" name="GPU" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>RAM</label>
                                <input value="${detail.ram}" name="RAM" type="text" class="form-control" required>
                             </div>
                            <div class="form-group">
                                <label>Hardware</label>
                                <input value="${detail.hardware}" name="hardware" type="text" class="form-control" required>
                             </div><!-- comment -->
                              <div class="form-group">
                                <label>Pin</label>
                                <input value="${detail.pin}" name="pin" type="text" class="form-control" required>
                            </div>
                              <div class="form-group">
                                <label>Màn hình</label>
                                <input value="${detail.manghing}" name="manhinh" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea name="mota" class="form-control" required>${detail.mota}</textarea>
                            </div>
                           <div class="form-group">
                                <label>Trạng thái</label>
                                <input value="${detail.trangthai}" name="trangthai" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>Số lượng tồn</label>
                                <input value="${detail.soluong}" name="slt" type="text" class="form-control" required>
                            </div>
                             
                            <div class="form-group">
                                <label>Hãng Laptop</label>
                                <select name="hang" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${ListH}" var="o">
                                        <option  value="${o.mahang}">${o.tenhang}</otption>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
                            
                            
                            <!-- format tien -->
        <script>
        let x = document.querySelectorAll(".myDIV");
        for (let i = 0, len = x.length; i < len; i++) {
            let num = Number(x[i].innerHTML)
                      .toLocaleString('en');
            x[i].innerHTML = num;
            x[i].classList.add("currSign");
        }
    </script>

        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>