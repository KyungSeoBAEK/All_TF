<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Anthologia</title>
<!-- Site CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Site CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/index.css">
<!-- bootstrap  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">
</head>
<body data-spy="scroll" data-target="#navbarResponsive" onload="init();">
	<script language="JavaScript">
var sell_price;
var amount;

function init () {
   sell_price = document.form.sell_price.value;
   amount = document.form.amount.value;
   document.form.sum.value = sell_price;
   change();

}

function add () {
   hm = document.form.amount;
   sum = document.form.sum;
   hm.value ++ ;

   sum.value = parseInt(hm.value) * sell_price;
}

function sub () {
   hm = document.form.amount;
   sum = document.form.sum;
      if (hm.value > 1) {
         hm.value -- ;
         sum.value = parseInt(hm.value) * sell_price;
      }
}

function change () {
   hm = document.form.amount;
   sum = document.form.sum;

      if (hm.value < 0) {
         hm.value = 0;
      }

	sum.value = parseInt(hm.value) * sell_price;
     
   
}  
</script>
	<div id="header">
		<%@ include file="../include/header.jsp"%>
	</div>

	<div class="inside container">
		<div class="i-row">
			<div class="i-dz i-dz-12">
				<div class="shop-content">
					<div class="i-row15 container" style="padding-top: 20px;">
						<div class="i-xs i-xs-12" style="width: 530px;">
							<div class="holder" style="height: 790px;">
								<div class="i-carousel" style="display: block;">
									<img
										src="${pageContext.request.contextPath}/resources/img/i1.png"
										style="width: 100%; height: 790px; margin-right: 0px;">
								</div>
							</div>
						</div>

						<div class="i-xs i-xs-12">
							<div class="goods_form">
								<header class="goods_header" style="margin-top: 0px;">
									<div class="view-tit" style="font-size: 22px !important;">
										Bouquet Optic Vase - Clear</div>
									<div class="i-pay i-width"">KRW 18,000</div>
								</header>
								<div class="i-font-70"
									style="margin-bottom: 24px; font-size: 12px;">
									<div class="i-fr">
										<p>This basket is from danish brand, Ferm Living.</p>
										<p>
											<br>
										</p>
										<p>Bringing the traditional basket weaving technique to
											pottery,</p>
										<p>Our handmade Braided Baskets recreate the familiar feel
											of woven</p>
										<p>containers. This multifunctional design can be put to
											use as a plant pot,</p>
										<p>Fruit bowl or decorative focal point in a room. Each
											piece is unique.</p>
										<p>
											<br>
										</p>
										<p>It is made of glazed ceramic.</p>
										<p>
											<br>
										</p>
										<p>Wipe with a damp cloth after use.</p>
										<p>
											<br>
										</p>
										<p>
											<br>
										</p>
										<p>
											<br>
										</p>
									</div>
								</div>

								<div class="i-detail" style="font-size: 14px;">
									<div class="i-margin-b">
										<div class="" style="display: block;">
											<div class="inline-blocked vertical-middle"
												style="font-size: 10px !important;">
												<span"><!-- Benefit 1,800 Point Earn --></span>
											</div>
										</div>
										<div class="" style="display: block;">
											<div class="inline-blocked vertical-middle"
												style="font-size: 10px !important;">
												<span"><!-- Shipping Parcel --></span>
											</div>
										</div>
										<div class="" style="display: block;">
											<div class="inline-blocked vertical-middle"
												style="font-size: 10px !important;">
												<span"><!-- Shipping fee KRW 2,500 (Free shipping over KRW
													50,000) --></span>
											</div>
										</div>
										<div class="" style="display: block;">
											<div class="inline-blocked vertical-middle"
												style="font-size: 10px !important;">
												<span"><!-- Ship to Korea, Republic of --></span>
											</div>
										</div>
									</div>
								</div>

								<!-- <div>
                           수량 <input type="hidden" name="sell_price" value="18000">
                        </div> -->
                        
                        <!-- form으로 구매 값을 장바구니 테이블로 옮겨 주어야 함 -->
								<form name="form" method="get" >
									<div>
										<div class="i-block i-border" style="height: 60px;">

											<div>
												수량<input type=hidden name="sell_price" value="18000">
											</div>
											<div>
												<div style="float: left;">
													<input type="button" value=" - " onclick="sub();">
												</div>
												<div style="float: left;">
													<input style="text-align: center;" type="text"
														name="amount" value="1" size="3" onchange="change();">
												</div>
												<div style="float: left;">
													<input type="button" value=" + " onclick="add();">
												</div>
												<div style="float: right;">
													<!--  KRW : <input style="border: none; background-color: #f2f2f2;" type="text" name="sum" size="11" readonly><br> -->
												</div>
											</div>
										</div>
									</div>

									<div class="goods_payment">
										<p class="i-block-bottom no-margin"
											style="text-align: right; margin: 0 !important;">
											<span class="i-total i-font-70"
												style="padding: 16px 0; text-align: left; font-size: 14px;">Subtotal
												(1) </span> <span class="i-total total_price"
												style="padding: 16px 0">KRW <input class="in1"
												onfocus="this.blur();" style="border: none;" type="text"
												name="sum" readonly="readonly"></span>
										</p>
								</form>
							</div>

							<div class="holder buy-btns">
								<a href="list_payment" class="btn1 btn-w1 bg-brand" style="margin-left: 0;"
									onclick="">Buy Now</a> 
									<a href="list_cart" class="btn1 btn-w2">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<!------------------------------------ Reviews & Q&A ------------------------------------>
				<div class="categorize review-box" style="">
					<div class="fr-view">
						<div class="button_tab">
							<div class="nav_wrap"
								style="z-index: auto; position: static; top: auto;">
								<ul class="site_prod_nav">
									<li class="i-li i-child i-bc table-cell holder"
										style="width: 33.33%; float: left; border-radius: 0;"><a
										class="i-b1" href="#prod-detail" style="margin-left: 0;">Details</a>
									</li>
									<li class="i-li i-child i-bc table-cell holder"
										style="width: 33.33%; float: left; border-radius: 0;"><a
										class="i-b1" href="#prod-reviews" style="margin-left: 0;">Reviews</a>
									</li>
									<li class="i-li i-child i-bc table-cell holder"
										style="width: 33.33%; float: left; border-radius: 0;"><a
										class="i-b1" href="#prod-qna" style="margin-left: 0;">Q&A</a>
									</li>
								</ul>
							</div>
						</div>
					</div>

					<div style="position: relative">
						<div class="iseemore_detail fr-view shop_view_body"
							style="font-size: 12px;">
							<a name="prod-detail" style="top: 0; position: absolute;"></a>
							<p>This basket is from danish brand, Ferm Living.</p>
							<p>
								<br>
							</p>
							<p>Bringing the traditional basket weaving technique to
								pottery,</p>
							<p>Our handmade Braided Baskets recreate the familiar feel of
								woven</p>
							<p>containers. This multifunctional design can be put to use
								as a plant pot,</p>
							<p>Fruit bowl or decorative focal point in a room. Each piece
								is unique.</p>
							<p>
								<br>
							<p>
							<p>It is made of glazed ceramic.</p>
							<p>
								<br>
							<p>
							<p>Wipe with a damp cloth after use.</p>
						</div>
					</div>
					<!------------------------------ Reviews ------------------------------>
					<div class="detail_review">
						<div class="_detail_review">
							<a name="prod-reviews" style="top: 0; position: absolute;"></a>
							<div class="text-bold" style="padding-bottom: 15px;">Reviews</div>
						</div>
						<div class="_review_wrap" style="padding-bottom: 30px;">
							<div class="i-font-70"
								style="font-size: 10px !important; margin-bottom: 8px !important;">
								Reviews were written by customers who bought this item.</div>
							<a Onclick="" class="btn2 btn-primary2"
								style="margin-right: 3px; font-size: 10px;">Write a review</a>
							<!------- link X ------->
						</div>
						<div class="no_comment_box text-center">
							<div class="" style="color: rgba(0, 0, 0, 0.4); margin: 30px;">No
								revies yet.</div>
						</div>
						<nav class="paging-block"></nav>
					</div>
					<!------------------------------ QnA ------------------------------>
					<div class="detail_review">
						<div class="_detail_review">
							<a name="prod-qna" style="top: 0; position: absolute;"></a>
							<div class="text-bold" style="padding-bottom: 15px;">Q&A</div>
						</div>
						<div class="_review_wrap" style="padding-bottom: 30px;">
							<div class="i-font-70"
								style="font-size: 10px !important; margin-bottom: 8px !important;">
								Contact us if you have any questions about this product.</div>
							<div class="flexed">
								<a Onclick="" class="btn2 btn-primary2"
									style="margin-right: 3px; font-size: 10px; align-items: center;">Ask
									a question</a>
								<!------- link X ------->
								<a Onclick="" class="btn1 btn-w2"
									style="width: 10%; font-size: 11px !important;">Support</a>
								<!------- link X ------->
							</div>
						</div>
						<div class="no_comment_box text-center">
							<div class="" style="color: rgba(0, 0, 0, 0.4); margin: 30px;">No
								questions asked yet.</div>
						</div>
						<nav class="paging-block"></nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!------------------ Section3 ------------------->
	<div class="inside container"
		style="padding-top: 60px; padding-bottom: 120px;">
		<div class="s3_col_dz s3_col_dz_w">
			<div class="text_w text_w text_wrap">
				<div class="text_table" style="width: 100%;">
					<h1 style="text-align: center;">You May Also Like</h1>
				</div>
			</div>
		</div>
		<div class="s3_row thumb-row">
			<div class="s3_col_dz s3_col_dz_w">
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 282px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 10px; height: auto; margin-top: 0;">
							<a href="idx1"> <img
								src="${pageContext.request.contextPath}/resources/img/i1.png"
								style="width: 100%; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="idx1">
								<h2 style="font-weight: normal; color: #000; font-size: 14px;">
									Bouquet Optic Vase - Clear</h2>
								<div class="">
									<p class="s3_pay" style="color: #000; font-size: 11px;">KRW
										18,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 282px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 10px; height: auto; margin-top: 0;">
							<a href="idx2"> <img
								src="${pageContext.request.contextPath}/resources/img/i2.png"
								style="width: 100%; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="idx2">
								<h2 style="font-weight: normal; color: #000; font-size: 14px;">
									Aqua Culture Large Vase</h2>
								<div class="">
									<p class="s3_pay" style="color: #000; font-size: 11px;">KRW
										31,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 282px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 10px; height: auto; margin-top: 0;">
							<a href="idx3"> <img
								src="${pageContext.request.contextPath}/resources/img/i3.png"
								style="width: 100%; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="idx3">
								<h2 style="font-weight: normal; color: #000; font-size: 14px;">
									Geometric Shapes - Sphere, Cube</h2>
								<div class="">
									<p class="s3_pay" style="color: #000; font-size: 11px;">KRW
										18,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 282px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 10px; height: auto; margin-top: 0;">
							<a href="idx4"> <img
								src="${pageContext.request.contextPath}/resources/img/i4.png"
								style="width: 100%; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="idx4">
								<h2 style="font-weight: normal; color: #000; font-size: 14px;">
									Bouquet Optic Vase - Clear</h2>
								<div class="">
									<p class="s3_pay" style="color: #000; font-size: 11px;">KRW
										38,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!------------------ Footer ------------------->
	<div id="footer">
		<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>