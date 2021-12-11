<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flower Shop Portfolio</title>

<!-- Site CSS -->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/inside_header.css">
<!-- bootstrap  
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">-->
</head>
<body data-spy="scroll" data-target="#navbarResponsive">
   <!-- 세로네비 메뉴 -->
   <div class="container" style="width: 50%;">
      <ul class="nav flex-column" style="text-aling: left;">
      <li class="nav-item">
            <a href="myinfo" class="nav-link">내 정보</a>
         </li>
         <li class="nav-item">
            <a href="info_modify" class="nav-link">정보수정</a>
         </li>
         <li class="nav-item">
            <a href="info_order" class="nav-link">주문조회</a>
         </li>
         <li class="nav-item">
            <a href="info_cart" class="nav-link">장바구니</a>
         </li>
         <li class="nav-item">
            <a href="#" class="nav-link">1:1문의</a>
         </li>
         <li class="nav-item">
            <a href="#" class="nav-link">회원탈퇴</a>
         </li>
      </ul>
   </div>
</body>
</html>