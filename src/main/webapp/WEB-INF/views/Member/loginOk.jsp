<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>loginOk</title>
</head>
<body style="background-color: #fbf7f1;">
   <div id="header">
      <%@ include file="../include/header.jsp"%>
   </div>
   <center>
      <div style="padding-top: 50px; width: 30%; height: 500px;">
         <div style="padding: 10px;">
            <form action="loginOk" method="post">
               <div style="padding-bottom: 10px;">
                  <table border="0" cellspacing="0" cellpadding="10">
                     <%
                     int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
                     int checkPw = Integer.parseInt(request.getAttribute("checkPw").toString());
                     
                     if (checkId == 0) {
                     %>
                     <script language="JavaScript">
                        alert("아이디가 존재하지 않습니다.");
                        history.go(-1);
                     </script>
                     <%
                     } else if (checkPw == 0) {
                     %>
                     <script language="JavaScript">
                        alert("비밀번호가 맞지 않습니다.");
                        history.go(-1);   
                     </script>
                     <%
                     } else {
                     session.setAttribute("ValidMem", "yes");
                     }
                     %>
                     <tr>
                        <td>${mName }님 안녕하세요.<br> 로그인에 성공하셨습니다.
                        </td>
                     </tr>
                  </table>
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