<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL import -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import taglib SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
 	<jsp:include page="/WEB-INF/view/khachhang/layout/css.jsp"></jsp:include>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="${base}/css/subscribe.css">
    <title>Phương Nam Sport</title>
   
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<!-- Common -->
	<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>;
<div>
    <div class="container-fluid">
       
         <!-- Header -->
         <jsp:include page="/WEB-INF/view/khachhang/layout/header.jsp"></jsp:include>

      <!-- Navigation -->
      <jsp:include page="/WEB-INF/view/khachhang/layout/navigation.jsp"></jsp:include>
        </div>
      <!--CONTACT-->
         <p class="subscribe">Subscribe</p>
    <div class="container">
        <c:if test="${not empty TB }">
        <div class="alert alert-primary" role="alert">
        	${TB }
        </div>
        </c:if>
        <!-- Dạng 1: Mẫu đơn giản -->
        <%-- <form action="${base }/contact" method="post" class="input-inf">
            <input class="info" type="text" name="name" placeholder="Full Name" required> <br>
            <input class="info" type="email" name="email" placeholder="E-mail" required> <br>
            <button class="contact-button" type="submit" >Subscribe</button>
        </form> --%>
        
        <!-- Dạng 2: Sử dụng spring form -->
        <%-- <sf:form modelAttribute="contactModel"  action="${base}/contact"  method="post"  class="input-inf">
            <sf:input path="name" class="info" type="text" id="name" name="name" placeholder="Full Name" /><br>
            <sf:input path="email" class="info" type="email" id="email" name="email" placeholder="E-mail"/> <br>
            <button class="contact-button" type="submit" >Subscribe</button>
        </sf:form>  --%>
        
        <!-- Dạng 3 -->
 		 <form action="${base }/subscribe" method="post" class="input-inf">
            <input class="info" type="text" id="subName" name="Name" placeholder="Full Name" required> <br>
            <input class="info" type="email" id="subEmail" name="Email" placeholder="E-mail" required> <br> 
           
            <button onclick="subscribe('${base}')" class="contact-button" type="button" >Subscribe</button>
            <p style="color: red" id="TB_AJAX"></p>
        </form> 
        
        
        <div class="info-contact">
            <div style="margin-bottom: 30px;">
                <span style="font-size:24px; font-family:arial; font-weight:500">Contact</span><br>
                <span style="font-size: 16px; color: grey;">hi@fashion.com</span>
            </div>
            <div style="margin-bottom: 30px;">
                <span style="font-size:24px; font-family:arial; font-weight:500">Based in</span><br>
                <span style="font-size: 16px; color: grey;">San Francisco,</span><br>
                <span style="font-size: 16px; color: grey;">California</span>
            </div>

            <div style="justify-content:space-between;width:100%;">
                <a href="#"><i class="fab fa-facebook-square"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
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
 <%-- <script src="${base}/js/subscribe_scripts.js"></script> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
</html>