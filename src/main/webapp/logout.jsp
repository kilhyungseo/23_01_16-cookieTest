<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
		<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				String cookievalue = cookies[i].getValue();
				
				if(cookievalue.equals("hyungso")){
					out.println(cookievalue + "님 로그아웃 하셨습니다.");
					cookies[i].setMaxAge(0); //쿠키의 유효시간을 0으로 설정 -> 로그아웃(쿠키삭제)
					response.addCookie(cookies[i]);
				}
			}
		}else{
				response.sendRedirect("login.jsp");
		}
				response.sendRedirect("cookieTest.jsp");
		%>
		
</body>
</html>