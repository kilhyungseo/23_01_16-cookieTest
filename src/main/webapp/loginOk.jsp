<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			request.setCharacterEncoding("utf-8"); //캐릭터 셋 인코딩(한글처리)
			
			String mid = request.getParameter("mid");
			String mpw = request.getParameter("mpw");
			
			if(mid.equals("hyungso") && mpw.equals("1234")){
				
				Cookie cookie = new Cookie("mid", mid);
				Cookie cookie2 = new Cookie("mpw", mpw);
				cookie.setMaxAge(3600);
				
				response.addCookie(cookie);
				response.addCookie(cookie2);
				response.sendRedirect("welcome.jsp");	
			}else{
				response.sendRedirect("loginFail.jsp");
			}
		
		%>
</body>
</html>