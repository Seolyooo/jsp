<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>emailtest</title>

    <%--
        2025.07.30
        설유진
        jsp 이메일 발송 실습
        
        
        jsp이메일 전송 의존성(라이브러리)
        - javax.mail-1.6.2.jar:메일전송의 필요한 기능 제공
        -activation-1.1.1.jar : javax.mail-1.6.2.jar가 필요로하는 의존 라이브러리
        
        gmail smtp 앱 비밀번호 생성
        - 메일 들어가서> ㄱㅖ정관리 >보안> 2단계 인증 > 2단계 인증 사용 설정
        - gmail > 게정관리 > 보안> 앱 비밀번호 검색>앱 비밀번호 생성 후 생성 코드 session 비번 설정
        
        
        
        
        
        
        
    --%>
</head>
<body>

<h3>이메일 발송 실습</h3>

<form action="/ch06/proc/emailsend.jsp" method="post">
    <table border="1">
        <tr>
            <td>보내는 사람</td>
            <td><input type="email" name="sender" placeholder="보내는 사람 이메일 입력" required /></td>
        </tr>
        <tr>
            <td>받는 사람</td>
            <td><input type="email" name="receiver" placeholder="받는 사람 이메일 입력" required /></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" placeholder="이메일 제목 입력" required /></td>
        </tr>
        <tr>
            <td>내용</td>
            <td>
                <textarea name="content" rows="10" cols="50" placeholder="내용을 입력하세요" required></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <input type="submit" value="이메일 발송" />
            </td>
        </tr>
    </table>
</form>

</body>
</html>
