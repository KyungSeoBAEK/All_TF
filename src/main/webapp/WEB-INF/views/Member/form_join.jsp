<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<!-- Site CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- bootsdivap  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootsdivap-3.3.6-dist/css/bootsdivap.min.css">

<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/login/span.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/login/div.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		if (form_join.mId.value == "") {
			alert("아이디를 입력해 주세요.");
			form_join.mId.focus();
			return false;
		} else if (form_join.mPw.value == "") {
			alert("비밀번호를 입력해 주세요.");
			form_join.mPw.focus();
			return false;
		} else if (form_join.mChpw.value != form_join.mPw.value) {
			alert("비밀번호가 일치하지 않습니다.");
			form_join.mPw.focus();
			return false;
		} else if (form_join.mName.value == "") {
			alert("이름을 입력해주세요.")
			form_join.mName.focus();
			return false;
		} else if (form_join.mEmail.value == "") {
			alert("이메일을 입력해주세요.")
			form_join.mEmail.focus();
			return false;
		} else if (form_join.mPhone.value == "") {
			alert("전화번호를 입력해주세요.")
			form_join.mPhone.focus();
			return false;
		} else if (form_join.mAddr.value == "") {
			alert("주소를 입력해주세요.")
			form_join.mAddr.focus();
			return false;
		} else
			return true;
	}
</script>
</head>
<body style="background-color: #fbf7f1;">
	<div id="header">
		<%@ include file="../include/header.jsp"%>
	</div>
	<center>
		<div style="padding-top: 50px; width: 30%; height: 500px;">
			<div style="padding: 10px;">
				<form id="form_join" action="form_joinok" method="post" onsubmit="return check()">
					<div style="padding-bottom: 10px;">
						<div>
							<input style="width: 100%; height: 40px" type="text" name="mId" placeholder="아이디">
						</div>
						<div>
							<input style="width: 100%; height: 40px" type="password" name="mPw" placeholder="비밀번호">
						</div>
						<div>
							<input style="width: 100%; height: 40px" type="password" name="mChpw" placeholder="비밀번호확인">
						</div>
						<div>
							<input style="width: 100%; height: 40px" type="text" name="mName" placeholder="이름">
						</div>
						<div>
							<input style="width: 100%; height: 40px" type="text" name="mPhone" placeholder="전화번호">
						</div>
						<div>
							<input style="width: 100%; height: 40px" type="text" name="mAddr" placeholder="주소">
						</div>
						<div>
							<input style="width: 100%; height: 40px" type="text" name="mEmail" placeholder="이메일">
						</div>
						<div style="padding-top: 20px;">
							<input style="width: 100%; height: 30px; vertical-align:middle; background-color: #5f5f5f; color: #ffffff; border: none" type="submit"	value="가입하기">
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