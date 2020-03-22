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
<link rel="stylesheet" type="text/css" href="/website/assets/css/form.css">
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
			<h2 class="h2_label">COMMUNITY</h2>
			<ul class="ln">
				<li class="current"><a href="board/notice">NOTICE</a></li>
				<li><a href="board/business">BUSINESS Q&A</a></li>
				<li><a href="board/product">PRODDUCT Q&A</a></li>
				<li><a href="board/etc">ETC</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">COMMUNITY</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">COMMUNITY</span>
				</div>
				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box join_div">
							<h5 class="info_msg">Enter your question.</h5>
							<form class="form_area" action="board/submit" method="POST">
								<select name="categoryId" size="1">
									<option value="1">notice</option>
									<option value="2">business Q&A</option>
									<option value="3">product Q&A</option>
									<option value="4">etc</option>
								</select>
								<input type="text" class="q_subject" name="subject" placeholder="subject"></input>
								<textarea class="q_content" name="content" placeholder="content.."></textarea>
								<div class="btn_area">
									<button class="form_btn" onClick="location.href='javascript:history.back()'">Cancel</button>
									<input type="submit" id="write_btn" class="form_btn" value="WRITE"></input>
								</div>
							</form>
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