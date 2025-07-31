<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
		<meta charset="UTF-8">
	<title>el</title>
	</head>
	<body>
		<h3>jsp 표현언어(EL : Expression Language)</h3>
		<%
			int num1 = 1;
			int num2 = 2;
			
			
			String str1="hello";
			String str2="welcome";
			String str3="";
			String str4=null;
			
			//표현언어 출력을 위해 jsp 내장객체 스코프 저장
			pageContext.setAttribute("num1", num1);
			request.setAttribute("num2", num2);
			session.setAttribute("str1", str1);
			application.setAttribute("str2", str2);
			
			request.setAttribute("str3", str3);
			request.setAttribute("str4", str4);
		
		%>
		<h4>표현식(Experssion)</h4>
		<p>
			num1 : <%= num1 %><br/>
			num2 : <%= num1 %><br/>
			str1 : <%= str1 %><br/>
			str2 : <%= str2 %><br/>
			
		</p>
		

		<h4>표현언어(el : expressoin language)</h4>
		<p>
			num1 : ${num1} <br/>
			num2 : ${num2} <br/>
			str1 : ${str1} <br/>
			str2 : ${str2} <br/>
		
		</p>
		
		<h4>표현언어 내장객체</h4>
		<p>
			num1 : ${pageScope.num1} <br/>
			num2 : ${requestScope.num2} <br/>
			str1 : ${sessionScope.str1} <br/>
			str2 : ${applicationScope.str2} <br/>
			session num1 : ${sessioScope.num1 }<br/><!-- num1은 pagecontext의 값 -->
		
		</p>
		
		<h4>표현언어 연산자</h4>
		<p>
		num1 + num2= ${num1 + num2 }<br/>
		num1 - num2= ${num1 - num2 }<br/>
		num1 * num2= ${num1 * num2 }<br/>
		num1 / num2= ${num1 / num2 }<br/>
		num1 % num2= ${num1 % num2 }<hr/>
		
		num1 > num2= ${num1 > num2 }<br/>
		num1 < num2= ${num1 < num2 }<br/>
		num1 >= num2= ${num1 >= num2 }<br/>
		num1 <= num2= ${num1 <= num2 }<br/>
		num1 == num2= ${num1 == num2 }<br/>
		num1 != num2= ${num1 != num2 }<hr/>
		
		
		
		num1 > num2= ${num1 gt num2 }<br/> <!-- greater then -->
		num1 < num2= ${num1 lt um2 }<br/> <!-- less then -->
		num1 >= num2= ${num1 ge num2 }<br/> <!-- greater then equal -->
		num1 <= num2= ${num1 le num2 }<br/><!-- less then equal -->
		num1 == num2= ${num1 eq num2 }<br/><!-- equal -->
		num1 != num2= ${num1 ne num2 }<hr/><!-- not equal -->
		
		empty str1 = ${empty str1 }<br/>
		empty str2 = ${empty str2 }<br/>
		empty str3 = ${empty str3 }<br/> <!-- 빈문자는 true -->
		empty str4 = ${empty str4 }<br/><!-- null값은 true -->
		str1 eq str2 = ${str1 eq str2 }<br/>
		str1 eq "hello" = ${str1 eq "hello" }<br/>
		
		
		
		
		
		
		
		
		
		
	</body>
</html>