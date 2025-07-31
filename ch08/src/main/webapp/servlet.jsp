<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Servlet</title>
	</head>
	<body>
		<h3>Servlet 실습하기</h3>
		
			<a href ="/ch08/hello.do">Hello Servlet</a><br/>
			<a href ="/ch08/welcome.do">welcome Servlet</a><br/>
			<a href ="/ch08/greeting.do">greeting Servlet</a>
			
			
			<form action="/ch08/hello.do" method = "post">
				<input type = "text" name ="id"><br/>
				<input type = "password" name ="pw"><br/>
				<input type = "submit" value ="전송하기" ><br/>
			
			
			
			</form>
		
		
		
		
		
		
	</body>
</html>