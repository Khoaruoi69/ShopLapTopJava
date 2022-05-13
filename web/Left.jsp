<%-- 
    Document   : Left
    Created on : Apr 18, 2022, 8:31:03 PM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="col-sm-3">
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Hãng Laptop</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${ListH}" var="c">
                                <li class="list-group-item text-white ${tag==c.mahang?"active":""}"><a href="HangControll?mahang=${c.mahang}">${c.tenhang}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase"><i class=" fa fa-star"></i> Sản phẩm HOT</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${p.hinh}" />
                            <h5 class="card-title show_txt"><a href="DetailControll?pmalaptop=${p.malaptop}" title="View Product">${p.tenlaptop}</a></h5>
                            <p class="card-text">${p.mota}</p>
                            <p class="btn-danger bloc_left_price myDIV">${p.giaban}</p>
                            <!--bloc_left_price--> 
                        </div>
                    </div>
                </div>
