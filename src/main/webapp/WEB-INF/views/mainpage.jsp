<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>chemsolution</title>
<meta name="description" content="용제,가소제부산물,윤활유,합성수지,연마제">
<meta name="google-site-verification"
	content="3SrFVjVVVis-4IHnIQKO3WyeSGkc6DqUGmQfoOq9aZ8" />
<!-- SNS관련 메타태그 -->
<!-- <meta property="og:type" content="website" />
<meta property="og:title" content="chemsolution" />
<meta property="og:description" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" /> -->

<!--[if lte IE 8]>
	<script src="http://chemsolution.net/js/html5.js"></script>
<![endif]-->
<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "http://chemsolution.net";
	var g5_bbs_url = "http://chemsolution.net/bbs";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_editor = "";
	var g5_cookie_domain = "";
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/float.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<link rel="stylesheet" type="text/css" href="css/cnt.css">
<link rel="stylesheet" type="text/css" href="css/bbs.css">
<link rel="stylesheet" type="text/css" href="css/etc.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/float.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
    <c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<section id="main_visual" class="">
		<article class="main_visual_area">
			<ul style="margin: 0px; padding: 0px;" class="main_visual">
				<li
					style="background: url('img/main_visu1.jpg') no-repeat center top; height: 528px; left: 0px;"></li>
				<li
					style="background: url('img/main_visu2.jpg') no-repeat center top; height: 528px; left: 0px;"></li>
				<li
					style="background: url('img/main_visu3.jpg') no-repeat center top; height: 528px; left: 0px;"></li>
			</ul>
		</article>
		<script>
			$(document).ready(function() {
				var m_visual_slide = $(".main_visual").bxSlider({
					mode : "fade",
					auto : true,
					controls : false,
					autoControls : false,
					pager : true,
					speed : 3000,
					pause : 0
				});
			});
		</script>
	</section>

	<section id="main_cnt_wrap">
		<div id="main_cnt" class="center">
			<h2>
				<span>ChemSolution</span>
			</h2>
			<div id="cnt_about">
				<a href="about">
					<div id="cnt_a_t"></div> <span class="blind"></span>
					<div id="cnt_a_b">
						<span>ABOUT US</span>
					</div>
					<div class="plus_b"></div>
				</a>
			</div>
			<div id="cnt_products">
				<a href="product">
					<div id="cnt_p_t"></div> <span class="blind"></span>
					<div id="cnt_p_b">
						<span>PRODUCTS</span>
					</div>
					<div class="plus_b"></div>
				</a>
			</div>
			<div id="cnt_contact">
				<a href="contact">
					<div id="cnt_c_t"></div> <span class="blind"></span>
					<div id="cnt_c_b">
						<span>CONTACT US</span>
					</div>
					<div class="plus_b"></div>
				</a>
			</div>
		</div>

	</section>



	<!-- 컨텐츠 : 종료 -->
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
	<a href="index.php?device=mobile" id="device_change">모바일 버전으로 보기</a>


	<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
	<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>