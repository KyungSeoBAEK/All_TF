<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Site CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- bootsdivap  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootsdivap-3.3.6-dist/css/bootsdivap.min.css">
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/login/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/login/div.css">
<meta charset="UTF-8">
<title>login</title>
</head>
<body style="background-color: #fbf7f1;">
	<div id="header">
		<%@ include file="../include/header.jsp"%>
	</div>
	<center>
		<div style="padding-top: 50px; width: 30%; height: 500px;">
			<div style="padding: 10px;">
			<div>
				<span>회원가입을 축하합니다!</span>
			</div>
				<form action="loginOk" method="post">
					<div style="padding-bottom: 10px;">
						<div>
							<input style="width: 100%; height: 40px" id="input01" type="text" name="id" placeholder="아이디">
						</div>
						<div>
							<input style="width: 100%; height: 40px" id="input01" type="password" name="pw" placeholder="비밀번호">
						</div>
					</div>
					<div style="text-align: left;">
						<label style="font-weight: normal;">
						<input type="checkbox" name="auto_login">
						<span>로그인상태유지</span>
						</label>
					</div>
					<div>
						<div style="padding: 10px;">
							<input style="width: 105%; height: 30px; margin-left: -3%; vertical-align:middle; background-color: #5f5f5f; color: #ffffff; border: none" type="submit"	value="로그인">
						</div>
						<div>
							<a style="float: left;" href="form_join">회원가입</a>
							<a style="float: right;" href="choose_user">아이디 · 비밀번호 찾기</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</center>
	<div id="footer">
		<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>