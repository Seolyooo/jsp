<%@ pagecontentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>fileupload</title>
		<%--
			날짜 : 2025.07.30
			이름 : 설유진
			내용 : jsp 파일 업로드 실습하기
		
		jsp 파일 업로드 실습하기
		1)	cos.jar
		- multipartrequest를 이용한 파일 업로드, 가장 많이 알려진 방식
		- 너무 오래된 라이브러리 지원으로 최신 java17에서 이슈 발생
		
		2)	apache-fileupload 방식
		- apache 오픈소스로 제공되는 파일 업로드 라이브러리
		- java 지원 재단 javax에서 jakarta로 변경되어 너무 잦은 버전변경으로 호환성 부족
		
		3)  was의 part 방식
		- tomcat9버전부터 지원되는 파일 업로드 방식
		- 업로드 파일을 part 객체로 처리됨
		
		was의 getpart 업로드 설정
		- server>context.xml > <Context allowCasualMultipartParsing="true"> 속성 선언
		- server > server.sml > 63라인 connector 태그에 maxpostsize="10485760" 속성 선언
		
		
		 --%>
	</head>
	<body>
		<h3>파일 업로드</h3>
		<form action="/ch06/proc/fileUpload.jsp" method ="post" enctype = "multipart/form-data">
			<input type = "text" name = "title" placeholder ="파일 제목 입력"/><br/>
			<input type = "text" name = "name" placeholder ="이름 입력"/><br/>
			<input type = "file" name = "file1"/><br/>
			<input type = "submit" value="파일 업로드 전송하기"/>
			
		
		
		</form>
	
	</body>
</html>