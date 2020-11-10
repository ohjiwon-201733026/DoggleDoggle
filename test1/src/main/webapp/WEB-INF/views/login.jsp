<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<script type="text/javascript">

</script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <div id="container" class="cls-container">
        
		<!-- BACKGROUND IMAGE -->
		<!--===================================================-->
		<div id="bg-overlay"></div>
		
		<!-- LOGIN FORM -->
		<!--===================================================-->
		<div class="cls-content">
		    <div class="cls-content-sm panel">
		        <div class="panel-body">
		            <div class="mar-ver pad-btm">
		                <h1 class="h3">Account Login</h1>
		                <p>Sign In to your account</p>
		            </div>
<!-- 		            로그인 폼 -->
		            <form id="js-login" action="/login" method="post">
		                <div class="form-group">
		                    <input type="text" id="dg_user_id" name="dg_user_id" class="form-control" placeholder="Username" autofocus>
		                </div>
		                <div class="form-group">
		                    <input type="password" id="dg_user_pw" name="dg_user_pw" class="form-control" placeholder="Password">
		                </div>
		                
		                <div class="form-group text-left">
                        	<div class="custom-control custom-checkbox">
                        		<c:if test="${param.error != null}"> 
                        			<span class="text-danger">아이디와 비밀번호가 잘못되었습니다.</span>
                        		</c:if>
                        	</div>
                        </div>
<!-- 		                <div class="checkbox pad-btm text-left"> -->
<!-- 		                    <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox"> -->
<!-- 		                    <label for="demo-form-checkbox">Remember me</label> -->
<!-- 		                </div> -->
						 <button id="js-login-btn" class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
						 <button type="button" id="babo" class="btn btn-primary btn-lg btn-block" onclick="location.href='${pageContext.request.contextPath}/signUp'">Sign Up</button>
		                
		            </form>
		            
		            
		            
		        </div>
		
<!-- 		        <div class="pad-all"> -->
<!-- 		            <a href="pages-password-reminder" class="btn-link mar-rgt">Forgot password ?</a> -->
<!-- 		            <a href="pages-register" class="btn-link mar-lft">Create a new account</a> -->
		

<!-- 		        </div> -->
		    </div>
		</div>

		
    </div>
    <!--===================================================-->
    <!-- END OF CONTAINER -->


        


    <!--=================================================-->
    
    <!--Background Image [ DEMONSTRATION ]-->
    <script src="/resource/js/demo/bg-images.js"></script>

<script type="text/javascript">

// function test(){
// 	alert("휴 짜증");
// }
// $('babo').click(function(){

// 	alert("헿히힣");
// });



window.onload = function() { 
	var header = document.getElementById('js-login-btn');
	header.onclick = function() {

         // Fetch form to apply custom Bootstrap validation
         var form = $("#js-login")

         if (form[0].checkValidity() === false)
         {
             event.preventDefault()
             event.stopPropagation()
         }

         form.addClass('was-validated');
         // Perform ajax submit here...
     });



     /영어라 몰라 그냥 감으로 치는중
     $.get("/user", function(data) {
         $("#user").html(data.userAuthentication.details.name);
         $(".unauthenticated").hide()
         $(".authenticated").show()
     });


		 
	header.onclick = null; 
	} 
};



</script>





</body>
</html>