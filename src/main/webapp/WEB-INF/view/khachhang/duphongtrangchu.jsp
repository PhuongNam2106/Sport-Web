
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
 	<jsp:include page="/WEB-INF/view/khachhang/layout/css.jsp"></jsp:include>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>Phương Nam Sport</title>
   
   
   
</head>
<body>
<!-- Common -->
	<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>;

    <div class="container-fluid">
       <!-- Header -->   
        <%--  <jsp:include page="/WEB-INF/view/khachhang/layout/header.jsp"></jsp:include> --%>
         <div class="row header">
          <div class="row head  ">
            <div class="col-12 nav-item dropdown nav-custom">
              <%-- <c:if test="${!isLogined}"> 
            
            
                <a style="padding-left: 0px;" class=" col-2 nav-link dropdown-toggle nav-custom" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="far fa-user"></i>  Tài khoản
                </a>
                <div class="dropdown-menu dropdown-menu-custom" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item dropdown-item-custom" href="${base }/register">Đăng ký</a>
                  <div class="dropdown-divider margin: 3px 0;"></div>
                  <a class="dropdown-item dropdown-item-custom" href="${base }/login">Đăng nhập</a>
                   <div class="dropdown-divider margin: 3px 0;"></div>
                  <a class="dropdown-item dropdown-item-custom" href="${base }/login">demo</a>
                  

               	 </div>
                </c:if> --%>
               
              <%--  <c:if test="${isLogined }"> --%>
               	<a style="padding-left: 0px;" class="  col-2 nav-link dropdown-toggle nav-custom" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="far fa-user"></i>${userLogined.email }                
                </a>
                 <div class="dropdown-menu dropdown-menu-custom" aria-labelledby="navbarDropdown">
	                  <a class="dropdown-item dropdown-item-custom" href="#">Giỏ hàng</a>
	                  <div class="dropdown-divider margin: 3px 0;"></div>
	                  <a class="dropdown-item dropdown-item-custom" href="#">Thông tin của bạn </a>
	                  <div class="dropdown-divider margin: 3px 0;"></div>
	                  <a class="dropdown-item dropdown-item-custom" href="#">Tra cứu đơn hàng </a>
	                  <div class="dropdown-divider margin: 3px 0;"></div>
	                  <a class="dropdown-item dropdown-item-custom" href="${base }/logout">Đăng xuất </a>
               	 </div>
             <%--   </c:if> --%>
            </div>
        </div>
            <div class="row col-12 logo-search-cart">
                <div style="justify-content: end !important;" class="col-3 logo">
                    <img width="20%" src="./image/Free_Sample_By_Wix__1_-removebg-preview.png" alt="">
                </div>
                <div class="col-6" >
                    <div class="input-group mb-3 mt-3">
                        <input type="text" class="form-control" placeholder="Tìm kiếm" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                          <button class="btn btn-outline-secondary" type="button"><i class="fas fa-search"></i></button>
                        </div>
                      </div>
                </div>
                <div class="col-3 py-3" >
                	<!-- <button style="background-color: #3B3B3B" type="submit"> -->
                	   <a style="color: black" href="${base }/cart/view">
                	  	 <i style="font-size: 24px !important;" class="fas fa-shopping-cart"></i> <span id="iconShowTotalItemsInCart" style="color: white">${totalItems}</span>
                	   </a> 
                	<!-- </button> -->
                </div>
            </div>
	
      <!-- Navigation -->
      <jsp:include page="/WEB-INF/view/khachhang/layout/navigation.jsp"></jsp:include>
     
       </div>
 		<c:if test="${not empty message}">
	        <div style="margin-top: 150px;margin-bottom: -145px;" class="alert alert-primary" role="alert">
	        	<c:out value="${message}" />
	        </div>
        </c:if>
                    <!--slide-->
        <div style="margin-top: 154px;" class="row slide">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="d-block w-100" src="${pageContext.servletContext.contextPath}/img/image/slideshow_2.jpg" alt="First slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="${pageContext.servletContext.contextPath}/img/image/slideshow_3.jpg" alt="Second slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="${pageContext.servletContext.contextPath}/img/image/slideshow_4.jpg" alt="Third slide">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
        </div>
   
    </div>
    <div style="margin: 20px auto; text-align: center; font-size:30px; font-weight:700; color: #555555;">
        SẢN PHẨM HOT
    </div>
<!--slide product-->
    <div class="container slide-product">
        <div class="row">
            <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
                <div class="MultiCarousel-inner">
                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important; background-color:#333333!important;" class="card ">
                                <span class="ico-sale">-22%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/nike ball.jpeg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">NIKE FOOTBALL FLIGHT PREMIER LEAGUE - WHITE/HYPER CRIMSON/BLACK</a>
                                <br>
                                <span class="card-text old-price">4,495,000₫</span>
                                <span class="card-text new-price"> 3,500,000₫</span>
                                </div>
                            </div>    
                        </div>
                    </div>

                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-22%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/ADIDAS X SPEEDFLOW.jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">ADIDAS X SPEEDFLOW .1 TF METEORITE - RED/CORE BLACK/SOLAR RED/PRO ULTRA</a>
                                <br>
                                <span class="card-text old-price">3,600,000₫</span>
                                <span class="card-text new-price"> 2,750,000₫</span>
                                </div>
                            </div>    
                        </div>
                    </div>

                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-24%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/ADIDAS COPA SENSE .3 FG .jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">ADIDAS COPA SENSE .3 FG METEORITE - RED/FOOTWEAR WHITE/SOLAR RED</a>
                                <br>
                                <span class="card-text old-price">2,695,000₫</span>
                                <span class="card-text new-price"> 1,800,000₫</span>
                                </div>
                            </div>     
                        </div>
                    </div>

                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-1%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/ADIDAS COPA SENSE .3 TF.jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">ADIDAS COPA SENSE .3 TF METEORITE - RED/FOOTWEAR WHITE/SOLAR RED/PRO  </a>
                                <br>
                                <span class="card-text old-price">1,900,000₫</span>
                                <span class="card-text new-price"> 1,890,000₫</span>
                                </div>
                            </div>           
                        </div>
                    </div>

                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-21%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/nike_tiembi_shoe.jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">NIKE TIEMPO REACT LEGEND 9 CLUB TF - WHITE/DARK SMOKE GREY/BLACK/YELLOW</a>
                                <br>
                                <span class="card-text old-price">2,895,000₫</span>
                                <span class="card-text new-price"> 1,940,000₫</span>
                                </div>
                            </div>    
                        </div>
                    </div>

                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-1%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/ADIDAS X SPEEDFLOW .png" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">ADIDAS X SPEEDFLOW .3 TF ESCAPELIGHT - CORE BLACK/SONIC INK/SOLAR YELLOW</a>
                                <br>
                                <span class="card-text old-price">1,900,000₫</span>
                                <span class="card-text new-price"> 1,890,000₫</span>
                                </div>
                            </div>   
                        </div>
                    </div>
                    <div class="item">
                        <div style="padding: 0 0; " class="pad15 ">
                            <div style="margin-bottom: 10px !important;height: 312px;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-16%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/boc ong dong ADIDAS X LESTO SHIN GUARDS - BLACK.jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">BỌC ỐNG ĐỒNG ADIDAS X LESTO SHIN GUARDS - BLACK</a>
                                <br>
                                <span class="card-text old-price"></span>
                                <span class="card-text new-price"> 320,000₫</span>
                                
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;height: 312px;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-29%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/boc ong.jpeg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">BỌC ỐNG ĐỒNG ADIDAS TIRO CLUB SHIN GUARDS - BLACK/WHITE</a>
                                <br>
                                <span class="card-text old-price">380,000₫</span>
                                <span class="card-text new-price"> 270,000₫</span>
                                </div>
                            </div>       
                        </div>
                    </div>
                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;height: 312px;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-0%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/quanaokamitovang.jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">BỘ QUẦN ÁO BÓNG ĐÁ KAMITO KMSH210250 TRẮNG VÀNG</a>
                                <br>
                                <span class="card-text old-price"></span>
                                <span class="card-text new-price"> 199,000₫</span>
                                </div>
                            </div>  
                        </div>
                    </div>
                    <div class="item">
                        <div style="padding: 0 0;" class="pad15 ">
                            <div style="margin-bottom: 10px !important;height: 312px;background-color:#333333!important;" class="card">
                                <span class="ico-sale">-0%</span>
                                <img class="card-img-top link" src="${pageContext.servletContext.contextPath}/img/product img/quanaokamitodo.jpg" alt="Card image cap">
                                
                                <div style="padding: 0 1px !important;" class="card-body">
                                <a style="color: orange;" class="card-title product-title" href="">BỘ QUẦN ÁO BÓNG ĐÁ KAMITO KMSH210510 ĐỎ Trắng Sọc</a>
                                <br>
                                <span class="card-text old-price"></span>
                                <span class="card-text new-price"> 199,000₫</span>
                                </div>
                            </div>   
                        </div>
                    </div>
                    
                </div>
                <button style="background-color: white; color: black" class="btn btn-primary leftLst"><</button>
                <button style="background-color: white; color: black" class="btn btn-primary rightLst">></button>
            </div>
        </div>
    

        
   
    </div>
    <div style="margin: 20px auto; text-align: center; font-size:30px; font-weight:700; color: #555555;">
        BẠN ĐANG TÌM?
    </div>
    <div style=" max-width: 1300px;" class="container find">
        <div class="row">
            <div class="col-3">
                <div class="card" style="width: 18rem; border: none; background-color: #333333;">
                   <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/kinh of shoe/index_banner_1.jpg" alt="Card image cap"></figure>
                    <div class="card-body p-1 color-card-body">
                      <p style="font-weight: 550; color: orange;"  class="card-text">Giày cỏ nhân tạo(Đế TF)</p>
                      <p class="info-category">Dành cho mặt sân cỏ nhân tạo từ 5-7 người</p>
                    </div>
                  </div>
            </div>
            <div class="col-3">
                <div class="card" style="width: 18rem; border: none;background-color: #333333;">
                  <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/kinh of shoe/giaycotunhien.jpg" alt="Card image cap"></figure>
                    <div class="card-body p-1 color-card-body">
                      <p style="font-weight: 550; color: orange;" class="card-text">Giày cỏ tự nhiên(Đế AG,FG,SG)</p>
                      <p class="info-category">Dành cho mặt sân có tự nhiên 11 người</p>
                    </div>
                  </div>
            </div>
            <div class="col-3">
                <div class="card" style="width: 18rem; border: none;background-color: #333333;">
                  <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/kinh of shoe/giayfutsal.jpg" alt="Card image cap"></figure>
                    <div class="card-body p-1 color-card-body">
                      <p style="font-weight: 550; color: orange;" class="card-text">Giày Futsal(Đế IC)</p>
                      <p class="info-category">Giành cho sân xi măng và sân Futsal</p>
                     
                    </div>
                  </div>
            </div>
            <div class="col-3">
                <div class="card" style="width: 18rem; border: none; background-color: #333333;">
                  <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/kinh of shoe/giaysale.jpg" alt="Card image cap"></figure>
                    <div class="card-body p-1 color-card-body">
                      <p style="font-weight: 550; color: orange;" class="card-text">Giày Sale-Off 50%-70%</p>
                       <p class="info-category">Đang sale lên đến 70%</p> 
                    </div>
                  </div>
            </div>
        </div>

        <!--type of product
        <div class="row mt-3 mb-3 type-of-product ">
          <div class="col-4 ">
            <div class="card" style="width: 423px; border: none;">
              <img style="height: 150px;" class="card-img-top" src="./type_of_product/kid-shoes.jpg" alt="Card image cap">
              <div style="height: 5px;" class="card-body card-body-custom">
                <a class="type-des" href="#">Giày bóng đá cho trẻ em <i style="color: green;" class="fas fa-angle-right"></i></a>
              </div>
            </div>
          </div>
        </div>-->

    </div>
    <!--type of product 1-->
    <div class="container type-of-product">
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/type_of_product/kid-shoes.jpg">
        <span>Giày bóng đá cho trẻ em</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/type_of_product/uniform.jpg">
        <span >Quần áo bóng đá</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/type_of_product/ball.jpg">
        <span>Bóng đá</span>
      </div>
      
    </div>
     <!--type of product 2-->
    <div class="container type-of-product">
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/type_of_product/protector.jpg">
        <span>Bọc ống đồng</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/type_of_product/socks.jpg">
        <span >Tất bóng đá</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/type_of_product/accessory.jpg">
        <span>Phụ kiện bóng đá</span>
      </div>
      
    </div>

    <!--BRAND-->

    <div style="margin: 20px auto; text-align: center; font-size:30px; font-weight:700; color: #555555;">
      THƯƠNG HIỆU
    </div>
    <!--BRAND 1-->
    <div style="margin-bottom: 2px !important;" class="container type-of-product ">
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/brand_img/brand_banner_1.jpg">
        <span>Giày Nike</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/brand_img/brand_banner_2.jpg">
        <span >Giày Adidas</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/brand_img/brand_banner_3.jpg">
        <span>Giày Puma</span>
      </div>
      
    </div>
     <!--BRAND 2-->
    <div class="container type-of-product mb">
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/brand_img/brand_banner_4.jpg">
        <span>Giày Mizuno</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/brand_img/brand_banner_5.jpg">
        <span >Giày Asics</span>
      </div>
      <div class=" box">
        <img height="150px !important" src="${pageContext.servletContext.contextPath}/img/brand_img/brand_banner_6.jpg">
        <span>Giày Kamito</span>
      </div>
      
    </div>
    <!--END-BRAND-->

    <!--Position-->
    <div style="margin: 20px auto; text-align: center; font-size:30px; font-weight:700; color: #555555;">
      CHỌN GIÀY THEO VỊ TRÍ
  </div>
    <div style=" max-width: 1300px;" class="container find">
      <div class="row">
          <div class="col-3">
              <div class="card" style="width: 18rem; border: none; background-color: #333333;">
                 <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/position_img/position_banner_1.jpg" alt="Card image cap"></figure>
                  <div class="card-body p-1 color-card-body">
                    <p style="font-weight: 550; color: orange;"  class="card-text">HẬU VỆ</p>
                    <p class="info-category">Phòng ngự chắc chắn</p>
                  </div>
                </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem; border: none;background-color: #333333;">
                <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/position_img/position_banner_2.jpg" alt="Card image cap"></figure>
                  <div class="card-body p-1 color-card-body">
                    <p style="font-weight: 550; color: orange;" class="card-text">TIỀN VỆ</p>
                    <p class="info-category">Kiểm soát, chuyền bóng</p>
                  </div>
                </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem; border: none;background-color: #333333;">
                <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/position_img/position_banner_3.jpg" alt="Card image cap"></figure>
                  <div class="card-body p-1 color-card-body">
                    <p style="font-weight: 550; color: orange;" class="card-text">TIỀN VỆ CÁNH</p>
                    <p class="info-category">Tốc độ đột phá</p>
                   
                  </div>
                </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem; border: none; background-color: #333333;">
                <figure> <img class="card-img-top " id="zoomIn" src="${pageContext.servletContext.contextPath}/img/position_img/position_banner_4.jpg" alt="Card image cap"></figure>
                  <div class="card-body p-1 color-card-body">
                    <p style="font-weight: 550; color: orange;" class="card-text">TIỀN ĐẠO</p>
                     <p class="info-category">Dứt điểm chính xác</p> 
                  </div>
                </div>
          </div>
      </div>

    <!--END-Position-->
    <!-- Footer -->
    <footer style="background-color: #333333 !important ;" class=" text-center text-lg-start bg-light text-muted">
        <!-- Section: Social media -->
        <section
          class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
        >
          <!-- Left -->
          <div class="me-5 d-none d-lg-block">
            <span>Get connected with us on social networks:</span>
          </div>
          <!-- Left -->
      
          <!-- Right -->
          <div>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-google"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-instagram"></i>
            </a>
            
          </div>
          <!-- Right -->
        </section>
        <!-- Section: Social media -->
      
        <!-- Section: Links  -->
        <section class="">
          <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
              <!-- Grid column -->
              <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                <!-- Content -->
                <h6 class="text-uppercase fw-bold mb-4">
                    
                  <i class="fas fa-gem me-3"></i>Phương Nam Sport 
                </h6>
                <p>
                  Rất hân hạnh được đem đến cho quý khách những sản phẩm tốt nhất
                </p>
              </div>
              <!-- Grid column -->
      
              <!-- Grid column -->
              <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4">
                  Products
                </h6>
                <p>
                  <a href="#!" class="text-reset">Giày bóng đá</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Quần áo bóng đá</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Phụ kiện bóng đá</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Bóng đá</a>
                </p>
              </div>
              <!-- Grid column -->
      
              <!-- Grid column -->
              <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4">
                  Useful links
                </h6>
                <p>
                  <a href="#!" class="text-reset">Pricing</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Settings</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Orders</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Help</a>
                </p>
              </div>
              <!-- Grid column -->
      
              <!-- Grid column -->
              <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4">
                  Contact
                </h6>
                <p><i class="fas fa-home me-3"></i> tòa HH2B Linh Đàm,quận Hoàng Mai, Hà Nội</p>
                <p>
                    <i class="fas fa-envelope me-3"></i>
                    nguyennam210601@gmail.com
                    <p><i class="fas fa-phone me-3"></i>0358307767</p>
                </p>
                
              </div>
              <!-- Grid column -->
            </div>
            <!-- Grid row -->
          </div>
        </section>
        <!-- Section: Links  -->
      
        <!-- Copyright -->
        <!-- Copyright -->
        </footer>
  <!-- Footer -->
</div>
    
    
  
</body>
<jsp:include page="/WEB-INF/view/khachhang/layout/js.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

</html>