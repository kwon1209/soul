<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="result" value="${param.result}"/>
<!DOCTYPE html>
<style>
</style>
<html>
<head>
    <meta charset="UTF-8">
    <script src="${contextPath}/classes/js/jquery-3.7.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${contextPath}/classes/css/index.css">
    <link rel="icon" href="${contextPath}/classes/img/gitlab.png">
    <title>로그인</title>
</head>
<body>
<div class="tab-panel">
    <form action="${contextPath}/main/main.do" method="post">

        <span class="login-title">Synology-DS720</span>
        <div class="title">로그인</div>
        <label>
            <input type="text" name="userId" class="text-field" placeholder="아이디">
            <input type="password" name="userPw" class="text-field" placeholder="비밀번호">
            <input type="button" value="로그인" class="submit-btn" onclick="mainLogin();">
        </label>
    </form>

    <button type="button" class="submit-btn" data-bs-toggle="modal" data-bs-target="#myModal">
        회원가입
    </button>
    <div class="divider">
        <span>or</span>
    </div>
        <input type="button" value="카카오톡으로 로그인" class="submit-kakao" id="kakao">
        <input type="button" value="구글계정으로 로그인" class="submit-google">
    <div class="links">
        <a href="#">비밀번호를 잊어버리셨나요?</a>
    </div>

</div>

<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <form method="post" action="./userRegister">
                <table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                    <tr>
                        <th colspan="3"><h4>회원등록</h4></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="width: 140px;"><h5>아이디</h5></td>
                        <td><input class="form-control" type="text" id="userId" name="userId" maxLength="20" placeholder="아이디를 입력해주세요."></td>
                        <td style="width: 110px;"><button class="btn btn-primary" onclick="registerCheck();" type="button">중복체크</button></td>
                    </tr>
                    <tr>
                        <td style="width: 140px;"><h5>비밀번호</h5></td>
                        <td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="userPassword1" name="userPassword1" maxLength="20" placeholder="비밀번호를 입력해주세요."></td>
                    </tr>
                    <tr>
                        <td style="width: 160px;"><h5>비밀번호 확인</h5></td>
                        <td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="userPassword2" name="userPassword2" maxLength="20" placeholder="비밀번호 확인을 입력해주세요."></td>
                    </tr>
                    <tr>
                        <td style="width: 140px;"><h5>이름</h5></td>
                        <td colspan="2"><input class="form-control" type="text" id="userName" name="userName" maxLength="20" placeholder="이름을 입력해주세요."></td>
                    </tr>
                    <tr>
                        <td style="width: 140px;"><h5>이메일</h5></td>
                        <td colspan="2"><input class="form-control" type="email" id="userEmail" name="userEmail" maxLength="20" placeholder="이메일을 입력해주세요."></td>
                    </tr>
                    <tr>
                        <td style="text-align: left" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
                    </tr>

                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<script>

$("#kakao").on("click", function() {
        $.ajax({
            url: "${contextPath}/modal/joinUser.do",
            type: "POST",
            dataType: "json",
            success : function (result) {
            console.log("다 잘될꺼야!");
            }
        });
    });
    function registerCheck(){
        var userId = $('#userId').val();
        console.log(userId);
        $.ajax({
            type: 'POST',
            url : '${contextPath}/userRegisterCheck.do',
            dataType: "json",
            data: {userId : userId},
            async: false,
            success: function(result){
                if(result == 0){
                    $('#passwordCheckMessage').html('사용할 수 있는 아이디입니다.');
                    $('#checkType').attr('class', 'modal-content panel-success');
                }
                else{
                    $('#passwordCheckMessage').html('사용할 수 없는 아이디입니다.');
                    $('#checkType').attr('class', 'modal-content panel-warning');
                }
                $('#checkModal').modal("show");
            },
            error: function(e) {
				console.log(e);
			}
        })
    }
    function passwordCheckFunction(){
        var userPassword1 = $('#userPassword1').val();
        var userPassword2 = $('#userPassword2').val();
        if(userPassword1 != userPassword2){
            $('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
        }else{
            $('#passwordCheckMessage').html('');
        }
    }

    function mainLogin() {
        $.ajax({
            url: "${contextPath}/main/main.do",
            type: "POST",
            dataType: "json",
            async: false,
            success : function () {
                console.log("다녀왔씁니다.");
            }
        });
    }

</script>