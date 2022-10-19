<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String uid="scott";
	String pass="tiger";
	String sql="insert into member values(?,?,?,?,?,?)";
%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin");
	
	try{
		//1단계 : jdbc 드라이버 로드 (db와 오라클 서버를 연결)
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2단계 : 데이터베이스 연결 (db사용자 접근권한 연결)
		conn = DriverManager.getConnection(url, uid, pass);
		//3단계 : statement 객체 생성하기 (sql문장 가져오기)
		pstmt = conn.prepareStatement(sql);
		//4단계 : 각각의 변수에 바인딩(바인딩 변수 채우기 , db에 저장)
		pstmt.setString(1, name);	//(?,?,?,?,?,?) 1번째 ? 입력
		pstmt.setString(2, userid);	//(?,?,?,?,?,?) 2번째 ? 입력
		pstmt.setString(3, pwd);	//(?,?,?,?,?,?) 3번째 ? 입력
		pstmt.setString(4, email);	//(?,?,?,?,?,?) 4번째 ? 입력
		pstmt.setString(5, phone);	//(?,?,?,?,?,?) 5번째 ? 입력
		pstmt.setInt(6, Integer.parseInt(admin));	//(?,?,?,?,?,?) 6번째 ? 입력
		
		//5단계 : sql문 실행하여 결과 처리
		pstmt.executeUpdate();
				
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//6단계 : 사용한 리소스 해제
		try{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력내용 db추가</title>
</head>
<body>
	<h3>회원 목록 저장 성공</h3>
	<a href="1_allMember.jsp">회원 전체 목록보기</a>
</body>
</html>