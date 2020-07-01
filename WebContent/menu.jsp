<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 뷰포트 -->

<meta name="viewport" content="width=device-width" initial-scale="1">

<!-- 스타일시트 참조  -->


<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js'></script>
<link rel = 'stylesheet'
href = 'https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top" >
  <div class="container">
    <a class="navbar-brand" href="index.jsp">BooKnu</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Board">게시판</a>
        </li>
       
    
	   <li class="nav-item dropdown">

		     <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false"
		
		      data-toggle="dropdown" >접속하기</a>

     	<div class="dropdown-menu dropdown-menu-right animate slideIn" aria-labelledby="navbarDropdown">
     	
<%
	String userID = null;
	
	if(session.getAttribute("userID") != null ){
	
		userID = (String) session.getAttribute("userID");
	
	}
	if(userID == null)
	{
%>
      <a class="dropdown-item" href="signIn.jsp">로그인</a>
      <a class="dropdown-item" href="signUp.jsp">회원가입</a>
      
<%
	}else{
%>  
     <a class="dropdown-item" href="logout.jsp">로그아웃</a>
<%
	}
%>
		
		
		</div>

		</li>
		</ul>
		

    </div>
  </div>
</nav>

 
