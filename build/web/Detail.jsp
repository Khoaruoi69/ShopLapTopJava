<%-- 
    Document   : Detail
    Created on : Apr 18, 2022, 6:26:40 PM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
            .row{
                padding-top: 50px;
            }



            .currSign:after {
                content: ' VNÐ';
            }
            .img{
                width: 900px;
                height: 320px;
            }


        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>

            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>
                    <div class="col-sm-9">
                        <div class="container">
                            <div class="card">
                                <div class="row">
                                    <aside class="col-sm-5 border-right">
                                        <article class="gallery-wrap"> 
                                            <div class="img-big-wrap">
                                                <div> <a href="#"><img src="${detail.hinh}"></a></div>

                                        </div> <!-- slider-product.// -->

                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.tenlaptop}</h3>
                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency">Giá bán: </span><span class="num myDIV">${detail.giaban}</span>
                                            </span> 

                                            <!--<span>/per kg</span>--> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Mô tả sản phẩm: </dt>

                                            <dd><p>

                                            <dt>Ram: ${detail.ram},
                                                CPU: ${detail.cpu}, 
                                                GPU: ${detail.gpu}, 
                                                Hardware: ${detail.hardware}, 
                                                Pin: ${detail.pin}, 
                                                Màn hình: ${detail.manghing}.
                                            </dt></br> 

                                            ${detail.mota} </p></dd>
                                        </dl>


                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    <dt>Quantity: </dt>
                                                    <dd>
                                                        <select class="form-control form-control-sm" style="width:70px;">
                                                            <option> 1 </option>
                                                            <option> 2 </option>
                                                            <option> 3 </option>
                                                        </select>
                                                    </dd>
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div> <!-- row.// -->
                                        <hr>
                                        <a href="cart?id=${detail.malaptop}" class="btn btn-lg btn-primary text-uppercase"> Mua hàng </a>
                                        <!--<a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>-->
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                                
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->

                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <script>
            let x = document.querySelectorAll(".myDIV");
            for (let i = 0, len = x.length; i < len; i++) {
                let num = Number(x[i].innerHTML)
                        .toLocaleString('en');
                x[i].innerHTML = num;
                x[i].classList.add("currSign");
            }
        </script>
    </body>
</html>
