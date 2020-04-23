<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="js/check.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<link rel="stylesheet" type="text/css" href="css/etc.css">
<link rel="stylesheet" type="text/css" href="css/form.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
    <c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">JOIN</h2>
			<ul class="ln">
				<li class="current"><a href="join">JOIN</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">JOIN</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">JOIN</span>
				</div>

				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="form_div">
							<h5 class="info_msg">REGISETER</h5>
							<form class="join_form" action="user" method="POST">
								<table>
									<tr>
										<th><span class="form_group">ID</span></th>
										<td>
											<input type="text" class="join" name="id" placeholder="ID">
											<img class="valid_result hidden" src="">
											<span class="valid_msg">영문소문자/숫자 조합, 4~16자</span>
										</td>
									</tr>
									<tr>
										<th><span class="form_group">PASSWORD</span></th>
										<td>
											<input type="password" class="join" name="password" placeholder="PASSWORD">
											<img class="valid_result hidden" src="">
											<span class="valid_msg">영문소문자/숫자  조합, 8자~16자</span>
										</td>
									</tr>
									<tr>
										<th><span class="form_group">NAME</span></th>
										<td>
											<input type="text" class="join" name="name" placeholder="NAME">
											<img class="valid_result hidden" src="">
											<span class="valid_msg">한글 2~10자</span>
										</td>
									</tr>
									<tr>
										<th><span class="form_group">TEL</span></th>
										<td>
											<input type="text" class="join" name="tel" placeholder="TEL">
											<img class="valid_result hidden" src="">
											<span class="valid_msg">010-***(*)-**** 형식</span>
										</td>
									</tr>
									<tr>
										<th><span class="form_group">EMAIL</span></th>
										<td>
											<input type="text" class="join" name="email" placeholder="E-MAIL">
											<img class="valid_result hidden" src="">
											<span class="valid_msg">***@***.*** 형식</span>
										</td>
									</tr>

								</table>
								<!-- <input type="button" class="join_btn" onclick="window.history.back()" value="cancel"></input> -->
								<input type="submit" class="join_btn" value="join">
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