<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./profile.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<div class="container">
   
</div>
    
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html> -->

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
   <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/contact.css">
   <link rel="stylesheet" href="${base }/css/profile.css">
    <title>Phương Nam Sport</title>
   
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<!-- Common -->
	<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>;

    <div class="container-fluid">
          <!-- Header -->
         <jsp:include page="/WEB-INF/view/khachhang/layout/header.jsp"></jsp:include>

            <!-- Navigation -->
            <jsp:include page="/WEB-INF/view/khachhang/layout/navigation.jsp"></jsp:include>
     </div>

        
   
    </div>
      <!--CONTACT-->
         <p style="margin-top:150px; margin-bottom:-130px; color: white" >Thông tin của bạn</p>
    <div class="container">
       
         
        <div style="margin-top:15px" class="col-md-12">
            <sf:form action="${base }/profile" method="post" modelAttribute="userChange" class="card mb-3">
           <%--  <sf:hidden path="id"/> --%>
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Full Name</h6>
                  </div>
                  <div style="text-align: center" class="info" class="col-sm-9 text-secondary">
                   <sf:input path="customerName" type="tel" class="form-control" id="customerFullName" name="customerFullName" value="${userLogined.customerName }" />
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <h6  class="mb-0">Email</h6>
                  </div>
                  <div style="text-align: center" class="info" class="col-sm-9 text-secondary">
                  <sf:input path="email" name="email" type="tel" class="form-control"  value="${userLogined.email }" />
                    
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Phone</h6>
                  </div>
                  <div style="text-align: center" class="info" class="col-sm-9 text-secondary">
                  <sf:input path="phone" name="phone" type="tel" class="form-control"   value=" ${userLogined.phone }" />
                    
                  </div>
                </div>
                <hr>
             
                <hr>
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Address</h6>
                  </div>
                  <div style="text-align: center" class="info" class="col-sm-9 text-secondary">
                  <sf:input path="address" name="address" type="tel" class="form-control"  value=" ${userLogined.address }" />
                   <sf:input style="visibility: hidden;" path="username" name="username" type="tel" class="form-control"  value=" ${userLogined.username }" />
                    <sf:input style="visibility: hidden;" path="password" name="password" type="tel" class="form-control"  value=" ${userLogined.password }" />
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col-sm-12">
                   <%--  <a class="btn btn-info " target="__blank" href="${base }/profile/edit">Edit</a> --%>
                     <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-primary">Cập nhật</button>
                  </div>
                </div>
              </div>
            </sf:form>
    </div>
   

    <!--END-Position-->
    <!-- Footer -->
    <!-- <footer style="background-color: #333333 !important ;" class=" row text-center text-lg-start bg-light text-muted">
        Section: Social media
        <section
          class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
        >
          Left
          <div class="me-5 d-none d-lg-block">
            <span>Get connected with us on social networks:</span>
          </div>
          Left
      
          Right
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
          Right
        </section>
        Section: Social media
      
        Section: Links 
        <section class="">
          <div class="container text-center text-md-start mt-5">
            Grid row
            <div class="row mt-3">
              Grid column
              <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                Content
                <h6 class="text-uppercase fw-bold mb-4">
                    
                  <i class="fas fa-gem me-3"></i>Phương Nam Sport 
                </h6>
                <p>
                  Rất hân hạnh được đem đến cho quý khách những sản phẩm tốt nhất
                </p>
              </div>
              Grid column
      
              Grid column
              <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                Links
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
              Grid column
      
              Grid column
              <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                Links
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
              Grid column
      
              Grid column
              <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                Links
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
              Grid column
            </div>
            Grid row
          </div>
        </section>
        Section: Links 
      
        Copyright
        Copyright
        </footer> -->
  <!-- Footer -->
</div>
    
    
  
</body>
<jsp:include page="/WEB-INF/view/khachhang/layout/js.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</html>