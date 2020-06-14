<%@page import="com.dto.UserDTO"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%@ page import="util.SHA256"%>

<%@ page import="java.io.PrintWriter"%>

<%

request.setCharacterEncoding("UTF-8");
   String id=null;
   String password=null;
   String name=null;
   String age=null;
   String sex=null;
   String email=null;
   
   
   if(request.getParameter("id")!=null){
      id = (String)request.getParameter("id");
   }
   if(request.getParameter("password")!=null){
      password = (String)request.getParameter("password");
   }
   if(request.getParameter("name")!=null){
      name = (String)request.getParameter("name");
   }
   if(request.getParameter("age")!=null){
      age = (String)request.getParameter("age");
   }
   if(request.getParameter("sex")!=null){
      sex = (String)request.getParameter("sex");
   }
   if(request.getParameter("email")!=null){
      email = (String)request.getParameter("email");
   }
   
   if(id==null || password==null || name == null || age==null || sex==null||email==null)
   {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('입력이 안 된 사항이 존재합니다.');");
      script.println("history.back();");
      script.println("</script>");
      script.close();
      return;
   }
   else 
   {

      UserDAO userDAO = new UserDAO();

      int result = userDAO.register(new UserDTO(id, password, name,Integer.parseInt(age),sex,email, SHA256.getSHA256(email),false));
      
      if (result == -1) {

         PrintWriter script = response.getWriter();

         script.println("<script>");

         script.println("alert('이미 존재하는 아이디입니다.');");

         script.println("history.back();");

         script.println("</script>");

         script.close();

      } 
      else if(result == -2)
      {
         PrintWriter script = response.getWriter();

         script.println("<script>");

         script.println("alert('경북대학교 이메일을 사용해주시기 바랍니다.');");

         script.println("history.back();");

         script.println("</script>");

         script.close();
      }
      else 
      {

         session.setAttribute("userID", id);

         PrintWriter script = response.getWriter();

         script.println("<script>");

         script.println("location.href = 'emailSendAction.jsp';");

         script.println("</script>");

         script.close();

      }

   }

%>
