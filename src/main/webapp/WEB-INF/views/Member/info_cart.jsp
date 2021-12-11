<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/Cart.css">
<meta charset="UTF-8">
<title>내정보_장바구니</title>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
      $('.nosession').hide();
      $('.session').show();

   });
</script>
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
         <center>
       <div align="left" style="width: 100%; height: auto;">
				<h1 align="left"
					style="width: 90%; font-size: 24px; margin: 40px 0px 15px; text-align: left;">
					장바구니<span>카운트값</span>
				</h1>
				<div style="width: 90%; height: auto;">

					<!-- 장바구니 테이블 시작 -->
					<table class="session">
						<colgroup>
							<col style="width: 40px;" />
							<col style="width: 550px;" />
							<col style="width: 100px;" />
							<col style="width: 80px;" />
							<col style="width: 120px;" />
							<col style="width: 130px;" />
							<col style="width: 130px;" />
							<col style="width: 150px;" />
						</colgroup>
						<thead class="bottomline">
							<tr>
								<!-- hidden으로 밑의 th들을 가리고 장바구니 안에 값이 들어오면 나오게끔 출력 -->
								<th class="main1"><div>
										<lable> <input
											style="background-color: black; color: white;"
											type="checkbox" class="check_box" onclick=""></lable>
									</div></th>
								<th class="cart1" style="text-align: left;"><span
									class="hidden_list">item</span></th>
								<th class="cart1"><span></span></th>
								<th class="cart1"><span>수량</span></th>
								<th class="cart1"><span>배송수단</span></th>
								<th class="cart1"><span>배송비</span></th>
								<th class="cart2"><span>가격</span></th>
								<th class="cart1"><span></span></th>


							</tr>
						</thead>
						<tbody>
							<!-- 실제 c:for 반복문을 사용하여 리스트를 뽑아올 위치 장바구니 목록표 -->
							<tr class="bottomline">
								<td class="main1"><lable> <input
										style="background-color: black; color: white;" type="checkbox"
										class="check_box" onclick=""></lable></td>
								<td><a class="product" href="상품페이지이동?=${productID }"><div
											style="width: 60px; height: 60px; float: left;">
											<img src="">
										</div>
										<p style="width: 212px;">상품이름 넣을 곳</p></a></td>
								<td class="cart1"></td>
								<td class="cart1"><div>고른수량</div>
									<div>변경하는버튼</div></td>
								<td class="cart1"><div>택배</div></td>
								<td class="cart1"><div>무료</div></td>
								<td class="cart2"><div>상품수량X가격</div></td>
								<td class="cart1"><a href="list_payment?pId="><button
											class="cart1">주문</button></a> <a href="delete_cart"><button
											class="cart1">삭제</button></a></td>
							</tr>
							<tr class="bottomline">
								<td colspan="5" class="main1"></td>
								<td class="cart2">
									<p>상품가격</p>
									<p>배송비</p>
								</td>
								<td class="cart2">
									<p>KRW 가격정보</p>
									<p>무료배송</p>
								</td>
								<td class="cart2"></td>
							</tr>
						</tbody>

						<tfoot>
							<tr>
								<td class="main1" colspan="5"><a href="delete_cart"><button
											class="cart2">선택상품 삭제</button></a>&nbsp;&nbsp;&nbsp;<a
									href="wish_cart"><button class="cart2">위시리스트 담기</button></a></td>
								<td class="cart2"><span>결제금액</span></td>
								<td class="cart2"><span
									style="font-size: 20px; font-weight: 600;">KRW <br>가격
								</span></td>
							</tr>

						</tfoot>
					</table>
					<!-- 장바구니 테이블 끝  -->




					<!-- 장바구니 없을때 테이블 -->
					<table class="nosession">
						<colgroup>
							<col style="width: 40px;" />
							<col style="width: 550px;" />
							<col style="width: 100px;" />
							<col style="width: 80px;" />
							<col style="width: 120px;" />
							<col style="width: 130px;" />
							<col style="width: 130px;" />
							<col style="width: 150px;" />
						</colgroup>
						<thead class="bottomline">
							<tr>
								<!-- hidden으로 밑의 th들을 가리고 장바구니 안에 값이 들어오면 나오게끔 출력 -->
								<th class="main1"><div></div></th>
								<th class="cart1" style="text-align: left;"><span
									class="hidden_list">item</span></th>
								<th class="cart1"><span></span></th>
								<th class="cart1"><span>수량</span></th>
								<th class="cart1"><span>배송수단</span></th>
								<th class="cart1"><span>배송비</span></th>
								<th class="cart2"><span>가격</span></th>
								<th class="cart1"><span></span></th>


							</tr>
						</thead>
						<tbody>
							<!-- 실제 c:for 반복문을 사용하여 리스트를 뽑아올 위치 장바구니 목록표 -->
							<tr class="bottomline">
								<td class="main1" colspan="8"
									style="padding: 50px; text-align: center;">장바구니가 없습니다</td>

							</tr>

						</tbody>


					</table>

				</div>


			</div>
			<div style="width: 90%; padding: 0px 0px 50px;">
				<div style="width: 100%; margin: 0px 0px 24px;">
					<br> <a href="index"><span
						style="height: 50px; background-color: black; color: white; padding: 15px;">계속
							쇼핑하기</span></a>
				</div>

         </center>
      </div>
   </div>
</body>
<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</html>