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
<script type="text/javascript" src="js/auth.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="css/form.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<link rel="stylesheet" type="text/css" href="css/etc.css">
<link rel="stylesheet" type="text/css" href="css/float.css">

</head>
<body>
	<!-- floating menu -->
	<div id="floatMenu">
		<ul>
			<li><a class="home" title="home" href="../website"></a></li>
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<li><a class="join" title="join" href="join"></a></li>
					<li><a class="login" title="login" href="login"></a></li>
				</c:when>
				<c:otherwise>
					<li><a class="mypage" title="my page" href="mypage"></a></li>
					<li><a class="logout" title="logout" href="user/logout"></a></li>
				</c:otherwise>
			</c:choose>
			<li><a class="up" title="up" href="javascript:goToTop()"></a></li>
			<li><a class="down" title="down" href="javascript:goToBottom()"></a></li>
		</ul>
	</div>
	<header id="header">
		<div id="header_box">
			<div id="logo">
				<h1>
					<a href="../website"> <img src="img/main_logo.png">
					</a>
				</h1>
			</div>
			<nav class="header_nav">
				<ul>
					<li><a href="about">ABOUT US</a></li>
					<li><a href="product">PRODUCTS</a>
						<ul>
							<li><a href="s2/s2_1.php">AROMATIC SOLVENT</a></li>
							<li><a href="s2/s2_2_1.php">ALIPHATIC HYDROCARBON</a></li>
							<li><a href="s2/s2_3.php">PETROLEUM SOLVENT</a></li>
							<li><a href="s2/s2_4.php">LUBE BASE OIL</a></li>
							<li><a href="s2/s2_5.php">SYNTHETIC RESIN</a></li>
							<li><a href="s2/s2_6.php">ADDITIVE</a></li>
							<li><a href="s2/s2_7.php">LUBRICANT ADDITVE</a></li>
							<li><a href="s2/s2_8.php">ELECTRONIC SOLVENT</a></li>
							<li><a href="s2/s2_9.php">ABRASIVE</a></li>
						</ul></li>
					<li><a href="contact">CONTACT US</a></li>
					<li><c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<a href="login">COMMUNITY</a>
							</c:when>
							<c:otherwise>
								<a href="board">COMMUNITY</a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</nav>
		</div>
	</header>

	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">LOGIN</h2>
			<ul class="ln">
				<li class="current"><a href="login">LOGIN</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">LOGIN</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">LOGIN</span>
				</div>

				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box form_div">
							<h5 class="info_msg">Please enter your ID and password.</h5>
							<form class="login_form" action="user/auth" method ="post">
								<input type="text" class="login" name="id" placeholder="USER ID">
								<input type="password" class="login" name="password" placeholder="PASSWORD">
							</form>
							<Button class="fadeIn fourth form_btn" onClick="location.href='join'">JOIN</Button>
							<Button id="login_btn" class="fadeIn fourth form_btn">LOGIN</Button>
							<p class="auth_msg hidden">Check user ID or Password.</p>
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