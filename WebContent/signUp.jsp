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
<<<<<<< HEAD

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
=======
	    <div class="row">
	      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
	        <div class="card card-signin my-5">
	          <div class="card-body">
	            <h5 class="card-title text-center">회원 가입</h5>
	            <form class="form-signin" method="post" action="userRegister.jsp">
	              <div class="form-label-group" >
	                <input type="text" id="id" class="form-control" placeholder="ID" maxlength = "20" required autofocus>
	                <label for="id">ID</label>
	              </div>
	
	              <div class="form-label-group">
	                <input type="password" id="inputPassword" class="form-control" placeholder="Password" maxlength="20" required>
	                <label for="inputPassword">Password</label>
	              </div>
	              
	              <div class="form-label-group">
	                <input type="text" id="name" class="form-control" placeholder="Name" required>
	                <label for="name">Name</label>
	              </div>
	              
	               <div class="form-label-group">
	                <input type="text" id="age" class="form-control" placeholder="Age" required>
	                <label for="age">Age</label>
	              </div>
	              
	               <div class="form-label-group">
	               	<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active"> <input type="radio" name="sex" autocomplete="off" value="남자" checked>남자</label> 
							<label class="btn btn-primary"> <input type="radio" name="sex" autocomplete="off" value="여자">여자</label>
							
>>>>>>> origin/master

					</div>
					<p/>
							<label>Sex</label>
	              </div>
	              
	              <div class="form-label-group">
	                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
	                <label for="inputEmail">Email address</label>
	              </div>
	              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><a href = "#" class="fab fa-google mr-2">인증번호발송</a> </button>
	              
	              <div class="form-label-group">
	                <input type="text" id="checknumber" class="form-control" placeholder="인증번호" required>
	                <label for="checknumber">인증번호</label>
	              </div>
	<!--  
	              <div class="custom-control custom-checkbox mb-3">
	                <input type="checkbox" class="custom-control-input" id="customCheck1">
	                <label class="custom-control-label" for="customCheck1">Remember password</label>
	              </div>
	             	-->  
	              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">회원가입</button>
            
	            

	             </form>
	           
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>


	<jsp:include page="footer.jsp" />

</body>

</html>



