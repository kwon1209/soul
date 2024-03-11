<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<style>
.parent {
	display: flex;
}

.parent .child {
	text-align: center;
	background-color : #222222;
	color: #ffffff;
}

.left {
/* 	background-color: beige; */

}

.center {
/* 	background-color: aquamarine; */
	flex: 2;
}

.right {
/* 	background-color: burlywood; */
}
</style>


<div class='parent'>
	<div class='child left'>
		<a href="#"><img 
			src="${contextPath}/resources/image/p1.png"
			style="width: 300px; float: left;" /></a>
	</div>
	<div class='child center'>
		<br><br>
		<p class="font_8" style=" font-size: 16px;">
			<span>상호 : (주)포트폴리언</span>
			 &nbsp;|&nbsp; 대표 : 박헌민&nbsp; |&nbsp; 사업자등록번호: 459-15-01660<br>
			주소 : 대전시 서구 괴정동 1356 (우편번호 : 34433)<br> 팩스 :
			0504-450-5055&nbsp; |&nbsp; 서비스 이용문의 : 010-2202-5055<br> 
		</p>

		<p class="font_8" style="text-align: center; font-size: 16px;">
			서비스 제휴문의 :&nbsp;<span style="text-decoration: underline;"> <a
				href="mailto:a31950@gmail.com" target="_self">a31950@naver.com </a></span>
		<p>Copyright© Portfolio. All Rights Reserved.</p>
	</div>
	<div class='child right'>
		<a href="#"><img
			src="${contextPath}/resources/image/swing.gif"
			style="width: 330px; float: right;" /></a>
	</div>
</div>