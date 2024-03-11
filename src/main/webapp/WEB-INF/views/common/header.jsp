<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
</head>
<style>
.box {
	display: flex;
	flex-basis: auto;
}

.left {
	flex: 1;
}

.middle {
	flex: 3;
	text-align: center;
}

.right {
	flex: 1;
}

.nav, .nav a, .nav ul, .nav li, .nav div, .nav form, .nav input {
	margin: 0;
	padding: 0;
	border: none;
	outline: none;
}

.nav a {
	text-decoration: none;
}

.nav li {
	list-style: none;
}

.nav {
	display: inline-block;
	position: relative;
	cursor: default;
	z-index: 500;
}

.nav>li {
	display: block;
	float: left;
	
	
}

.nav>li>a {
	position: relative;
	display: block;
	z-index: 510;
	height: 54px;
	padding: 0 20px;
	line-height: 54px;
	font-family: Helvetica, Arial, sans-serif;
	font-weight: bold;
	font-size: 13px;
	color: #fcfcfc;
	text-shadow: 0 0 1px rgba(0, 0, 0, .35);
	background: #372f2b;
	border-left: 1px solid #4b4441;
	border-right: 1px solid #312a27;
	-webkit-transition: all .3s ease;
	-moz-transition: all .3s ease;
	-o-transition: all .3s ease;
	-ms-transition: all .3s ease;
	transition: all .3s ease;
}

.nav>li:hover>a {
	background: #4b4441;
}

.nav>li:first-child>a {
	border-radius: 3px 0 0 3px;
	border-left: none;
}

.nav>li.nav-search>form {
	position: relative;
	width: inherit;
	height: 54px;
	z-index: 510;
	border-left: 1px solid #4b4441;
}

.nav>li.nav-search input[type="text"] {
	display: block;
	float: left;
	width: 1px;
	height: 24px;
	padding: 15px 0;
	line-height: 24px;
	font-family: Helvetica, Arial, sans-serif;
	font-weight: bold;
	font-size: 13px;
	color: #999999;
	text-shadow: 0 0 1px rgba(0, 0, 0, .35);
	background: #372f2b;
	-webkit-transition: all .3s ease 1s;
	-moz-transition: all .3s ease 1s;
	-o-transition: all .3s ease 1s;
	-ms-transition: all .3s ease 1s;
	transition: all .3s ease 1s;
}

.nav>li.nav-search input[type="text"]:focus {
	color: #fcfcfc;
}

.nav>li.nav-search input[type="text"]:focus, .nav>li.nav-search:hover input[type="text"]
	{
	width: 110px;
	padding: 15px 20px;
	-webkit-transition: all .3s ease .1s;
	-moz-transition: all .3s ease .1s;
	-o-transition: all .3s ease .1s;
	-ms-transition: all .3s ease .1s;
	transition: all .3s ease .1s;
}

.nav>li.nav-search input[type="submit"] {
	display: block;
	float: left;
	width: 20px;
	height: 54px;
	padding: 0 25px;
	cursor: pointer;
	background: #372f2b url(${contextPath}/resources/image/search-icon.png)
		no-repeat center center;
	border-radius: 0 3px 3px 0;
	-webkit-transition: all .3s ease;
	-moz-transition: all .3s ease;
	-o-transition: all .3s ease;
	-ms-transition: all .3s ease;
	transition: all .3s ease;
}

.nav>li.nav-search input[type="submit"]:hover {
	background-color: #4b4441;
}

.nav>li>div {
	position: absolute;
	display: block;
	width: 100%;
	top: 50px;
	left: 0;
	opacity: 0;
	visibility: hidden;
	overflow: hidden;
	background: #ffffff;
	border-radius: 0 0 3px 3px;
	-webkit-transition: all .3s ease .15s;
	-moz-transition: all .3s ease .15s;
	-o-transition: all .3s ease .15s;
	-ms-transition: all .3s ease .15s;
	transition: all .3s ease .15s;
}

.nav .nav-column {
	float: left;
	width: 20%;
	padding: 2.5%;
}

.nav .nav-column h3 {
	margin: 20px 0 10px 0;
	line-height: 18px;
	font-family: Helvetica, Arial, sans-serif;
	font-weight: bold;
	font-size: 14px;
	color: #372f2b;
	text-transform: uppercase;
}

.nav .nav-column h3.orange {
	color: #ff722b;
}

.nav .nav-column li a {
	display: block;
	line-height: 26px;
	font-family: Helvetica, Arial, sans-serif;
	font-weight: bold;
	font-size: 13px;
	color: #888888;
}

.nav .nav-column li a:hover {
	color: #666666;
}

.nav>li:hover>div {
	opacity: 1;
	visibility: visible;
	overflow: visible;
}
</style>
<body>
	<table border=0 width="100%">
		<div class="box">
			<div class="left">
				<a href="${contextPath}/main.do"> <img
					src="${contextPath}/resources/image/google.png" />
				</a>
			</div>
			<div class="middle">
				<h1 style="text-align: center">스프링실습 홈페이지!!</h1>

				<ul class="nav middle">
					<li><a href="#">아이디어펀딩</a>
						<div>
							<div class="nav-column">
								<h3>Home</h3>
								<ul>
									<li><a href="#">Pampers Diapers</a></li>
									<li><a href="#">Huggies Diapers</a></li>
									<li><a href="#">Seventh Generation</a></li>
									<li><a href="#">Diapers</a></li>
									<li><a href="#">Derbies</a></li>
									<li><a href="#">Driving shoes</a></li>
									<li><a href="#">Espadrilles</a></li>
									<li><a href="#">Loafers</a></li>
								</ul>
							</div>

							<div class="nav-column">
								<h3>Home</h3>
								<ul>
									<li><a href="#">Driving shoes</a></li>
									<li><a href="#">Espadrilles</a></li>
									<li><a href="#">Loafers</a></li>
								</ul>

								<h3>Home</h3>
								<ul>
									<li><a href="#">Driving shoes</a></li>
									<li><a href="#">Espadrilles</a></li>
									<li><a href="#">Loafers</a></li>
								</ul>
							</div>

							<div class="nav-column">
								<h3>Home</h3>
								<ul>
									<li><a href="#">Pampers Diapers</a></li>
									<li><a href="#">Huggies Diapers</a></li>
									<li><a href="#">Seventh Generation</a></li>
									<li><a href="#">Diapers</a></li>
									<li><a href="#">Derbies</a></li>
									<li><a href="#">Driving shoes</a></li>
									<li><a href="#">Espadrilles</a></li>
									<li><a href="#">Loafers</a></li>
								</ul>
							</div>

							<div class="nav-column">
								<h3 class="orange">Related Categories</h3>
								<ul>
									<li><a href="#">Pampers Diapers</a></li>
									<li><a href="#">Huggies Diapers</a></li>
									<li><a href="#">Diapers</a></li>
								</ul>

								<h3 class="orange">Brands</h3>
								<ul>
									<li><a href="#">Driving shoes</a></li>
									<li><a href="#">Espadrilles</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#">아이디어판매</a></li>
					<li><a href="#">카카오로그인</a>
						<div>제작준비중...</div></li>
					<li><a href="#">섹션관리[로그인]</a></li>
					<li><a href="${contextPath}/member/memberForm.do">회원가입</a></li>
					<li><a href="${contextPath}/member/listMembers.do">회원전체정보</a></li>
					<li class="nav-search">
							<input type="text" placeholder="Search..."> 
							<input type="submit" value="">
					</li>
				</ul>




			</div>
			<div class="right">

				<c:choose>
					<c:when test="${isLogOn == true}">
						<%-- 아이디 true 비교해서 맞으면 밑으로내려가 실횅 --%>
						<h2>
							<c:choose>
								<%-- 로그인한 사람 이름 갖고와서 환영 --%>
								<c:when test="${not empty member}">${member.memberName} 님! 로그인을 환영합니다.</c:when>
							</c:choose>
						</h2>
						<br>
						<%-- 여기는 관리자 로그인시 관리자 id admin 일경우에 true 되므로 밑으로내려가 실행되어 헤더에 관리자 페이지 출력--%>
						<c:if test="${isLogOn==true and member.memberId =='admin' }">
							<a href="${contextPath}/admin/listMembers.do">관리자페이지</a>
						</c:if>
						<%-- 어드민으로 안들어왔을때 는 마이페이지가 헤더에 출력 --%>
						<c:if test="${isLogOn==true and member.memberId !='admin' }">
							<c:choose>
								<%-- not empty = 값이 비어있지않을때 true 그래서 마이페이지  --%>
								<c:when test="${not empty member or not empty memberName}">
									<a href="${contextPath}/user/userMain.do">마이페이지</a>
								</c:when>
							</c:choose>
						</c:if>

						<br>
						<br>
						<c:if test="${not empty member}">
							<a href="${contextPath}/member/logout.do">로그아웃</a>
						</c:if>
						<%--                   <c:if test="${not empty name}"> --%>
						<!--                   <a href="https://kauth.kakao.com/oauth/logout?client_id=0277d6bc4e92f1576c2507eec6edcbdb&logout_redirect_uri=http://localhost:8080/sweet/member/logout.do">로그아웃</a> -->
						<%--                   </c:if> --%>
					</c:when>
					<c:when test="${isLogOn != true}">
						<a href="${contextPath}/member/memberForm.do"> 회원가입</a>
					</c:when>
				</c:choose>
			</div>
		</div>
	</table>
</body>
</html>