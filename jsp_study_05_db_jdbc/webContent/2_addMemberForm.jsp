<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보입력</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1>회원정보 입력하기</h1>
	</header>
	<section>
		<h2>회원 정보입력 폼</h2>
		<div class="contentWrap">
			<form action="3_addMember.jsp" method="post" class="contentWrap">
				<table>
					<tr>
						<th><label for="name">이름</label></th>
						<td><input type="text" name="name" id="name" /></td>
					</tr>
					<tr>
						<th><label for="userid">아이디</label></th>
						<td><input type="text" name="userid" id="userid" /></td>
					</tr>
					<tr>
						<th><label for="pwd">암호</label></th>
						<td><input type="password" name="pwd" id="pwd" /></td>
					</tr>
					<tr>
						<th><label for="email">이메일</label></th>
						<td><input type="text" name="email" id="email" /></td>
					</tr>
					<tr>
						<th><label for="phone">전화번호</label></th>
						<td><input type="text" name="phone" id="phone" /></td>
					</tr>
					<tr>
						<th><label>등급</label></th>
						<td>
							<input type="radio" name="admin" value="1"/> 관리자 &nbsp;
							<input type="radio" name="admin" value="0" checked/> 일반회원 &nbsp;
						</td>
					</tr>
				</table>
				<div class="btnWrap">
					<input type="submit" value="전송" />
					<input type="reset" value="취소" />
				</div>
			</form>
		</div>
	</section>
</body>
</html>