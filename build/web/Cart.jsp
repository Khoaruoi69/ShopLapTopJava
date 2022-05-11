<%-- 
    Document   : Cart
    Created on : Apr 20, 2022, 3:14:45 PM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <style>
            .currSign:after {
                content: ' VNÐ';
            }
        </style>

    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="shopping-cart">
                <div class="px-4 px-lg-0">

                    <div class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                    <!-- Shopping cart table -->
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Đơn Giá</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Số Lượng</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Xóa</div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.hinh}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.tenlaptop}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle myDIV">${o.giaban}</td>
                                                    <td class="align-middle">
                                                        <a href="sub?id=${o.malaptop}"><button class="btnSub">-</button></a><strong>${o.amount}</strong>

                                                        <a href="cart?id=${o.malaptop}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle"><a href="remove?id=${o.malaptop}" class="text-dark">
                                                            <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                <div class="p-4">
                                    <div class="input-group mb-4 border rounded-pill p-2">
                                        <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                        <div class="input-group-append border-0">
                                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><h5 class="font-weight-bold myDIV">${total} </h5></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><h5 class="font-weight-bold myDIV">${vat} </h5></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold myDIV">${sum} </h5>
                                        </li>
                                    </ul><a href="#addEmployeeModal"  class="btn btn-dark rounded-pill py-2 btn-block" data-toggle="modal"> <span>Mua hàng</span></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <!<!-- Don dat hang jsp -->
        <!-- Add Modal HTML -->


        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MuahangControll" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thông tin đơn hàng</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Người đặt</label>
                                <input value=" ${sessionScope.acc.hoten}" name="name" type="text" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Ngày đặt</label>
                                <div name="ngaydat" id="current-time" class="form-control" readonly required></div>
                                <!--<input name="ngaydat" type="date" class="form-control" required>-->
                            </div>
                            <div class="form-group">
                                <label>Ngày giao</label>
                                <input name="ngaygiao" type="date" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại </label>
                                <input name="sodienthoai" type="text" class="form-control" required>
                            </div>
                            <div class="form-group ">
                                <label>Địa chỉ giao</label>
                                <input name="diachigiao" type="text" class="form-control" required>
                            </div>
                            <div class="form-group d-none">
                                <label>xxx</label>
                                <input value="${sessionScope.acc.maacc}" name="maacc" type="text" class="form-control" readonly required>
                            </div>


                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">

                            <input type="submit" class="btn btn-success" value="Mua hàng">
                        </div>
                    </form>
                </div>
            </div>
        </div>
                            
                            
                            
                            
                      
          
       
            

        <script>
            let x = document.querySelectorAll(".myDIV");
            for (let i = 0, len = x.length; i < len; i++) {
                let num = Number(x[i].innerHTML)
                        .toLocaleString('en');
                x[i].innerHTML = num;
                x[i].classList.add("currSign");
            }
        </script>
        <script>
            var curDate = new Date();

            // Ngày hiện tại
            var curDay = curDate.getDate();

            // Tháng hiện tại
            var curMonth = curDate.getMonth() + 1;

            // Năm hiện tại
            var curYear = curDate.getFullYear();

            // Gán vào thẻ HTML
            document.getElementById('current-time').innerHTML = curDay + "/" + curMonth + "/" + curYear;
        </script>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
</html>