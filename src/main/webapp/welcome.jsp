<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 환영</title>
</head>
<body>
		<%
			Cookie[] cookies = request.getCookies();
		
			for(int i=0; i<cookies.length; i++){
				
				String cookievalue = cookies[i].getValue();
				String cookiName = cookies[i].getName();
				
				
				out.println(cookievalue + "<br>");
				out.println("----------------------" + "<br>");
				out.println(cookiName + "<br>");
				out.println("----------------------" + "<br>");
				
				
				//if(cookievalue.equals("hyungso")){
				//	out.println(cookievalue + "님 안녕하세요. 로그인하셨습니다.");
				//}
				
			}
		
		%>
		<a href="logout.jsp">로그아웃</a>
		
</body>
</html>