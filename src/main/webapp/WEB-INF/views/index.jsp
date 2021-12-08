<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Flower Shop Portfolio</title>
<!-- Site CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- bootstrap  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">
</head>
<body data-spy="scroll" data-target="#navbarResponsive"
	style="background-color: #fbf7f1;">
	<div id="header">
		<%@ include file="include/header.jsp"%>
	</div>
	<!------------- Section main -------------->
	<div class="container section_w" style="">
		<div class="row">
			<div class="col-dz col-dz-w">
				<div class="widget widget.image img_wrap">
					<img id="mainB"
						src="${pageContext.request.contextPath}/resources/img/main.png"
						class="img_s">
					<div class="txt"
						style="position: absolute; top: 50%; left: 50%; margin-top: -326px; margin-left: -425.5px; width: 851px; height: 652px;">
						<span class="txt_body"
							style="text-align: center; vertical-align: middle; height: 652px; font-size: 54px; display: table-cell;">
							Any gardener's <br> dream indoor oasis
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--------------- Section1 ---------------->
	<div class="section_wrap s1_p inside">
		<div class=" col-dz col-dz-w" style="">
			<div class="text_w">
				<h2 style="text-align: center;">Welcome to the Anthologia
					world!</h2>
				<br>
				<h2 style="text-align: center;">For your home add life and help
					clean the air.</h2>
			</div>
			<div class="widget_i col-dz col-dz-w" style="padding-top: 40px;">
				<div style="text-align: center; overflow: hidden;">
					<img id="Section1_i"
						src="${pageContext.request.contextPath}/resources/img/section1.png"
						style="visibility: visible; image-rendering: -webkit-optimize-contrast; display: inline-block; width: 550px; height: 188px; margin: 0px auto;">
				</div>
			</div>
		</div>
		<div class="s2_row s2_p25">
			<div style="width: 100%; min-height: 1px; height: 30px;"></div>
			<!--  여백  -->
		</div>
	</div>
	<!--------------- Section2 ---------------->

	<!---------- Pots ------------>
	<div class="container widget"
		style="position: relative; display: block;">
		<div class="inside">
			<div
				style="background-size: cover; background-repeat: no-repeat; left: 0; top: 0; right: 0; bottom: 0;">
				<div class="s2_p25" style="float: left; position: relative;">
					<div class="s2_row s2_p25">
						<div style="width: 100%; min-height: 1px; height: 30px;"></div>
						<!--  여백  -->
					</div>
					<div class="s2_row">
						<div class="s2_p25">
							<a href="pots" style="display: block;"> <!-- *************  태그 경로 **************** -->
								<div class="hover_image">
									<div class="img_wrap">

										<img id="Pots"
											src="${pageContext.request.contextPath}/resources/img/Pots.png"
											style="visibility: visible; image-rendering: -webkit-optimize-contrast; display: inline-block; width: 440px; height: 650px; margin: 0.3px auto;">
										<div class="txt"
											style="position: relative; margin: -650px auto auto; width: 440px; height: 650px; top: 0px; left: 0px;">
											<span class="txt_body2"
												style="text-align: center; vertical-align: middle; height: 650px; font-size: 40px;">
												<p style="line-height: 0.8; font-size: 40px;">Pots</p>
												<p style="font-size: 10px;">
													<u>shop now</u>
												</p>
											</span>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>

				</div>
				<!---------- Plants ------------>
				<div class="s2_p25"
					style="float: left; position: relative; padding-left: 80px;">
					<div class="s2_row s2_p25">
						<div style="width: 100%; min-height: 1px; height: 120px;"></div>
						<!--  여백  -->
					</div>
					<div class="s2_row">
						<div class="s2_p25">
							<a href="plants" style="display: block;"> <!-- *************  태그 경로 **************** -->
								<div class="hover_image">
									<div class="img_wrap">

										<img id="Plants"
											src="${pageContext.request.contextPath}/resources/img/Plants.png"
											style="visibility: visible; image-rendering: -webkit-optimize-contrast; display: inline-block; width: 340px; height: 480px; margin: 0.3px auto;">
										<div class="txt"
											style="position: relative; margin: -480px auto auto; width: 340px; height: 480px; top: 0px; left: 0px;">
											<span class="txt_body2"
												style="text-align: center; vertical-align: middle; height: 480px; font-size: 40px;">
												<p style="line-height: 0.8; font-size: 40px;">Plants</p>
												<p style="font-size: 10px;">
													<u>shop now</u>
												</p>
											</span>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--------------- Section2 2번째 이미지 나눔 ---------------->

	<!---------- Flowers ------------>
	<div class="container widget" style="padding-top: 80px;">
		<div class="inside">
			<div
				style="background-size: cover; background-repeat: no-repeat; left: 0; top: 0; right: 0; bottom: 0;">
				<div class="s2_p25" style="float: left; position: relative;">
					<div class="s2_row s2_p25">
						<div style="width: 100%; min-height: 1px; height: 30px;"></div>
						<!--  여백  -->
					</div>
					<div class="s2_row">
						<div class="s2_p25" style="padding-left: 90px;">
							<a href="flowers" style="display: block;"> <!-- *************  태그 경로 **************** -->
								<div class="hover_image">
									<div class="img_wrap">

										<img id="Flowers"
											src="${pageContext.request.contextPath}/resources/img/Flowers.png"
											style="visibility: visible; image-rendering: -webkit-optimize-contrast; display: inline-block; width: 330px; height: 500px; margin: 0.3px auto;">
										<div class="txt"
											style="position: relative; margin: -500px auto auto; width: 330px; height: 500px; top: 0px; left: 0px;">
											<span class="txt_body2"
												style="text-align: center; vertical-align: middle; height: 500px; font-size: 40px;">
												<p style="line-height: 0.8; font-size: 40px;">Flowers</p>
												<p style="font-size: 10px;">
													<u>shop now</u>
												</p>
											</span>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>

				</div>
				<!---------- Tool Shed ------------>
				<div class="s2_p25"
					style="float: left; position: relative; padding-left: 20px;">
					<div class="s2_row">
						<div class="s2_p25">
							<a href="toolshed" style="display: block;"> <!-- *************  태그 경로 **************** -->
								<div class="hover_image">
									<div class="img_wrap">

										<img id="Tool"
											src="${pageContext.request.contextPath}/resources/img/Tool.png"
											style="visibility: visible; image-rendering: -webkit-optimize-contrast; display: inline-block; width: 500px; height: 750px; margin: 0.3px auto;">
										<div class="txt"
											style="position: relative; margin: -750px auto auto; width: 500px; height: 750px; top: 0px; left: 0px;">
											<span class="txt_body2"
												style="text-align: center; vertical-align: middle; height: 750px; font-size: 40px;">
												<p style="line-height: 0.8; font-size: 40px;">Tool Shed</p>
												<p style="font-size: 10px;">
													<u>shop now</u>
												</p>
											</span>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!------------------ Section3 ------------------->
	<div
		style="background-size: cover; background-repeat: no-repeat; position: absolute; left: 0; top: 0; right: 0; bottom: 0;"></div>
	<div class="inside container"
		style="padding-top: 120px; padding-bottom: 120px;">
		<div class="s3_col_dz s3_col_dz_w">
			<div class="text_w text_w text_wrap">
				<div class="text_table" style="width: 100%;">
					<h1 style="text-align: center;">Our Best Seller</h1>
				</div>
			</div>
		</div>
		<div class="s3_row thumb-row">
			<div class="s3_col_dz s3_col_dz_w">
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 268px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 25px; height: auto; margin-top: 0;">
							<a href="/shop view/?idx=1"> <!-- *********** 임시 매핑 ************ -->
								<img
								src="${pageContext.request.contextPath}/resources/img/i1.png"
								style="width: 218px; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="/shop view/?idx=1"> <!-- *********** 임시 매핑 ************ -->
								<h2 style="font-weight: normal; color: #000; font-size: 16px;">
									Bouquet Optic Vase - Clear</h2>
								<div class="">
									<p class="s3_pay" style="color: #000;">KRW 18,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 268px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 25px; height: auto; margin-top: 0;">
							<a href="/shop view/?idx=2"> <!-- *********** 임시 매핑 ************ -->
								<img
								src="${pageContext.request.contextPath}/resources/img/i2.png"
								style="width: 218px; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="/shop view/?idx=2"> <!-- *********** 임시 매핑 ************ -->
								<h2 style="font-weight: normal; color: #000; font-size: 16px;">
									Aqua Culture Large Vase</h2>
								<div class="">
									<p class="s3_pay" style="color: #000;">KRW 31,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 268px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 25px; height: auto; margin-top: 0;">
							<a href="/shop view/?idx=3"> <!-- *********** 임시 매핑 ************ -->
								<img
								src="${pageContext.request.contextPath}/resources/img/i3.png"
								style="width: 218px; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="/shop view/?idx=3"> <!-- *********** 임시 매핑 ************ -->
								<h2 style="font-weight: normal; color: #000; font-size: 16px;">
									Geometric Shapes - Sphere, Cube</h2>
								<div class="">
									<p class="s3_pay" style="color: #000;">KRW 18,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="s3_stage" style="">
					<div class="shop-grid s3_m0"
						style="float: left; width: 268px; margin-right: 0px;">
						<div class="s3_shop-item"
							style="width: 100%; padding: 0px 25px; height: auto; margin-top: 0;">
							<a href="/shop view/?idx=4"> <!-- *********** 임시 매핑 ************ -->
								<img
								src="${pageContext.request.contextPath}/resources/img/i4.png"
								style="width: 218px; height: 410px; opacity: 1; display: block;">
							</a>
						</div>
						<div class="s3_item-thumbs"
							style="line-height: 1.6; text-align: center;">
							<a href="/shop view/?idx=4"> <!-- *********** 임시 매핑 ************ -->
								<h2 style="font-weight: normal; color: #000; font-size: 16px;">
									Bouquet Optic Vase - Clear</h2>
								<div class="">
									<p class="s3_pay" style="color: #000;">KRW 38,000</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!------------------ Section4 ------------------->
	<div class=""
		style="padding-top: 120px; padding-bottom: 120px; background: rgba(255, 255, 255, 1);">
		<div class="container">
			<div class="s4_row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="text-center">
						<h2>#Follow Us</h2>
					</div>
				</div>
			</div>
			<div class="s4_row" style="padding-top: 90px;">
				<div class=" " style="float: left; width: 25%;">
					<div class="inside s4_wm" style="position: relative;">
						<a href="http://www.instagram.com" style="">
							<div class="img_wrap">
								<img
									src="${pageContext.request.contextPath}/resources/img/anthologia1.png"
									style="width: 250px; height: 250px; opacity: 1; display: block;">
								<div class="s4_hover-over"
									style="position: absolute; top: 50%; left: 50%; margin-top: -125px; margin-left: -125px; width: 250px; height: 250px;"></div>
								<div class="s4_hover-img"
									style="position: absolute; top: 50%; left: 50%; margin-top: -125px; margin-left: -125px; width: 250px; height: 250px;"></div>
							</div>
						</a>
					</div>
				</div>

				<div class=" " style="float: left; width: 25%;">
					<div class="inside s4_wm" style="position: relative;">
						<a href="http://www.instagram.com" style="">
							<div class="img_wrap">
								<img
									src="${pageContext.request.contextPath}/resources/img/anthologia2.png"
									style="width: 250px; height: 250px; opacity: 1; display: block;">
							</div>
						</a>
					</div>
				</div>

				<div class=" " style="float: left; width: 25%;">
					<div class="inside s4_wm" style="position: relative;">
						<a href="http://www.instagram.com" style="">
							<div class="img_wrap">
								<img
									src="${pageContext.request.contextPath}/resources/img/anthologia3.png"
									style="width: 250px; height: 250px; opacity: 1; display: block;">
							</div>
						</a>
					</div>
				</div>

				<div class=" " style="float: left; width: 25%;">
					<div class="inside s4_wm" style="position: relative;">
						<a href="http://www.instagram.com" style="">
							<div class="img_wrap">
								<img
									src="${pageContext.request.contextPath}/resources/img/anthologia4.png"
									style="width: 250px; height: 250px; opacity: 1; display: block;">
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!------------------ Footer ------------------->
	<div id="footer">
		<%@ include file="include/footer.jsp"%>
	</div>

</body>
</html>