<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<title>회원 정보 출력창</title>
</head>
<style>
b{
	color: #fcfcfc;
}
</style>
<script>
function submitForm(action, memberId) {
  const form = document.createElement('form');
  form.method = 'post';
  form.action = action;

  const input = document.createElement('input');
  input.type = 'hidden';
  input.name = 'memberId';
  input.value = memberId;

  form.appendChild(input);

  document.body.appendChild(form);
  form.submit();
}
</script>





<body>
<table border="1"  align="center"  width="80%">
    <tr align="center"   bgcolor="#4b4441">
      <td ><b>아이디</b></td>
      <td><b>비밀번호</b></td>
      <td><b>이름</b></td>
      <td><b>이메일</b></td>
      <td><b>가입일</b></td>
      <td><b>수정</b></td>
      <td><b>삭제</b></td>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.memberId}</td>
      <td>${member.memberPw}</td>
      <td>${member.memberName}</td>
      <td>${member.email}</td>
      <td>${member.memberJoinDate}</td>
      <td>
      <a href="#" onclick="submitForm('${contextPath}/member/searchMember.do', '${member.memberId}')">수정하기</a>
    </td>
      <td><a href="${contextPath}/member/removeMember.do?memberId=${member.memberId}">삭제하기</a></td>
    </tr>
  </c:forEach>   
</table>

</body>
</html>
