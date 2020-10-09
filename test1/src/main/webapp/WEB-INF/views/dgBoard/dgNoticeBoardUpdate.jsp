<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>&nbsp;</h1>

	<div class="col-lg-10" style="margin-left: 1%">
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">No label form</h3>
			</div>

			<!--No Label Form-->
			<!--===================================================-->
			<form action="/dgNoticeBoardUpdateProcess" class="form-horizontal">
				<!-- hidden으로 게시판 num 전달 -->
				<input type="hidden" name="dg_board_num" id="dg_board_num"
					value='${ dgNoticeBoardUpdate.dg_board_num}'>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-4 mar-btm">
							<input type="text" class="form-control"
								value="${dgNoticeBoardUpdate.dg_board_title}"
								id="dg_board_title" name="dg_board_title">
						</div>

					</div>
					<textarea rows="13" class="form-control" id="dg_board_contents"
						name="dg_board_contents">${dgNoticeBoardUpdate.dg_board_contents}</textarea>
				</div>
				<div class="panel-footer text-right">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</form>
			<!--===================================================-->
			<!--End No Label Form-->

		</div>
	</div>


</body>
</html>