<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.dao.UserDAO"%>
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.masthead {
  height: 100vh;
  min-height: 500px;
  background-image: url('https://images.unsplash.com/photo-1468779036391-52341f60b55d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1842&q=80');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

h1#title{
	text-align: left;
}
div#subTitle{
	text-align: left;
}

</style>

<title>BooKnu</title>

</head>

<body>
	<jsp:include page="menu.jsp" />
	<header class="masthead" >
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 id="title" class="text-black font-weight-bold">경북대학교 컴퓨터학부<br/> 학생들을 위한 도서추천 사이트 <br/>'BooKnu'입니다.</h1>
                        <hr class="divider my-4">
                    </div>
                    <div id = "subTitle" class="col-lg-8 align-self-baseline">
                        <p class="text-black-75 font-weight-light">선후배들의 리얼한 후기를 만나보세요.</p>
                    </div>
                </div>
            </div>
     </header>	
     <jsp:include page="footer.jsp" />
</body>

</html>
