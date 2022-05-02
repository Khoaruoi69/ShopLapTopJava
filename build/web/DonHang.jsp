<%-- 
    Document   : DonHang
    Created on : May 1, 2022, 8:32:31 PM
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

                
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Tên Laptop</label>
                                <input value="${detail.tenlaptop}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình</label>
                                <input value="${detail.hinh}" name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
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
                                <input value="${detail.hardwave}" name="hardware" type="text" class="form-control" required>
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
                                <textarea value="${detail.mota}" name="mota" class="form-control" required></textarea>
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
                                        <option value="${o.mahang}">${o.tenhang}</otption>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
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
