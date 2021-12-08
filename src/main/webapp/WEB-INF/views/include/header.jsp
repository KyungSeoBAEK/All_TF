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
<body data-spy="scroll" data-target="#navbarResponsive" style="clear:both; ">
	<div id="#sticker" class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<header id="header_wrap" class="navbar text-uppercase">
						<div class="navbar-header main-menu" style="width: 40%;">
							<ul class="nav navbar-nav">
								<li class="dropdown"><a class="" href="pots"><span style="text-transform : capitalize">Pots</span></a></li>
								<li class="dropdown"><a class="" href="plants"><span style="text-transform : capitalize">Plants</span></a>
								</li>
								<li class="dropdown"><a class="" href="flowers"><span style="text-transform : capitalize">Flowers</span></a>
								</li>
								</li>
								<li class="dropdown"><a class="" href="toolshed"><span style="text-transform : capitalize">Tool Shed</span></a>
								</li>
							</ul>
						</div>
						<div class="inline-col-group" style="width: 20%;">
							<div class="inline-col">
								<a href="index"> <span class="sr-only">사이트 로고</span> <img
									src="${pageContext.request.contextPath}/resources/img/logo.png"
									alt="Anthologia" width="200"
									style="max-width: 100%; height: auto; image-rendering: -webkit-optimize-contrast;">
								</a>
							</div>
						</div>

						<div class="inline-col-group  main-menu" style="width: 40%;">
							<div class="inline-col-group-right widget">
								<!-- <div class="inline-blocked">
									<a href="#"> <span class="inline-blocked padding"><span style="text-transform : capitalize">Search</span></span>
										<span class="sr-only"></span>
									</a>
								</div> -->


								<div class="inline-blocked">
									<div class="inline-col-group-right widget " style="">
										<a href="form_login"> <span class="inline-blocked padding"><span style="text-transform : capitalize">Login</span></span>
										</a>
									</div>
								</div>
								<div class="inline-blocked">
									<a href="list_cart"> <span class="inline-blocked padding"><span style="text-transform : capitalize">Bag</span></span>
									</a>
								</div>
							</div>
						</div>
					</header>
				</div>
			</div>
		</div>
	</div>


</body>
</html>