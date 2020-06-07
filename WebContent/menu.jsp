<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 뷰포트 -->

<meta name="viewport" content="width=device-width" initial-scale="1">

<!-- 스타일시트 참조  -->

<link rel="stylesheet" href="css/bootstrap.min.css">
<nav class="navbar navbar-default">

  <div class="navbar-header">

   <button type="button" class="navbar-toggle collapsed" 

    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"

    aria-expaned="false">

     <span class="icon-bar"></span>

     <span class="icon-bar"></span>

     <span class="icon-bar"></span>

    </button>

    <a class="navbar-brand" href="index.jsp">도서추천</a>

  </div>

  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">

   <ul class="nav navbar-nav">

    <li><a href="index.jsp">메인</a></li>

    <li><a href="Board">게시판</a></li>

   </ul>

   <ul class="nav navbar-nav navbar-right">

    <li class="dropdown">

     <a href="#" class="dropdown-toggle"

      data-toggle="dropdown" role="button" aria-haspopup="true"

      aria-expanded="false">접속하기<span class="caret"></span></a>

     <ul class="dropdown-menu">
<%
	String userID = null;
	
	if(session.getAttribute("userID") != null ){
	
		userID = (String) session.getAttribute("userID");
	
	}
	if(userID == null)
	{
%>
      <li class="active"><a href="signIn.jsp">로그인</a></li>
      <li><a href="signUp.jsp">회원가입</a></li>
      
<%
	}else{
%>  
      <li><a href="logout.jsp">로그아웃</a></li>
<%
	}
%>
     </ul>

    </li>

   </ul>

  </div> 

 </nav>