<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ page import = "jared.simpledatabase.*" %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="${base}/css/register.css">
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <title>Document</title>
</head>
<body>
    <div class="container" >
        <br>
        
        
        
        <c:if test="${not empty TB }">
        <div style="color: red; background-color: white" class="alert alert-primary" role="alert">
        	${TB }
        </div>
        </c:if>
        <div class="card bg-light">
        <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title mt-3 text-center">Tạo tài khoảnt</h4>
            <p class="text-center">Get started with your free account</p>
            <p>
                <a href="" class="btn btn-block btn-twitter"> <i class="fab fa-twitter"></i>   Đăng nhập qua Twitter</a>
                <a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>  Đăng nhập qua Facebook</a>
            </p>
            <p class="divider-text">
                <span class="bg-light">Hoặc</span>
            </p>
            <sf:form modelAttribute="userModel" action="${base}/register" method="post">
            <sf:hidden path="id" /> 
						<!-- Form Name -->
            <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                 </div>
                <sf:input path="username" name="username" class="form-control" placeholder="Username" type="text"/>
            </div> <!-- form-group// -->
            
            <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                 </div>
                <sf:input path="customerName" name="customer_name" class="form-control" placeholder="Full name" type="text"/>
            </div> <!-- form-group// -->
            
            <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                 </div>
                <sf:input path="email" name="email" class="form-control" placeholder="Email address" type="email"/>
            </div> <!-- form-group// -->
            
            <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                </div>
                <select class="custom-select" style="max-width: 120px;">
                    <option selected="">+84</option>           
                </select>
                <sf:input path="phone" name="phone" class="form-control" placeholder="Phone number" type="text"/>
            </div> <!-- form-group// -->
            
             <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                 </div>
                <sf:input path="address" name="address" class="form-control" placeholder="Address" type="text"/>
            </div> <!-- form-group// -->
            
            <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <sf:input path="password" name="password" class="form-control" placeholder="Create password" type="password"/>
            </div> <!-- form-group// -->
            
            <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <input class="form-control" placeholder="Repeat password" type="password">
            </div> <!-- form-group// -->   
                                               
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block"> Tạo tài khoản  </button>
            </div> <!-- form-group// -->    
              
            <p class="text-center">Bạn đã có tài khoản <a href="${base }/login">Đăng nhập tại đây</a> </p>                                                                 
        </sf:form>
           <p class="text-center"><a href="${base }/home">Trang chủ</a> </p> 
        </article>
        </div> <!-- card.// -->
        
        </div> 
        <!--container end.//-->
        
        <br><br>
      
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>

</html>