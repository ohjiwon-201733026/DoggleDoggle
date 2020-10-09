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
			<div class="panel-heading"></div>

			<!--No Label Form-->
			<!--===================================================-->
			<form action="dgNoticeBoardInsertProcess" class="form-horizontal">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-4 mar-btm">
							<input type="text" class="form-control" placeholder="Title"
								id="dg_board_title" name="dg_board_title">
						</div>
						<!-- 					                        <div class="col-md-4 mar-btm"> -->
						<!-- 					                            <input type="email" class="form-control" placeholder="Email"> -->
						<!-- 					                        </div> -->

					</div>

					<textarea rows="13" class="form-control" id="dg_board_contents"
						name="dg_board_contents"></textarea>
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