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
<script type="text/javascript" src="js/float.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<link rel="stylesheet" type="text/css" href="css/etc.css">
<link rel="stylesheet" type="text/css" href="css/float.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
    <c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">PRODUCTS</h2>
			<ul class="ln">
				<li class="current"><a href="product">AROMATIC SOLVENT</a></li>
				<li class=""><a href="http://chemsolution.net/s2/s2_2_1.php">ALIPHATIC HYDROCARBON</a>
					<ul>
						<li class="current"><a href="http://chemsolution.net/s2/s2_2_1.php">- ISOPARAFFINIC HYDROCARBON</a></li>
						<li class=""><a href="http://chemsolution.net/s2/s2_2_2.php">- DEAROMATIC HYDROCARBON</a></li>
						<li class=""><a href="http://chemsolution.net/s2/s2_2_3.php">- NAPHTHENIC HYDROCARBON</a></li>
					</ul>
				</li>
				<li class=""><a href="http://chemsolution.net/s2/s2_3.php">PETROLEUM SOLVENT</a></li>
				<li class=""><a href="http://chemsolution.net/s2/s2_4.php">LUBE BASE OIL</a></li>
				<li class=""><a href="http://chemsolution.net/s2/s2_5.php">SYNTHETIC RESIN</a></li>
				<li class=""><a href="http://chemsolution.net/s2/s2_6.php">ADDITIVE</a>
				</li>
				<li class=""><a href="http://chemsolution.net/s2/s2_7.php">LUBRICANT ADDITVE</a></li>
				<li class=""><a href="http://chemsolution.net/s2/s2_8.php">ELECTRONIC SOLVENT</a></li>
				<li class=""><a href="http://chemsolution.net/s2/s2_9.php">ABRASIVE</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">PRODUCTS</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">PRODUCT</span>
				</div>
				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box">
							<h1>Products</h1>
						</div>
					</div>
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
	<a href="http://chemsolution.net/s3/s3_1.php?device=mobile"
		id="device_change">모바일 버전으로 보기</a>
</body>
</html>