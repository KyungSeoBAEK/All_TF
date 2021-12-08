<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주문목록</title>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.nosession').hide();
		$('.session').show();

	});
</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/Cart.css">
<%
String cartId = session.getId();
%>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<div align="center"
		style="width: 100%; background-color: #f3f3f3; height: 100%; padding-top: 100px;">
		<div align="center"
			style="width: 66.7%; height: auto; background-color: #f3f3f3; padding: 0px 25px;">
			<div
				style="width: 20%; height: auto; padding: 0px 15px; float: left;">
				<h1>내 주문목록</h1>
			</div>
			<div
				style="width: 80%; height: auto; padding: 0px 15px; float: left;">
				<div
					style="width: 100%; height: 185px; margin: 0px 0px 70px; padding: 50px 0px 50px 45px; background-color: #ffffff;">
					<div
						style="width: 50%; height: 85px; margin: 0px 0px 0px 24px; color: #212121; float: left;">
						<div
							style="width: 85px; height: 85px; float: left; margin-right: 25px;">
							<img style="width: 85px; height: 85px;"
								src="${pageContext.request.contextPath}/resources/img/default_profile.png">
						</div>
						<span style="width: 60%; height: 25px; font-size: 22px;">ID값으로Name/
							님 안녕하세요</span>
						<div
							style="width: 60%; height: 24px; color: #212121; font-size: 15px; float: left; text-align: left;">
							누적 구매금액: KRW (sum)</div>
					</div>

				</div>
				<div class="nosession"
					style="width: 100%; height: auto; padding: 70px; color: #21212166;">주문
					내역이 없습니다.</div>
				<div class="session"
					style="width: 100%; height: auto; color: #21212166; text-align: left; background-color: white; float: left;">
					<table>
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
									class="hidden_list">상품이름</span></th>
								<th class="cart1"><span></span></th>
								<th class="cart1"><span>수량</span></th>
								<th class="cart1"><span>총가격</span></th>
								<th class="cart1"><span></span></th>
								<th class="cart2"><span>배송상태</span></th>
								<th class="cart1"><span></span></th>


							</tr>
						</thead>
						<tbody class="cart_show">
							<!-- 실제 c:for 반복문을 사용하여 리스트를 뽑아올 위치 장바구니 목록표 -->
							<tr class="bottomline">
								<td class="main1"></td>
								<td><a class="product" href="상품페이지이동?=${productID }"><div
											style="width: 60px; height: 60px; float: left;">
											<img src="">
										</div>
										<p style="width: 212px;">상품이름 외 ?개</p></a></td>
								<td class="cart1"></td>
								<td class="cart1"><div>고른수량</div>
								<td class="cart1"><div>택배</div></td>
								<td class="cart1"><div></div></td>
								<td class="cart2"><div>배송완료</div></td>
								<td class="cart1"></td>
							</tr>
						</tbody>


					</table>

				</div>
			</div>

		</div>



	</div>



</body>
<footer>
	<%@include file="../include/footer.jsp"%>
</footer>
</html>