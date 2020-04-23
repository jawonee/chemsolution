<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" type="text/css" href="/website/assets/css/layout.css">
<link rel="stylesheet" type="text/css" href="/website/assets/css/sub.css">
<link rel="stylesheet" type="text/css" href="/website/assets/css/etc.css">
<link rel="stylesheet" type="text/css" href="/website/assets/css/board.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
	<c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<c:choose>
		<c:when test="${boardItem ne null}">
			<c:set var="category" value="${boardItem.categoryName}" />
		</c:when>
		<c:otherwise>
			<c:set var="referer" value="${fn:split(header.referer, '/')}" />
			<c:set var="category" value="${referer[fn:length(referer)-1]}" />
		</c:otherwise>
	</c:choose>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">COMMUNITY</h2>
			<ul class="ln">
			 	<li <c:if test="${category eq 'notice'}">class="current"</c:if>><a href="/website/board/notice" class="anchor">NOTICE</a></li>
				<li <c:if test="${category eq 'business'}">class="current"</c:if>><a href="/website/board/business" class="anchor">BUSINESS INQUIRY</a></li>
				<li <c:if test="${category eq 'product'}">class="current"</c:if>><a href="/website/board/product" class="anchor">PRODUCT INQUIRY</a></li>
				<li <c:if test="${category eq 'etc'}">class="current"</c:if>><a href="/website/board/etc" class="anchor">ETC</a></li>
			 </ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">COMMUNITY</h3>
				<div class="process">
					<span class="home">HOME</span> 
					<span class="arrow"><img src="/website/assets/img/arrow.png" alt="" /></span> 
					<span class="path">COMMUNITY</span>
					<span class="arrow"><img src="/website/assets/img/arrow.png" alt="" /></span> 
					<span class="path">
						<c:choose>
							<c:when test="${category eq 'notice'}">notice</c:when>
							<c:when test="${category eq 'business'}">business</c:when>
							<c:when test="${category eq 'product'}">product</c:when>
							<c:when test="${category eq 'etc'}">etc</c:when>
						</c:choose>
					</span>
				</div>
				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box board_area">
							<h5 class="info_msg">Enter your question.</h5>
							<form class="board_form" action="/website/board/submit" method="post">
								<c:if test="${boardItem ne null}">
									<input type="hidden" name="_method" value="put" />
									<input type="hidden" name="id" value="${boardItem.id}" />
								</c:if>
								<table class="write_tbl">
									<tr>
										<th class="colum_group">category</th>
										<td class="input_group">
											<select class="b_category" name="categoryId">
												<option value="1" <c:if test="${category eq 'notice'}">selected</c:if>>notice</option>
												<option value="2" <c:if test="${category eq 'business'}">selected</c:if>>business</option>
												<option value="3" <c:if test="${category eq 'product'}">selected</c:if>>product</option>
												<option value="4" <c:if test="${category eq 'etc'}">selected</c:if>>etc</option>
											</select>
										</td>
									</tr>
									<tr>
										<th class="colum_group">subject</th>
										<td class="input_group">
											<input type="text" class="b_subject" name="subject" value="${boardItem.subject}">
										</td>
									</tr>
									<tr>
										<th class="colum_group">content</th>
										<td class="input_group">
											<textarea class="b_content" name="content">${boardItem.content}</textarea>
										</td>
									</tr>
								</table>
								<div class="btn_area">
									<input type="button" class="cancel_btn" onclick="window.history.back()" value="cancel"></input> 
									<input type="submit" id="write_btn" class="form_btn" value="write"></input>
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