<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/product.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- bootstrap  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<%@ include file="../include/header.jsp"%>
	</div>
	
	<div style="width: 100%; height: 100%;">
		<div style="padding: 20px;">
			<div style="width: 100%; margin-left: 2%;">
				<div style="width: 4%; float: left;">
					<a class="p_a" href="">home</a>
				</div>
				<div style="width: 2%; float: left;">></div>
				<div style="width: 4%; float: left;">
					<a class="p_a" href="">Pots</a>
				</div>
				<div style="width: 2%; float: left;">></div>
				<div style="width: 4%; float: left;">
					<a class="p_a" href="">All Pots</a>
				</div>
			</div>
		</div>

		<div style="padding-top: 14px; margin-bottom: 10px">
			<div style="margin-left: 2%;">
				<div style="float: left;">
					<img style="width: 540px; height: 780px;" alt="" src="${pageContext.request.contextPath}/resources/img/i1.png">
				</div>
				<div style="padding-left: 10%; float: left; border-bottom: 1px solid;">
					<div class="p_prod" style="padding: 10px;">
						<div class="p_name" style="float: left;">Bouquet Optic Vase	- Clear</div>
						<div class="p_icon.sold_out" style="float: left;">SOLD OUT</div><br>
						<div>KRW 18,000</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>