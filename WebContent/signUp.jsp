<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>도서추천</title>

</head>

<body>
	<jsp:include page="menu.jsp" />
	<%
		String userID = null;

		if (session.getAttribute("userID") != null) {

			userID = (String) session.getAttribute("userID");

		}

		if (userID != null) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('이미 로그인 되어있습니다.')");

			script.println("location.href = 'index.jsp'");

			script.println("</script>");

		}
	%>



	<div class="container">

		<div class="col-lg-4"></div>

		<div class="col-lg-4">

			<div class="jumbotron" style="padding-top: 20px;">

				<form method="post" action="userRegisterAction.jsp">

					<h3 style="text-align: center;">회원가입</h3>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20">

					</div>

					<div class="form-group">

						<input type="password" class="form-control" placeholder="비밀번호" name="password" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="나이" name="age" maxlength="20">

					</div>


					<div class="form-group" style="text-align: center;">

						<div class="btn-group" data-toggle="buttons">

							<label class="btn btn-primary active"> <input type="radio" name="sex" autocomplete="off" value="남자" checked>남자

							</label> <label class="btn btn-primary"> <input type="radio" name="sex" autocomplete="off" value="여자">여자
							</label>

						</div>

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="이메일" name="email" maxlength="50">
					</div>

					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>

			</div>

		</div>

	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<script src="js/bootstrap.js"></script>

</body>

</html>



