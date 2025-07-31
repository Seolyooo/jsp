<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="jakarta.tags.core" %>
<%@ taglib prefix ="f" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
		<head>
		<meta charset="UTF-8">
	<title>JSTL</title>
	</head>
	<body>
		<h3>JSTL(java standards tag library) 실습</h3>
		
		<h4>스크립트릿 방식</h4>
		<%
			//변수선언
			String str = "hello";
			out.println("<p>str :"+str+" </p>");
			
			int num1 = 1;
			int num2 = 2;
			int num3 = 3;
			
			//조건문
			if(num1 < num2){
				out.println("<p>num1은 num2 보다 작다</p>");
			}
			if(num1 < num2){
				out.println("<p>num1은 num2 보다 작다</p>");
			}else{
				out.println("<p>num1은 num2 보다 크다</p>");
			}
			
			if(num1 < num2){
				out.println("<p>num1은 num2 보다 작다</p>");

			}else if(num2 < num3){
				out.println("<p>num2은 num3 보다 작다</p>");

			}else{
				out.println("<p>num3은 제일 크다</p>");

			}
			
			
			//반복문
			
			for(int i =0 ; i < 5 ; i++){
				out.println("<p>i : " + i + "</p>");
			}
			
			int sum = 0;
			for (int k=1; k<=10 ; k++){
				sum += k;
			}
			out.println("<p>1부터10까지의 합 :"+sum+"</p>");
			
			String[] cities ={"서울","대전","대구","부산"};
			for(String city : cities){
				out.println("<p>city :"+city+"</p>");
			}

			//문자열 처리
			
			String me = "hello korea";
			
			out.println("<p>문자열 길이 :"+ me.length()+" </p>");
			out.println("<p>문자열 자르기 :"+ me.substring(6,11)+" </p>");
			out.println("<p>문자열 교체 :"+ me.replace("korea","busan")+"</p>");
			out.println("<p>문자열 인덱스 :"+ me.indexOf("e")+" </p>");
		
		%>
		
		<h4>JSTL 방식</h4>
		<!-- 변수 -->
		<c:set var ="str" value ="hello"/>
		<p>str : ${str}</p>
		
		<c:set var ="num1" value="1"/>
		<c:set var ="num2" value="2"/>
		<c:set var ="num3" value="3"/>
		
		<!-- 조건문 -->
		<c:if test="${num1 lt num2}">
		    <p>num1은 num2 보다 작다.</p>
		</c:if>

		
		<c:choose>
			<c:when test="${num1 gt num2 }">
				<p>num1은 num2 보다 크다.</p>
			</c:when>
			<c:otherwise>
				<p>num1은 num2 보다 작다.</p>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${num1 gt num2}">
						<p>num1은 num2 보다 크다.</p>
			</c:when>
			<c:when test="${num2 gt num3 }">
						<p>num2은 num3 보다 크다.</p>
			</c:when>
			<c:otherwise>
						<p>num3은 제일 크다.</p>
			</c:otherwise>		
		</c:choose>
		
		<!-- 반복문-->
		<c:forEach var="i" begin ="1" end = "5">
			<p>i:${i}</p>
		</c:forEach>
		
		<c:set var="sum" value ="0"/>
		<c:forEach var ="k" begin="1" end ="10">
			<c:set var = "sum" value ="${sum+k}"/>
		</c:forEach>
		<p>합 :${sum} </p>
		
		<c:set var ="cities">서울,대구,대전,부산,광주</c:set>
		<c:forEach var="city" items="${cities}">
		    <p>city : ${city}</p>
		</c:forEach>

		
		
		<!-- 문자열 처리  -->
			<c:set var="message" value="hello korea" />
			
			<p>문자열 길이 : ${f:length(message)}</p>
			<p>문자열 자르기 : ${f:substring(message, 6, 11)}</p>
			<p>문자열 바꾸기 : ${f:replace(message, "korea", "busan")}</p>
			<p>문자 'e'의 위치 : ${f:indexOf(message, "e")}</p>
		
		
		
		
		
		
		
	
	</body>
</html>