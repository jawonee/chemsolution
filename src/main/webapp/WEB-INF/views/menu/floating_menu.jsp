<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Floating Menu</title>
<script type="text/javascript" src="/website/assets/js/float.js"></script>
<link rel="stylesheet" type="text/css" href="/website/assets/css/float.css">
</head>
<body>
	<!-- floating menu -->
	<div id="floatMenu">
		<ul>
			<li><a class="home" title="home" href="/website"></a></li>
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<li><a class="join" title="join" href="/website/user/join"></a></li>
					<li><a class="login" title="login" href="/website/user/login"></a></li>
				</c:when>
				<c:otherwise>
					<li><a class="profile" title="profile" href="/website/user/profile"></a></li>
					<li><a class="logout" title="logout" href="/website/user/logout"></a></li>
				</c:otherwise>
			</c:choose>
			<li><a class="up" title="up" href="javascript:goToTop()"></a></li>
			<li><a class="down" title="down" href="javascript:goToBottom()"></a></li>
		</ul>
	</div>
</body>
</html>