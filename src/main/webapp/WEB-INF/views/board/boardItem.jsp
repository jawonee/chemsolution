<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>chemsolution</title>
<meta name="description" content="용제,가소제부산물,윤활유,합성수지,연마제">
<meta name="google-site-verification" content="3SrFVjVVVis-4IHnIQKO3WyeSGkc6DqUGmQfoOq9aZ8" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
<script type="text/javascript" src="../../js/board.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="../../css/layout.css">
<link rel="stylesheet" type="text/css" href="../../css/sub.css">
<link rel="stylesheet" type="text/css" href="../../css/etc.css">
<link rel="stylesheet" type="text/css" href="../../css/board.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
    <c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">COMMUNITY</h2>
			<ul class="ln">
				<li <c:if test="${boardItem.categoryName eq 'notice'}">class="current"</c:if>><a href="../../board/notice" class="anchor">NOTICE</a></li>
				<li <c:if test="${boardItem.categoryName eq 'business'}">class="current"</c:if>><a href="../../board/business" class="anchor">BUSINESS INQUIRY</a></li>
				<li <c:if test="${boardItem.categoryName eq 'product'}">class="current"</c:if>><a href="../../board/product" class="anchor">PRODUCT INQUIRY</a></li>
				<li <c:if test="${boardItem.categoryName eq 'etc'}">class="current"</c:if>><a href="../../board/etc" class="anchor">ETC</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">COMMUNITY</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="../../img/arrow.png" alt="" /></span> <span class="path">COMMUNITY</span><span
						class="arrow"><img src="../../img/arrow.png" alt="" /></span> <span
						class="path">${boardItem.categoryName }</span>
				</div>
				<article class="s0101 clear">
					<div class="item_area">
						<div id="q_content">
							<table>
<%-- 								<c:choose>
									<c:when test="${boardItem.answerFlag eq 1}">
										<li class="q_answer">답변완료</li>
									</c:when>
									<c:otherwise>
										<li class="q_answer">답변대기중</li>
									</c:otherwise>
								</c:choose> --%>
								
								<tr>
									<th class="colum_group">id</th>
									<td class="input_group"><span class="b_id">${boardItem.memberId }</span></td>
								</tr>
								<tr>
									<th class="colum_group">date</th>
									<td class="input_group"><span class="b_date">${boardItem.createDate }</span><c:if test="${boardItem.createDate ne boardItem.modifyDate}">
									<span class="q_modifyDate">(Modified on ${boardItem.modifyDate })</span></c:if></td>
								</tr>
								<tr>
									<th class="colum_group">subject</th>
									<td class="input_group"><span class="b_subject">${boardItem.subject }</span></td>
								</tr>
								<tr>
									<th class="colum_group">content</th>
									<td class="input_group"><div class="b_content">${boardItem.content }</div></td>
								</tr>
							</table>
						</div>
						<br><hr>
						<div class="comment">
							<c:if test="${not empty comment && boardItem.categoryName ne 'notice'}">
								<span class="reply">comment</span>
								<img class="reply" src="../../img/reply.png" alt="" />
								<ul>
									<li class="c_id">${comment.memberId }</li>
									<c:if test="${sessionScope.loginUser.grade eq 1}">
										<a href="javascript:;" class="c_delete">delete</a>
									</c:if>
									<li class="c_createDate"> ( ${comment.createDate } )</li>
									<li class="c_content">${comment.content }</li>
								</ul>
<%-- 								<c:if test="${sessionScope.loginUser.grade eq 1}">
										<button class="c_delete">delete</button>
								</c:if> --%>
							</c:if>
							<c:if test="${sessionScope.loginUser.grade eq 1 && boardItem.answerFlag eq 0 && boardItem.categoryId ne 1}">
								<div class="comment" class="">
									<form class="comment_form" action="${boardItem.id }/comment/write" method="post">
										<textarea class="c_content" name="content"></textarea>
										<input type="submit" class="c_write" value="write"></input>
									</form>
								</div>
							</c:if>
						</div>
						<div class="btn_area">
							<button class="" onClick="location.href='../${boardItem.categoryName }'">back</button>
							<c:if test="${sessionScope.loginUser.grade eq 1 || sessionScope.loginUser.id eq boardItem.memberId}">
								<button class="q_delete">delete</button>
								<button class="q_modify" onClick="location.href='${boardItem.id }/modify'">modify</button>
							</c:if>
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