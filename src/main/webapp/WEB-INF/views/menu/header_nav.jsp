<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <header id="header">
        <div id="header_box">
            <div id="logo">
                <h1>
                    <a href="/website"> <img src="img/main_logo.png">
                    </a>
                </h1>
            </div>
            <nav class="header_nav">
                <ul>
                    <li><a href="about">ABOUT US</a></li>
                    <li><a href="product">PRODUCTS</a>
                        <ul>
                            <li><a href="s2/s2_1.php">AROMATIC SOLVENT</a></li>
                            <li><a href="s2/s2_2_1.php">ALIPHATIC HYDROCARBON</a></li>
                            <li><a href="s2/s2_3.php">PETROLEUM SOLVENT</a></li>
                            <li><a href="s2/s2_4.php">LUBE BASE OIL</a></li>
                            <li><a href="s2/s2_5.php">SYNTHETIC RESIN</a></li>
                            <li><a href="s2/s2_6.php">ADDITIVE</a></li>
                            <li><a href="s2/s2_7.php">LUBRICANT ADDITVE</a></li>
                            <li><a href="s2/s2_8.php">ELECTRONIC SOLVENT</a></li>
                            <li><a href="s2/s2_9.php">ABRASIVE</a></li>
                        </ul></li>
                    <li><a href="contact">CONTACT US</a></li>
                    <li>
                        <c:choose>
                            <c:when test="${empty sessionScope.loginUser}">
                                <a href="login">COMMUNITY</a>
                            </c:when>
                            <c:otherwise>
                                <a href="board">COMMUNITY</a>
                            </c:otherwise>
                        </c:choose>
                        <ul>
                            <li><a href="notice">NOTICE</a></li>
                            <li><a href="business">BUSINESS Q&A</a></li>
                            <li><a href="product">PRODDUCT Q&A</a></li>
                            <li><a href="etc">ETC</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
</body>
</html>