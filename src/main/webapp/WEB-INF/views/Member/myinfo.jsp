<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주문목록</title>
</head>
<body>
   <%@ include file="../include/header.jsp"%>

   <div
      style="width: 100%; height: 90%; padding: 0px; background-color: #f3f3f3">
      <div
         style="width: 20%; height: auto; padding: 50px 15px; float: left;"
         class="inside-header">
         <%@ include file="../include/inside_header.jsp"%>
      </div>
      <!-- head -->
      <div style="width: 80%; height: auto%; padding: 50px 40px; float: left;">
         <div style="width: 80%; height: 185px; margin: 0px 0px 40px; padding: 50px 0px 20px 45px; background-color: #ffffff;">
            <div style="width: 50%; height: 85px; margin: 0px 0px 0px 24px; color: #212121; float: left;">
               <div style="width: 85px; height: 85px; float: left; margin-right: 25px;">
                  <img style="width: 85px; height: 85px;" src="${pageContext.request.contextPath}/resources/img/default_profile.png">
               </div>
               <span style="width: 60%; height: 25px; font-size: 22px; text-align: center;">
                  ID값으로Name/님 안녕하세요 
               </span>
            </div>
         </div>
         <div style="width: 100%; height: 50px; margin: 0px 0px 40px; padding: 25px 0px 20px 0px; font-size: 22px; font-weight: bold;">
            정보수정
         </div>


         <table  border="0" cellspacing="0" cellpadding="10" style="width: 15%; text-align:center;">
            <form action="" method="post">
            <tr>
               <td class="td-01" style="padding: 20px;">아이디</td>
               <td></td>
            </tr>
            <tr>
               <td class="td-01" style="padding: 25px;">이름</td>
               <td></td>
            </tr>
            <tr>
               <td class="td-01" style="padding: 25px;">전화번호</td>
               <td></td>
            </tr>
            <tr>
               <td class="td-01" style="padding: 25px;">주소</td>
               <td></td>
            </tr>
            <tr>
               <td class="td-01" style="padding: 25px;">이메일</td>
               <td></td>
            </tr>
            <tr>
               <td colspan="2"><input id="button01" type="button" value="정보수정" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
               <input id="button01" type="button" value="cancle" onclick="javascript:window.location='infoModifyCancel'"></td> 
            </tr>
            </form>
         </table>


      </div>
   </div>
</body>
<footer>
   <%@include file="../include/footer.jsp"%>
</footer>
</html>