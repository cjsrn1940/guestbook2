<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/guestbook2/gbc" method="post">
		<table border='1'>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="text" name="password" value=""></td>
			</tr>
			
			<tr>
				<td colspan="4"><textarea name="content"></textarea></td>
			</tr>
			
			<tr>
				<td colspan="4">
					<input type="hidden" name="action" value="add">
					<button type="submit">확인</button>
				</td>
			</tr>
		</table>
	</form>
	
	
	
	<c:forEach items="${gList}" var="guestVo">
		<table border='1'>
			<tr>
				<td>${guestVo.no}</td>
				<td>${guestVo.name}</td>
				<td>${guestVo.reg_date}</td>
				<td><a href="/guestbook2/gbc?action=dform&no=${guestVo.no }">삭제</a></td>
			</tr>
			
			<tr>
				<td colspan="4">${guestVo.content}</td>
			</tr>
		</table>
	</c:forEach>

</body>
</html>