<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script	src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="../css/layout.css">
<link rel="stylesheet" type="text/css" href="../css/sub.css">
<link rel="stylesheet" type="text/css" href="../css/etc.css">
<link rel="stylesheet" type="text/css" href="../css/board.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
    <c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">COMMUNITY</h2>
			<ul class="ln">
				<li <c:if test="${catName eq 'notice'}">class="current"</c:if>><a href="notice" class="anchor">NOTICE</a></li>
				<li <c:if test="${catName eq 'business'}">class="current"</c:if>><a href="business" class="anchor">BUSINESS INQUIRY</a></li>
				<li <c:if test="${catName eq 'product'}">class="current"</c:if>><a href="product" class="anchor">PRODUCT INQUIRY</a></li>
				<li <c:if test="${catName eq 'etc'}">class="current"</c:if>><a href="etc" class="anchor">ETC</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">COMMUNITY</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="../img/arrow.png" alt="" /></span> <span class="path">COMMUNITY</span><span
						class="arrow"><img src="../img/arrow.png" alt="" /></span> <span
						class="path">${catName}</span>
				</div>
				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box board_area">
							<h5 class="info_msg">${catName}
								<c:if test="${catName ne 'notice' && catName ne 'etc'}"> Inquiry</c:if>
							</h5>
							<div class="list_box">
								<div class="colum_group">
									<strong class="no">no</strong> <strong class="category">category</strong>
									<strong class="subject">subject</strong> <strong class="id">id</strong> <strong class="state">state</strong> <strong class="date">date</strong>
								</div>
								<ul class="board_list">
									<c:forEach items="${boardList}" var="list">
										<li class="board_item">
											<span class="b_no">${list.id }</span> 
											<span class="b_category">${list.categoryName }</span> 
											<a class="b_subject" href="article/${list.id }"><span>${list.subject }</span></a>
											<span class="b_id">${list.memberId }</span> 
											<c:choose>
												<c:when test="${list.answerFlag eq 1}">
													<span class="b_state complete">completed</span>
												</c:when>
												<c:when test="${list.categoryId eq 1}">
													<span class="b_state wait">-</span>
												</c:when>
												<c:otherwise>
													<span class="b_state wait">waiting</span>
												</c:otherwise>
											</c:choose><span class="b_date">${list.createDate }</span>
										</li>
									</c:forEach>
									<c:if test="${fn:length(boardList) eq 0}">
										<li class="no_items">No results were found for your search.</li> 
									</c:if>
								</ul>
							</div>
							<div class="addition_box">
								<div class="search_area">
									<form id="search_form" action="" method="get">
										<select id="search_key" name="search_key">
											<option value="subject" selected="selected">subject</option>
											<option value="content">content</option>
											<option value="member_id">id</option>
										</select> 
										<input type="text" id="search_value" name="search_value">
										<input type="submit" class="search_btn" value="search">
									</form>
									<c:if test="${sessionScope.loginUser.grade eq 1 || catName ne 'notice'}">
										<button class="write_btn" onClick="location.href='../boardWrite'">Write</button>
									</c:if>
								</div>
								<div class="page_area">
									<a class="fst_page" href="?page=1">&lt;&lt;&nbsp;</a>
									<c:forEach var="page" begin="1" end="${pageCount}">
										<a class="page_link <c:if test="${presentPage eq page}">present_page</c:if>" href="?page=${page}">${page}</a>
									</c:forEach>
									<a class="lst_page" href="?page=${pageCount}">&nbsp;&gt;&gt;</a>
								</div>
							</div>
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