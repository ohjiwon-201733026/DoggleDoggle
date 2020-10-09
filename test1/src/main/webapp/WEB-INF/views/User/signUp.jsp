<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<main id="js-page-content" role="main" class="page-content">
    <div id="container" class="cls-container">
        
		
		<!-- BACKGROUND IMAGE -->
		<!--===================================================-->
		<div id="bg-overlay"></div>
		
		
		<!-- REGISTRATION FORM -->
		<!--===================================================-->
		<div class="cls-content">
		    <div class="cls-content-lg panel">
		        <div class="panel-body">
		            <div class="mar-ver pad-btm">
		                <h1 class="h3">Create a New Account</h1>
		                <p>Come join the Nifty community! Let's set up your account.</p>
		            </div>
		            <form action="pages-login.html" id="js-signUp" method="post" name="signUp">
		                <div class="row" style="margin-left: 20%">
		                	<div class="form-group">
		                    	<div class="col-sm-9 ">
		                        	<div class="invalid-feedback">
                                                                       아이디를 작성해주세요.
                                	</div>
		                            <input type="text" class="form-control" placeholder="User Id" name="dg_user_id" id="dg_user_id"> 
                                		<p id="id_check" name="id_check" />	                        
		                        </div>		
<!-- 		                        <div class="form-group"> -->
								<div class="col-sm-9 ">
									<div class="invalid-feedback">
                                                                      전화번호를 작성해주세요.
                                	</div>
		                            <input type="tel" class="form-control" placeholder="User Tel" name="dg_user_tel" id="dg_user_tel">

<!-- 		                        </div> -->
		                    	</div>
		                    	<div class="col-sm-9 ">
<!-- 		                        <div class="form-group"> -->
			                        <div class="invalid-feedback">
	                                                                 비밀번호를 작성해주세요.
	                                </div>
		                            <input type="password" class="form-control" placeholder="Password" name="dg_user_pw_test" id="dg_user_pw_test">

<!-- 		                        </div> -->
<!-- 		                        <div class="form-group"> -->
		                        	<div class="invalid-feedback">
                                                                         비밀번호를 확인해주세요.
                                	</div>
		                            <input type="password" class="form-control" placeholder="Re-Password" name="dg_user_pw" id="dg_user_pw">

<!-- 		                        </div> -->
									<p id="pw_check" name="pw_check" />
		                    	</div>
		                    
		                    </div>
		                </div>
<!-- 		                <div class="checkbox pad-btm text-left"> -->
<!-- 		                    <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox"> -->
<!-- 		                    <label for="demo-form-checkbox">I agree with the <a href="#" class="btn-link text-bold">Terms and Conditions</a></label> -->
<!-- 		                </div> -->
						</br>
		                <button class="btn btn-primary btn-lg btn-block" id="signUp-btn" type="button" onclick="UserSignUp()">Sign Up</button>
		            </form>
		        </div>
		        <div class="pad-all">
		            Already have an account ? <a href="pages-login.html" class="btn-link mar-rgt text-bold">Sign In</a>
		
		            <div class="media pad-top bord-top">
		                <div class="pull-right">
		                    <a href="#" class="pad-rgt"><i class="demo-psi-facebook icon-lg text-primary"></i></a>
		                    <a href="#" class="pad-rgt"><i class="demo-psi-twitter icon-lg text-info"></i></a>
		                    <a href="#" class="pad-rgt"><i class="demo-psi-google-plus icon-lg text-danger"></i></a>
		                </div>
		                <div class="media-body text-left text-main text-bold">
		                    Sign Up with
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

		
		
		
    </div>
    </main>
    <!--===================================================-->
    <!-- END OF CONTAINER -->

                    <script>
					// 회원가입 버튼 눌렀을때
        			$("#signUp-btn").click(function(event) {
        				var form = $("#js-signUp")
        				if (form[0].checkValidity() === false) {
        					event.preventDefault()
        					event.stopPropagation()
        				}
        				form.addClass('was-validated');
        			});
        			

                   
            			$(document).ready(function(){
                			$(":input").inputmask();
            			});


            			



        		</script>
        


</body>

<script>

		let pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		let pattern_eng = /[a-zA-Z]/;
		let patton = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi; //특수문자 거르기
		let pattonNum = /[^0-9]/g; //숫자 
		let arr = new Array();
		
// 		alert("test123");
// 		아이디 유효성 검사
		$("#dg_user_id").blur(
						function() {
							let dg_user_id = $('#dg_user_id').val();
							if (!patton.test(dg_user_id)
									&& dg_user_id.replace(/\s/gi, "").length == dg_user_id.length
									&& dg_user_id.length > 3) {
								$.ajax({
											//controller 확인 주소
											url : '${pageContext.request.contextPath}/overlapName?dg_user_id='
													+ dg_user_id,
											type : 'GET',
											success : function(data) {
												if (data === 1) {
													arr[0] = false;
													$("#id_check").text(
															"사용중인 아이디입니다 :p");
													$("#id_check").css("color",
															"red");
													$("#reg_submit").attr(
															"disabled", true);
												} else {
													arr[0] = true;
													$("#id_check").text(
															"사용 가능한 아이디 입니다. :)");
													$("#id_check").css("color",
															"blue");
													$("#reg_submit").attr(
															"disabled", true);
												}
											},
											error : function() {
												console.log("실패");
											}
										});
							} else {
								arr[0] = false;
								$("#id_check").text("공백 & 특수문자가 포함되어 있습니다 :p");
								$("#id_check").css("color", "red");
								$("#reg_submit").attr("disabled", true);
							}
		
						});

				// 비밀번호 유효성검사
				$("#dg_user_pw").blur(
						function() {

							let dg_user_pw = $('#dg_user_pw').val();
							let dg_user_pw_test = $('#dg_user_pw_test').val();

							if (dg_user_pw.replace(/\s/gi, "").length == dg_user_pw.length
									&& dg_user_pw.length > 7
									&& dg_user_pw_test.replace(/\s/gi, "").length == dg_user_pw_test.length
									&& dg_user_pw_test.length > 7) {

								arr[1] = true;
								$("#pw_check").text("사용가능한 비밀번호입니다. :)");
								$("#pw_check").css("color", "blue");
								$("#reg_submit").attr("disabled", true);

							} else {
								arr[1] = false;
								$("#pw_check").text(
										"비밀번호 형식이 아닙니다.(공백,글자 수 제한,비밀번호가 다릅니다) :p");
								$("#pw_check").css("color", "red");
								$("#reg_submit").attr("disabled", true);
							}
						});

// 						// 	회원가입 성공 시
		    			function UserSignUp(){

		    				let form = document.signUp;
		    				for (var i = 0; i < 2; i++) {
		    					if (arr[i] === false || arr.length != 2) {
		    						return;
		    					}
		    				}

		    				result();

		    				 location.href="/login";
		        			} 

		    			function result() {
		    				alert("회원가입 성공");
		    				$.ajax({
		    					async : true,
		    					url : '${pageContext.request.contextPath}/UserSignUp',
		    					type : 'POST',
		    					data : {
		    						dg_user_id : $('#dg_user_id').val(),
		    						dg_user_pw : $('#dg_user_pw').val(),
		    						dg_user_tel : $('#dg_user_tel').val()
		    					},
		    					success : function(data) {
		    					},
		    					error : function() {
		    						console.log("실패");
		    					}
		    				});
		    			}					
					
</script>
</html>