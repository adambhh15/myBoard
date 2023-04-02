<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- 나의 스타일 추가 -->
    <link rel="stylesheet" href="resources/css/signin.css">

  </head>
  
  <body class="text-center">
  <jsp:include page="nav.jsp"/>
    <form name="loginForm">
    
    <!--  html 전체 영역을 지정하는 container -->
    <div id="container">
      <!--  login 폼 영역을 : loginBox -->
      <div id="loginBox">
      
        <!-- 로그인 페이지 타이틀 -->
        <div id="loginBoxTitle">CodeZone Login</div>
        <!-- 아이디, 비번, 버튼 박스 -->
        <div id="inputBox">
          <div class="input-form-box"><span>아이디 </span><input type="text" name="uid" class="form-control" oninput="writeId();"></div>
          <div class="notify-box-id"><p id="check1" style="color: red;"></p></div>
          <div class="input-form-box"><span>비밀번호 </span><input type="password" name="upw" class="form-control" oninput="writePw();"></div>
          <div class="notify-box-pw"><p id="check2" style="color: red;"></p></div>
          <div class="button-login-box">
          <button type="button" class="btn btn-primary btn-xs" style="width:100%" onclick="login();return false;">로그인</button>
          </div>
        </div>
        
      </div>
    </div>
	</form>
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function login() {
			var uid = document.loginForm.uid;
			var upw = document.loginForm.upw;
			var check_id = document.getElementById("check1")
			var check_pw = document.getElementById("check2")
			
			if(uid.value =="" || uid.value.length == 0 ){
				check_id.innerText = "아이디를 입력하세요";
				uid.focus();
			}else if(upw.value =="" || upw.value.length == 0 ){
				check_pw.innerText = "비밀번호를 입력하세요";
				upw.focus();
			}else{
				document.loginForm.action = "Login"
				document.loginForm.method = "post"
				document.loginForm.submit();
			}
		}
		function writeId(){
			var uid = document.loginForm.uid;
			var check_id = document.getElementById("check1");
			check_id.innerText = "";
		}
		function writePw(){
			var upw = document.loginForm.upw;
			var check_pw = document.getElementById("check2");
			check_pw.innerText = "";
		}
	
	</script>
  </body>
</html>