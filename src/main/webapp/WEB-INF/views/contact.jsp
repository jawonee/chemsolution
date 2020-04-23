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
			<h2 class="h2_label">CONTACT US</h2>
			<ul class="ln">
				<li class="current"><a href="contact">CONTACT US</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">CONTACT US</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">CONTACT</span>

				</div>
				<article class="s0301 clear">

					<div class="map_wrap" id="gg_map">
						<script
							src="https://maps.google.com/maps/api/js?key=AIzaSyC0T00zggiA9EDiEAYjfW8F_dFFf4Ui5JU&language=en&region=EN"></script>

						<script type="text/javascript">
							function google_map2(mapid, addr) {
								var geocoder = new google.maps.Geocoder();
								geocoder
										.geocode(
												{
													'address' : addr
												},
												function(results, status) {
													if (status == google.maps.GeocoderStatus.OK) {
														var map = new google.maps.Map(
																document
																		.getElementById(mapid),
																{
																	zoom : 15,
																	center : results[0].geometry.location,
																	mapTypeId : google.maps.MapTypeId.ROADMAP
																});
														var marker = new google.maps.Marker(
																{
																	map : map,
																	position : map
																			.getCenter()
																});
													}
												});
							}
							$(document)
									.ready(
											function() {
												google_map2("gg_map",
														"12, Seongsan-ro, Yeosu-si, Jeollanam-do, Republic of Korea");
											});
						</script>

					</div>
				</article>
				<div class="s0301_map_text">
					<div class="mp_l">
						<img src="img/company_name.png">Company Name
					</div>
					<div class="mp_r">ChemSolution Co., Ltd.</div>
				</div>
				<div class="s0301_map_text">
					<div class="mp_l">
						<img src="img/address.png">Address(Zip Code)
					</div>
					<div class="mp_r">12, Seongsan-ro, Yeosu-si, Jeollanam-do,
						Republic of Korea(59642)</div>
				</div>
				<div class="s0301_map_text">
					<div class="mp_l">
						<img src="img/tel.png">Tel
					</div>
					<div class="mp_r">82-61-6868815</div>
				</div>
				<div class="s0301_map_text">
					<div class="mp_l">
						<img src="img/fax.png">Fax
					</div>
					<div class="mp_r">82-61-6868814</div>
				</div>
				<div class="s0301_map_text">
					<div class="mp_l">
						<img src="img/e-mali.png">E-Mail
					</div>
					<div class="mp_r">chemsolution1004@naver.com</div>
				</div>
				<div class="s0301_map_text">
					<div class="mp_l over2">
						<img src="img/website.png">Website
					</div>
					<div class="mp_r over">
						<span>tradekorea</span>chemsolution.tradekorea.com <img
							src="img/dot.png"><span>alibaba.com</span>kr1280696337blgv.trustpass.alibaba.com
					</div>
				</div>
				<div class="dot"></div>
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