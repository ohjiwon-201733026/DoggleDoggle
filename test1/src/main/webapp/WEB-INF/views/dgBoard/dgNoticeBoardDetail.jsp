<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div id="page-content">

		<div class="panel">
			<div class="panel-body">
				<div class="fixed-fluid">

					<div class="fluid">

						<!-- VIEW MESSAGE -->
						<!--===================================================-->

						<div class="mar-btm pad-btm bord-btm">
							<h1 class="page-header text-overflow">
								<span class="label label-normal label-info">Notice</span> <strong>
									${dgNoticeBoardDetail.dg_board_title} </strong>
							</h1>
						</div>

						<div class="row">
							<div class="col-sm-7 toolbar-left">

								<!--Sender Information-->
								<div class="media">
									<span class="media-left"> <img
										src="/resource/img/profile-photos/8.png"
										class="img-circle img-sm" alt="Profile Picture">
									</span>
									<div class="media-body text-left">
										<br>
										<div class="text-bold">ID: ${ dgNoticeBoardDetail.dg_board_user_id}</div>
									</div>
								</div>
							</div>
							<div class="col-sm-5 toolbar-right">

								<!--Details Information-->
								<h5 class="mar-no">
									<strong class="text-muted">Create Date: ${ dgNoticeBoardDetail.dg_board_created}</strong>
								</h5>

							</div>
						</div>

						<!-- 					내용임!!!! -->
						<!--Message-->
						<!--===================================================-->
						<div class="mail-message">
							<button
								onclick="dgNoticeBoardUpdate(${dgNoticeBoardDetail.dg_board_num})"
								class="btn btn-mint btn-icon" style="margin-left: 90%"
								title="수정">
								<i class="demo-psi-pen-5 icon-lg"></i>
							</button>
							&nbsp;
							<button
								onclick="dgNoticeBoardDelete(${dgNoticeBoardDetail.dg_board_num})"
								class="btn btn-success btn-icon" title="삭제">
								<i class="demo-psi-recycling icon-lg"></i>
							</button>
							<%
								pageContext.setAttribute("newLineChar", "\n");
							%>
							<br> <br>
<!-- 							줄바꿈!! -->
							${fn:replace(dgNoticeBoardDetail.dg_board_contents, replaceChar, "<br/>")} <br> <br>
						</div>
						<!--===================================================-->
						<!--End Message-->



						<!-- 					댓글임!!!!!! -->
						<!--Quick reply : Summernote Placeholder -->
						<div id="demo-mail-textarea"
							class="mail-message-reply bg-trans-dark">
							<strong>Reply</strong> or <strong>Forward</strong> this
							message...
						</div>


						<!--===================================================-->
						<!-- END VIEW MESSAGE -->
						<br> <br>
						<form action="dgNoticeBoard">
							<button class="btn btn-default">목록</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>


	<script type="text/javascript">
			function dgNoticeBoardUpdate(dg_board_num){
			location.href='/dgNoticeBoardUpdate?dg_board_num='+dg_board_num;
			}

       </script>

	<script type="text/javascript">
       		function dgNoticeBoardDelete(dg_board_num){
       		alert('삭제되었습니다.');
       		location.href='/dgNoticeBoardDelete?dg_board_num='+dg_board_num;
       		}
       </script>

</body>
</html>