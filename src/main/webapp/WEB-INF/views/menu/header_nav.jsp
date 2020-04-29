<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Navigation Bar</title>
</head>
<body>
	<header id="header">
		<div id="header_box">
			<div id="logo">
				<h1>
					<a href="/website"> 
						<img src="/website/assets/img/main_logo.png">
					</a>
				</h1>
			</div>
			<nav class="header_nav">
				<ul>
					<li><a href="/website/about">ABOUT US</a></li>
					<li><a href="/website/product">PRODUCTS</a>
						<ul>
							<li><a href="/website/product/s2_1">AROMATIC SOLVENT</a></li>
							<li><a href="/website/product/s2_2_1">ALIPHATIC	HYDROCARBON</a></li>
							<li><a href="/website/product/s2_3">PETROLEUM SOLVENT</a></li>
							<li><a href="/website/product/s2_4">LUBE BASE OIL</a></li>
							<li><a href="/website/product/s2_5">SYNTHETIC RESIN</a></li>
							<li><a href="/website/product/s2_6">ADDITIVE</a></li>
							<li><a href="/website/product/s2_7">LUBRICANT ADDITVE</a></li>
							<li><a href="/website/product/s2_8">ELECTRONIC SOLVENT</a></li>
							<li><a href="/website/product/s2_9">ABRASIVE</a></li>
						</ul></li>
					<li><a href="/website/contact">CONTACT US</a></li>
					<li><a href="/website/board">COMMUNITY</a>
 						<ul>
							<li><a href="/website/board/notice">NOTICE</a></li>
							<li><a href="/website/board/business">BUSINESS INQUIRY</a></li>
							<li><a href="/website/board/product">PRODDUCT INQUIRY</a></li>
							<li><a href="/website/board/etc">ETC</a></li>
						</ul> 
<!-- 						<ul>
							<li><a href="/website/board/notice">NOTICE</a></li>
							<li><a href="/website/board/qa">Q & A</a></li>
						</ul> -->
					</li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>