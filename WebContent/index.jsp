<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.dao.UserDAO"%>
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>도서추천</title>

</head>

<body>
	<jsp:include page="menu.jsp" />`

	<div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">공식 추천 교재
        <small>수업 교재</small>
      </h1>
		
		<hr>
     
      <div class="row">
      	<div class="col-lg-12">
        <div class="card-border-0 shadow mb-4">
        <div class="card-body">
          <h3 class="m-0">고급웹프로젝트</h3>
          <hr>
          <a href="#">
            <img class="img-fluid rounded mb-md-0" src="http://image.yes24.com/goods/65120999/800x0" alt="" style="width:300px; height:auto;">
          </a>
          <p>쉽게배우는 JSP 웹프로그래밍</p>
          <a class="btn btn-primary" href="http://www.yes24.com/Product/Goods/65120999">View</a>
        </div>
        </div>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Two -->
      <div class="row">
        <div class="col-md-5">
          <a href="#">
            <img class="img-fluid rounded" src="http://image.yes24.com/goods/65120999/800x0" alt="" style="width:500px; height:auto;">
          </a>
        </div>
        <div class="col-md-7">
          <h3>고급웹프로젝트</h3>
          <p>쉽게배우는 JSP 웹프로그래밍 JSP 웹프로그래밍 교재로 사용됩니다. 가격은 ~~~ 출판사 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 상세정보 YES24</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Three -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project Three</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores, at, praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit excepturi amet commodi deleniti alias possimus!</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Four -->
      <div class="row">

        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project Four</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    </div>

	<jsp:include page="footer.jsp" />
</body>

</html>
