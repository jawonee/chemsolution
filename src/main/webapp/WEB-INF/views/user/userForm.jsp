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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="../js/board.js"></script>
<script type="text/javascript" src="../js/check.js"></script>
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
    <c:choose>
    	<c:when test="${empty sessionScope.loginUser}">
    		<c:set var="pageName" value="join"/>
    		<c:set var="login" value="${false}"/>
    	</c:when>
    	<c:otherwise>
    		<c:set var="pageName" value="profile"/>
    		<c:set var="login" value="${true}"/>
    	</c:otherwise>
    </c:choose>
	<div id="sub_visual"></div>
	<div id="sub_layout">
		<div id="ln_area">
			<h2 class="h2_label">${pageName }</h2>
			<ul class="ln">
				<li class="current"><a href="${pageName }" class="anchor">${pageName }</a></li>
			</ul>
		</div>
		<div id="sub_cnt">
			<div class="feedback">
				<h3 class="h3_label">${pageName }</h3>
				<div class="process">
					<span class="home">HOME</span> <span class="arrow"><img
						src="../img/arrow.png" alt="" /></span> <span class="path">${pageName }</span>
				</div>
				<article class="s0101 clear">
					<div class="item_area">
					<h5 class="info_msg">User Information</h5>
						<div id="info_div">
							<div class="required">
								<img src="../img/asterisk.png" alt="Required"><span>Required</span>
							</div>
							<form action="./" class="user_form" method="post" autocomplete="off">
							<c:if test="${login}">
								<input type="hidden" name="_method" value="put" />
							</c:if>
							<table>
								<tr>
									<th class="colum_group">id<img src="../img/asterisk.png" alt="Required"></th>
									<td class="info_group">
										<input type="text" class="join" name="id" <c:if test="${login}">value="${sessionScope.loginUser.id}" readonly</c:if>>
										<span class="valid_msg">영문소문자/숫자 조합, 4~16자</span>
									</td>
								</tr>
								<tr>
									<th class="colum_group">name<img src="../img/asterisk.png" alt="Required"></th>
									<td class="info_group">
										<input type="text" class="join" name="name" <c:if test="${login}">value="${sessionScope.loginUser.name}"</c:if>>
										<span class="valid_msg">한글, 2~10자</span>
									</td>
								</tr>
								<tr>
									<th class="colum_group">password<img src="../img/asterisk.png" alt="Required"></th>
									<td class="info_group">
										<input type="password" class="join" name="password">
										<span class="valid_msg">영문소문자/숫자 조합, 4~16자</span>
									</td>
								</tr>
								<tr>
									<th class="colum_group">password check<img src="../img/asterisk.png" alt="Required"></th>
									<td class="info_group">
										<input type="password" class="join check" name="passwordCheck">
										<span class="valid_msg"></span>
									</td>
								</tr>
									<tr>
										<th class="colum_group">tel<img src="../img/asterisk.png" alt="Required"></th>
										<td class="info_group">
											<c:if test="${login}">
												<c:set var="tel" value="${fn:split(sessionScope.loginUser.tel,'-')}"/>
											</c:if>
											<select class="join tel" class="user/join" name="tel1">
												<option value="010" <c:if test="${tel[0] eq '010'}">selected</c:if>>010</option>
												<option value="011" <c:if test="${tel[0] eq '011'}">selected</c:if>>011</option>
												<option value="016" <c:if test="${tel[0] eq '016'}">selected</c:if>>016</option>
												<option value="017" <c:if test="${tel[0] eq '017'}">selected</c:if>>017</option>
												<option value="018" <c:if test="${tel[0] eq '018'}">selected</c:if>>018</option>
												<option value="019" <c:if test="${tel[0] eq '019'}">selected</c:if>>019</option>
											</select>
										 - <input type="number" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="numberCheck(event)" class="join" name="tel2" value="${tel[1]}">
										 - <input type="number" maxlength="4" oninput="maxLengthCheck(this)" onkeydown="numberCheck(event)" class="join" name="tel3" value="${tel[2]}">
										 	<span class="valid_msg"></span>
										</td>
									</tr>
									<tr>
									<th class="colum_group">email<img src="../img/asterisk.png" alt="Required"></th>
									<td class="info_group">
										<input type="text" class="join" name="email" <c:if test="${login}">value="${sessionScope.loginUser.email}"</c:if>>
										<span class="valid_msg"></span>
									</td>
								</tr>
							</table>
							<div class="btn_area">
								<input type="button" onclick="window.history.back()" value="cancel"> 
								<input type="button" class="u_submit" value="submit"> 
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