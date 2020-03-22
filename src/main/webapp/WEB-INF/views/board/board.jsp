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
<script	src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
<script type="text/javascript" src="../js/float.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css">
<link rel="stylesheet" type="text/css" href="../css/layout.css">
<link rel="stylesheet" type="text/css" href="../css/sub.css">
<link rel="stylesheet" type="text/css" href="../css/etc.css">
<link rel="stylesheet" type="text/css" href="../css/float.css">
</head>
<body>
	<c:import url="/WEB-INF/views/menu/floating_menu.jsp"></c:import>
	<c:import url="/WEB-INF/views/menu/header_nav.jsp"></c:import>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">COMMUNITY</h2>
			<ul class="ln">
				<li class="item current" data-category="1"><a href="notice" class="anchor">NOTICE</a></li>
				<li class="item" data-category="2"><a href="business" class="anchor">BUSINESS Q&A</a></li>
				<li class="item" data-category="3"><a href="product" class="anchor">PRODDUCT Q&A</a></li>
				<li class="item" data-category="4"><a href="etc" class="anchor">ETC</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">COMMUNITY</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">COMMUNITY</span><span class="arrow"><img
						src="img/arrow.png" alt="" /></span> <span class="path">${catName}</span>
				</div>
				<article class="s0101 clear">
					<div class="s0101_top_box">
						<div class="text_box board_area">
							<ul class="board_list">
								<li class="list_item top">
									<ul class="board_top">
										<li class="q_id">USER ID</li>
										<li class="q_category">CATEGORY</li>
										<li class="q_subject">SUBJECT</li>
										<li class="q_content">CONTENT</li>
										<li class="q_date">DATE</li>
									</ul>
								</li>
								<c:forEach items="${boardList}" var="list">

									<li class="list_item"><ul class="item_info"><a href="#">
											
												<li class="q_id">${list.id }</li>
												<li class="q_category">${list.categoryName }</li>
												<li class="q_subject">${list.subject }</li>
												<li class="q_memberId">${list.memberId }</li>
												<li class="q_date">${list.createDate }</li>
											
									</a></ul></li>
								</c:forEach>
							</ul>
							<c:forEach var="pageCount" begin="1" end="${pageCount}">
								<a href="?page=${pageCount}">${pageCount}</a>
							</c:forEach>
							<div class="btn_area">
								<button class="board_btn"
									onClick="location.href='../boardWrite'">Write</button>
								<button class="board_btn" onClick="location.href='#'">Search</button>
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

	<script type="rv-template" id="boardItem">
	<li class="list_item">
    	<a href="board/list?no={{id}}">
			<ul class="item_info">
				<li class="q_id">{{id}}
				<li class="q_category">{{categoryId}}
				<li class="q_subject">{{subject}}
				<li class="q_content">{{content}}
				<li class="q_date"> {{createDate}}
			</ul>
		</a>
	</li>
    </script>
</body>
</html>