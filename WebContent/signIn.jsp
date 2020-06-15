<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>

<html>

<head>

<link rel = 'stylesheet'
href = './css/sign.css'>
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
               <h5 class="card-title text-center">Sign In</h5>
               <form class="form-signin" method="post" action="loginAction.jsp">
                 <div class="form-label-group" >
                   <input type="text" id ="id" name="id" class="form-control" placeholder="ID" required autofocus>
                   <label for="id">ID</label>
                 </div>
   
                 <div class="form-label-group">
                   <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                   <label for="password">Password</label>
                 </div>
   <!--  
                 <div class="custom-control custom-checkbox mb-3">
                   <input type="checkbox" class="custom-control-input" id="customCheck1">
                   <label class="custom-control-label" for="customCheck1">Remember password</label>
                 </div>
                   -->  
                 <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Log in</button>
            
                 <hr class="my-4">

                </form>
                <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><a href = "signUp.jsp" class="fab fa-google mr-2">Registration</a> </button>
             </div>
           </div>
         </div>
       </div>
     </div>
      
      
      <jsp:include page="footer.jsp" />

</body>

</html>