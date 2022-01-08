   <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
	 <jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
	  <div class="row header">
          <div class="row head  ">
            <div class="col-12 nav-item dropdown nav-custom">
               <c:if test="${!isLogined}"> 
            
            
                <a style="padding-left: 0px;" class=" col-2 nav-link dropdown-toggle nav-custom" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="far fa-user"></i>  Tài khoản
                </a>
                <div class="dropdown-menu dropdown-menu-custom" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item dropdown-item-custom" href="${base }/register">Đăng ký</a>
                  <div class="dropdown-divider margin: 3px 0;"></div>
                  <a class="dropdown-item dropdown-item-custom" href="${base }/login">Đăng nhập</a>
               	 </div>
                </c:if> 
               
               <c:if test="${isLogined }">
               	<a style="padding-left: 0px;" class="  col-2 nav-link dropdown-toggle nav-custom" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="far fa-user"></i>${userLogined.email }                
                </a>
                 <div class="dropdown-menu dropdown-menu-custom" aria-labelledby="navbarDropdown">
	                  <a class="dropdown-item dropdown-item-custom" href="#">Giỏ hàng</a>
	                  <div class="dropdown-divider margin: 3px 0;"></div>
	                  <a class="dropdown-item dropdown-item-custom" href="${base }/profile">Thông tin của bạn </a>
	                  <div class="dropdown-divider margin: 3px 0;"></div>
	                  <a class="dropdown-item dropdown-item-custom" href="#">Tra cứu đơn hàng </a>
	                  <div class="dropdown-divider margin: 3px 0;"></div>
	                  <a class="dropdown-item dropdown-item-custom" href="${base }/logout">Đăng xuất </a>
               	 </div>
               </c:if>
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
          