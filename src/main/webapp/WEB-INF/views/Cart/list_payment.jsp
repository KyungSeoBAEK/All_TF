<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.Product.DTO.*"%>
<%@ page import="com.Product.DAO.*"%>
<html>
<head>
<style type="text/css">
</style>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/Cart.css">
<%
String cartId = session.getId();
%>
<title>장바구니</title>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(function() {

		//직접입력 인풋박스 기존에는 숨어있다가

		$("#custom").hide();

		$("#selbox").change(function() {

			//직접입력을 누를 때 나타남

			if ($("#selbox").val() == "custom") {
				$("#custom").show();
			} else {
				$("#custom").hide();
			}
		})

	});

	$(document).ready(function() {
		$('.check_all').click(function() {
			$('.check').prop('checked', this.checked);

		});

	});
</script>
</head>
<body>
	<%@ include file="../include/header.jsp"%>



	<center>
		<div class="pay_div">

			<form class="pay">
				<div class="main_div">


					<h1 style="margin: 60px 0px;">결제하기</h1>




					<div class="left_div">
						<div class="side_left_box"">
							<h6 class="product" align="left">주문상품목록</h6>
							<!-- 밑에 side_left_box전 까지는 list를 이용하여 장바구니에 넣은 내용들을 뽑아 올 예정 -->
							<div style="float: left; margin-left: 10px; margin-right: 15px;">
								<img style="width: 90px; height: 90px;"
									src="${pageContext.request.contextPath}/resources/img/img.png">
							</div>

							<div style="float: left;">
								<div align="center">
									<span class="E1">Aqua</span>
								</div>
								<div>
									<p>1개</p>
								</div>
								<div>
									<span>KRW 11000</span>
								</div>
							</div>
						</div>
						<div class="side_left_box">
							<h6 class="product" align="left">주문자 정보</h6>
							<div class="paynameleft">
								<input class="input-type01" type="text" name="name"
									placeholder="이름">
							</div>
							<div class="paynamerigth">
								<input class="input-type01" type="text" name="phone"
									placeholder="전화번호">
							</div>
							<div class="paymail">
								<input class="input-type02" type="text" name="email"
									placeholder="이메일">
							</div>
						</div>
						<div class="side_left_box">
							<h6 class="product" align="left">배송 정보</h6>


							<div style="text-align: left;">
								<label style="margin-bottom: 12px;"> <input
									style="margin: -9px 0px 0px;" type="checkbox" id="check_info">
									<span style="padding: 0px 0px 0px 15px;">주문자 정보와 동일</span>
								</label>
							</div>
							<div class="paynameleft">
								<input class="input-type01" type="text" placeholder="수령인">
							</div>
							<div class="paynamerigth">
								<input class="input-type01" type="text" placeholder="연락처">
							</div>
							<div
								style="width: 125px; height: 46px; float: left; padding: 10px 0px 0px 15px;">
								<input type="text"
									style="width: 110px; height: 36px; padding: 7px 10.5px;"
									placeholder="우편번호">
							</div>
							<div class="paymail">
								<input class="input-type02" type="text" placeholder="주소">
							</div>
							<div class="paymail">
								<input class="input-type02" type="text" placeholder="상세주소">
							</div>
							<div
								style="width: 502px; height: 125px; padding: 0px 15px; float: left;">
								<div
									style="width: 502px; padding: 20px 0px 0px; height: auto; float: left; text-align: left;">
									<p style="margin: 0px 0px 10px; font-size: 14px;">배송메모</p>
									<br>
									<div
										style="float: left; width: 502px; height: 38px; margin: -7px 0px 0px;">
										<select
											style="padding: 7px 10.5px; width: 450px; height: auto;"
											name="selbox" id="selbox">
											<option value>배송메모를 선택해주세요</option>
											<option value="배송전에 미리 연락 바랍니다.">배송전에 미리 연락 바랍니다.</option>
											<option value="부재시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요.</option>
											<option value="부재시 전화나 문자를 남겨주세요">부재시 전화나 문자를 남겨주세요.</option>
											<option value="custom">직접입력</option>
										</select>
										<div style="padding-top: 10px;">
											<input type="text" class="input-type02" placeholder="직접입력"
												name="custom" id="custom">
										</div>
									</div>
								</div>
							</div>

						</div>



					</div>

					<div class="rigth_div">
						<div class="side_left_box_one"
							style="height: 194px; text-align: left;">
							<h6 class="product" style="padding: 0px 0px 20px;">최종 결제금액</h6>
							<div style="width: 277px; height: auto; padding: 0px 0px 15px;">
								<div style="width: 138.5; height: auto; float: left;">
									<p class="p1">상품가격</p>
									<p class="p1">배송비</p>
								</div>
								<div style="width: 138.5; height: auto; float: left;">
									<p class="p2">가격정보(불러올 값)</p>
									<p class="p2">무료배송</p>
								</div>
							</div>

							<div
								style="width: 277px; height: auto; padding-top: 15px; float: left; border-top: 1px solid #999999;">
								<div style="width: 138.5; height: auto; float: left;">
									<p class="p1">총 결제금액(1개)</p>
								</div>
								<div style="width: 138.5; height: auto; float: left;">
									<p class="p2">KRW (Sum 총값)</p>
								</div>

							</div>
						</div>
						<div class="side_left_box_one" style="height: 227px;">
							<h6 class="product" align="left">결제수단</h6>
							<div
								style="width: 277px; height: auto; padding-bottom: 5px; text-align: left;">
								<label style="margin-bottom: 12px;"> <input
									style="margin: -9px 0px 0px;" type="radio" id="bank"> <span>무통장입금</span>
								</label>
							</div>
							<div style="width: 277px; height: auto; text-align: left;">
								<div style="width: 100%; height: auto;">
									<select
										style="width: 100%; padding: 7px 5px 7px 10.5px; text-align: center;"
										id="bankSelect" value="은행선택">
										<option value="기업은행">기업은행</option>
										<option value="신한은행">신한은행</option>
										<option value="농협은행">농협은행</option>
										<option value="국민은행">국민은행</option>
									</select>
								</div>
								<div style="width: 277px; height: auto; padding-top: 10px;">
									<input style="width: 100%; height: 34px; padding: 7px 10.5px;"
										type="text" placeholder="입금자명(미입력시 주문자명)" id="">
								</div>
							</div>

						</div>
						<div class="side_left_box_one"
							style="margin-top: 16px; margin-bottom: 0px; text-align: left;">
							<div style="width: 277px; margin-bottom: 10px;">
								<label style="margin-bottom: 12px;"> <input
									style="margin: -9px 0px 0px;" type="checkbox" id="agree"
									class="check_all"> <span>전체 동의</span>
								</label>
							</div>
							<div
								style="width: 277px; margin: -5px 0px 10px; padding: 0px 0px 0px 30px;">
								<label style="margin-bottom: 12px;">┗&nbsp;<input
									style="margin: -9px 0px 0px;" type="checkbox" id="agree"
									class="check"> <span>개인정보 수집 및 이용 동의 약관보기</span>
								</label>
							</div>
							<div
								style="width: 277px; margin: -5px 0px 10px; padding: 0px 0px 0px 30px;">
								<label style="margin-bottom: 12px;">┗&nbsp;<input
									style="margin: -9px 0px 0px;" type="checkbox" id="agree"
									class="check"> <span>구매조건 확인 및 결제진행에 동의</span>
								</label>
							</div>

						</div>
						<a class="payment" href="payment"
							style="text-decoration: none; color: white;"><div
								class="side_left_box_one"
								style="height: 50px; background-color: black; color: white; padding: 15px;">결제하기</div></a>
					</div>

				</div>

			</form>
		</div>
	</center>


</body>
<footer>
	<%@include file="../include/footer.jsp"%>
</footer>
</html>
