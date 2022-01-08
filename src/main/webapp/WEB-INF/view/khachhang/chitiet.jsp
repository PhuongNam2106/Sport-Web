<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Phương Nam Sport</title>
   <jsp:include page="/WEB-INF/view/khachhang/layout/css.jsp"></jsp:include>
    <link type="text/css" rel="stylesheet" href="path_to/simplePagination.css"/>
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

    <div style=" max-width: 1350px; margin-top: 154px;" class="container">
       

              <div style="margin-top: 154px;" class="container">
            <div class="row" action="${base }/detail/product/${product.seo}" method="get">
                <div class="col-4">
                    <img width="350px" heigh="350px" src="${base }/upload/${product.avatar}" alt="">
                </div>
                
                <div class="col-8">
                  <p class="name-product">${product.title }</p>
                  <span class="card-text old-price">
						<fmt:setLocale value="vi_VN" scope="session" />
						<fmt:formatNumber value="${product.price }" type="currency" />
					</span>
                  <span class="card-text new-price">
                  		<fmt:setLocale value="vi_VN" scope="session" />
						<fmt:formatNumber value="${product.priceSale }" type="currency" />
                  </span>
                  <p class="name-provider">${product.brand}</p>
                  <dl>
                    <dt class="promotion">Khuyến mãi tặng kèm :</dt>
                    <dd style="color: white;"><i class="fas fa-caret-right"></i> 1 túi đựng giày</dd>
                    <dd style="color: white;"><i class="fas fa-caret-right"></i> 1 đôi tất chống trơn</dd>
                  </dl>
                  <p style="font-size: 26px; color: red; font-weight: 600;">Cam kết chính hãng 100%. Bồi hoàn gấp 10 lần nếu không phải là hàng chính hãng</p>
                  <p class="name-provider">Chọn màu</p>
                  <div class="btn-group " role="group" aria-label="Third group">
                    <button type="button" class="btn btn-info shoe-size-btn">Đỏ</button>
                  </div>
                  <p class="name-provider">Chọn size</p>
                  <!-- size button -->
                  <div class= " shoe size">
                    <div class="btn-group " role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">38</button>
                    </div>
                  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">39</button>
                    </div>
  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">40</button>
                    </div>
  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">41</button>
                    </div>
  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">42</button>
                    </div>
  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">43</button>
                    </div>
  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">44</button>
                    </div>
  
                    <div class="btn-group" role="group" aria-label="Third group">
                      <button type="button" class="btn btn-info shoe-size-btn">45</button>
                    </div>
                  </div>

                  <!-- end size button -->
                  <div style="margin-top: 15px;">
                    <button type="button" class="btn btn-outline-warning">Mua hàng</button>
                    <button onclick="javascript:AddToCart('${base }', ${product.id}, 1);" class="btn btn-outline-warning">Thêm vào giỏ hàng</button>
                  </div>

                </div>
                
            </div>
        </div>

    <!-- Footer -->
    <footer style="background-color: #333333 !important;" class="text-center text-lg-start bg-light text-muted">
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
              <a href="#!" class="text-reset">Angular</a>
            </p>
            <p>
              <a href="#!" class="text-reset">React</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Vue</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Laravel</a>
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
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script type="text/javascript" src="path_to/jquery.js"></script>
 

</html>