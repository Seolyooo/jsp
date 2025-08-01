<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
		<!-- 
			 2025/08.01
			 설유진
			 jsp 로그와 배포
			 
			 
			 로그
			 - 시스템의 실행과정 및 서비스 개선을 위한 작업
			 - 로그 단계별 기록을 통해 서비스 개선
			 
			 라이브러리
			 - logback-classic-1.5.18.jar
			 - logback-core-1.5.18.jar
			 - slf4j-api-2.0.17.jar
			 
			 로그 설정
			 - web-inf > classes 폴더 생성 > logback.xml 파일 생성
			 - https://logback.qos.ch/manual/configuration.html 에서 설정 xml 복사
			 
			 
			 배포
			 - 이클립스 프로젝트>export >war 생성
			 - C:\Users\GGG\apache-tomcat-10.1.43\bin\startup.bat 실행
			 - C:\Users\GGG\apache-tomcat-10.1.43\webapps  폴더에 배포파일 (ch10.war) 업로드 후 deploy 확인 후 브라우저 확인 
	
		 -->
	</head>
	<body>
		<h3>프로젝트 로그와 배포</h3>
		
		
		<h4>shop</h4>
		<a href = "/ch10/shop/customer/list.do">shop/customer crud</a>
		<a href = "/ch10/shop/product/list.do">shop/customer crud</a>
		
		<h4>college</h4>
		<a href = "/ch10/college/student/list.do">college/student crud</a>	</body>
		<a href = "/ch10/college/course/list.do">college/student crud</a>	</body>
		
		<h4>bank</h4>
		<a href = "/ch10/bank/account/list.do">college/student crud</a>	</body>
		<a href = "/ch10/bank/costomer/list.do">college/student crud</a>	</body>
		
		<h4>library</h4>
		<a href = "/ch10/library/member/list.do">college/student crud</a>	</body>
		<a href = "/ch10/library/book/list.do">college/student crud</a>	</body>
		
		
</html>