<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<h5 class="card-title text-center">회원 가입</h5>
						<form class="form-signin" method="post"
							action="userRegisterAction.jsp">
							<div class="form-label-group">
								<label for="id">ID</label> <input type="text" id="id" name="id"
									class="form-control" placeholder="ID" maxlength="20" required
									autofocus>
							</div>

							<div class="form-label-group">
								<label for="inputPassword">Password</label> <input
									type="password" name="password" id="password"
									class="form-control" placeholder="Password" maxlength="20"
									required>
							</div>

							<div class="form-label-group">
								<label for="name">Name</label> <input type="text" name="name"
									id="name" class="form-control" placeholder="Name" required>
							</div>

							<div class="form-label-group">
								<label for="age">Age</label> <input type="text" name="age"
									id="age" class="form-control" placeholder="Age" required>
							</div>

							<label>Sex</label><br/>
							<div class="form-label-group">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active"> <input
										type="radio" name="sex" autocomplete="off" value="남자" checked>남자
									</label> <label class="btn btn-primary"> <input type="radio"
										name="sex" autocomplete="off" value="여자">여자
									</label>


								</div>
								<p />
							</div>

							<div class="form-label-group">
								<input type="email" name="email" id="inputEmail"
									class="form-control" placeholder="Email address" required
									autofocus> <label for="inputEmail">Email
									address</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit">회원가입</button>



						</form>

					</div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp" />

</body>

</html>



