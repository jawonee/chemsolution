<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>chemsolution</title>
<meta name="description" content="용제,가소제부산물,윤활유,합성수지,연마제">
<meta name="google-site-verification" content="3SrFVjVVVis-4IHnIQKO3WyeSGkc6DqUGmQfoOq9aZ8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<link rel="stylesheet" type="text/css" href="css/etc.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
	<c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">ABOUT US</h2>
			<ul class="ln">
				<li class="current"><a href="about">ABOUT US</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">ABOUT US</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">ABOUT US</span>
				</div>
				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box">
							<h5>Welcome to Chemsolution Co., Ltd.</h5>
							<p>We have a lot of experiences and skills in chemical area.
								Our company believes in the customer-first policy, so we export
								and import the best quality chemical products. The products we
								deal with are isoparaffin, hydrocarbon, aromatic hydrocarbon,
								dearomatic hydrocarbon, naphthenic hydrocarbon and so on. We
								always do our best to supply our customers eco-friendly products
								that are safe for human and the environment.</p>
						</div>
						<div class="img_box">
							<img src="img/sub01_img.jpg">
						</div>
						<!-- img_box -->
					</div>
					<!-- s0101_top_box -->

					<div class="s0101_bottom_box">
						<div class="b_t">
							<ul>
								<li class="one">2017</li>
								<li class="two">12</li>
								<li class="th_t">Received "One million dollars Export
									Tower" award on "The 54th Trade day" hosted by KITA<br>
									(Korea International Trade Association)
								</li>
							</ul>
						</div>
						<div class="b_line"></div>
						<div class="b_t">
							<ul>
								<li class="one"></li>
								<li class="two">07</li>
								<li class="th">Achieved $2,500,000 in export in 2017</li>
							</ul>
						</div>
						<div class="b_line"></div>
						<div class="b_t">
							<ul>
								<li class="one">2015</li>
								<li class="two">05</li>
								<li class="th">We were authorized to become a solvent
									agency</li>
							</ul>
						</div>
						<div class="b_line"></div>
						<div class="b_t">
							<ul>
								<li class="one">2013</li>
								<li class="two">03</li>
								<li class="th">Chemsolution Co.,Ltd. was first established</li>
							</ul>
						</div>
						<div class="b_line"></div>
					</div>
					<!-- s0101_bottom_box -->
				</article>
			</div>
		</div>
	</div>
	<footer id="footer_wrap">
		<div id="footer" class="center">
			<p>Company Name : ChemSolution Co., Ltd.</p>
			<p>Address : 12, Seongsan-ro, Yeosu-si, Jeollanam-do, Republic of
				Korea (59642)</p>
			<p>Tel : +82-61-686-8815 Fax : +82-61-686-8814</p>
			<span>Copyright &copy; 2017 chemsolution Co., Ltd All rights
				reserved.</span>
		</div>
	</footer>
	<div class="layer_popup">
		<iframe src="" name="iFrame_area"></iframe>
	</div>
	<a href="http://chemsolution.net/s1/s1_1.php?device=mobile"
		id="device_change">모바일 버전으로 보기</a>
</body>
</html>