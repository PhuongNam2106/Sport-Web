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
    <link type="text/css" rel="stylesheet" href="${base }/css/simplePagination.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>;
    <div class="container-fluid">
          <!-- Header -->
         <jsp:include page="/WEB-INF/view/khachhang/layout/header.jsp"></jsp:include>

            <!-- Navigation -->
            <jsp:include page="/WEB-INF/view/khachhang/layout/navigation.jsp"></jsp:include>
     </div>

        
   
    </div>

    <div style=" max-width: 1350px; margin-top: 154px;" class="container"  action="${base }/allproduct" method="get">
        <div class="row col-12" style="padding-left: 0px;">
            <form action="${base }/allproduct" method="get" class="col-3 justify-content-start" style="padding-left: 0px;" >
                <div style="background-color: #333333 !important;" class="list-group list-group list-group-flush">
                    <a style="background-color: #333333 !important; color: orange !important" href="#" class="list-group-item list-group-item-action list-category-item">Danh mục sản phẩm</a>
                 <c:forEach items="${categories}" var="categoriesModel"  varStatus="loop">
                    <a style="text-transform: uppercase;" href="${base}/category/${categoriesModel.id }" <%-- value="${categoriesModel.id }" --%> class="list-group-item list-group-item-action name-category-item">${categoriesModel.name }</a>
                  </c:forEach> 
                
					
                  </div>
            </form>

            <div class="col-9 content">
                <div class="row">
                    <img src="${base }/img/product img/banner-collection.jpg" alt="">
                </div>
                
                <div style="color: white;" class="text-all-product">
                    TẤT CẢ SẢN PHẨM
                </div>
                
                <div class=" category-icon">
                    <i class="fa fa-th-large"></i>
                </div>

                <div style="right: 0; color: white;" class=" float-right justify-content-end">
                    Sắp xếp theo 
                    <select style="border-radius: 3px;" name="" id="">
                        <option value="">Mới nhất</option>
                        <option value="">Giá tăng dần</option>
                        <option value="">Giá giảm dần</option>
                        <option value="">Tên: A-Z</option>
                        <option value="">Tên: Z-A</option>
                        <option value="">Bán chạy nhất</option>
                    </select>
                </div>
                <hr>

                <div class="row list-product" >
                  
	                <c:forEach items="${productsWithPaging.data}" var="product" varStatus="loop">
	                    <div class="col-lg-3 col-md-4 col-sm-6  ">
	                        <div style="margin-bottom: 10px !important;" class="card card-custom">
	                            <span class="ico-sale">%</span>
	                            <img class="card-img-top link" src="${base }/upload/${product.avatar}" alt="Card image cap">
	                            <hr class="gach-ngang">
	                            <div style="padding: 0 1px !important;" class="card-body">
	                            <a style="text-transform: uppercase;" class="card-title product-title" href="${base }/detail/product/${product.seo}">${product.title }</a>
	                            <br>
	                            
	                            <span class="card-text old-price">
	                            	 <fmt:setLocale value="vi_VN" scope="session" />
									<fmt:formatNumber value="${product.price }" type="currency" />
								</span>
	                            <span class="card-text new-price">
	                            	 <fmt:setLocale value="vi_VN" scope="session" />
									<fmt:formatNumber value="${product.priceSale }" type="currency" />
	                            </span>
	                            </div>
	                        </div>                       
	                    </div>
	                  </c:forEach> 
	                  
	                  
                </div>
                <hr>
                <nav style="margin: auto; color: orange !important;" class="col-4" aria-label="Page navigation example">
                     <!-- Paging -->
						<div class="row">
							<div class="col-12 d-flex justify-content-center">
								<div id="paging"></div>
							</div>
						</div>       
                  </nav>
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

 <script type="text/javascript">
			
		
			$( document ).ready(function() {
				
				$("#paging").pagination({
					currentPage: ${productsWithPaging.currentPage},
			        items: ${productsWithPaging.totalItems},
			        itemsOnPage: 16,
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
			
		</script> 


</html>