
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="stylesheet" href="./signin.css">
    <title>Signin Template · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
    <link href="${base }/css/signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<main class="form-signin">
	<c:if test="${not empty message}">
	        <div style="margin-top: 150px;margin-bottom: -145px;" class="alert alert-primary" role="alert">
	        	<c:out value="${message}" />
	        </div>
        </c:if>

  <form method="post"  action="${base}/perform_login">
  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  	
 	 <c:if test="${not empty param.login_error}">
		<div class="alert alert-danger" role="alert">
			Login attempt was not successful, try again!!!
		</div>
	</c:if>
	
    <img class="mb-4" src="${base }/img/image/Free_Sample_By_Wix__1_-removebg-preview.png" alt="" width="200" height="160">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input  id="account" type="text" class="form-control" id="floatingInput" name="username" placeholder="Tên tài khoản"/>
      <label for="floatingInput">Tên tài khoản</label>
    </div>
    <div class="form-floating">
      <input id="password" type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button  class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>


    
  </body>
  <script src="${base }/js/signin.js"></script>
</html>
