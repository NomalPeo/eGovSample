<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: auto;
	margin-top: 100px;
	border-collapse: collapse;
	border: 1px solid black;
	width: 400px;
}
th, td {
	border: 1px solid black;
	text-align: center;
}
textarea {
	resize: none;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>NO</th>
			<td><c:out value="${content.no}"></c:out>
		</tr>
		<tr>
			<th>제목</th>
			<td><c:out value="${content.title}"></c:out>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="20" cols="100" disabled><c:out
						value="${content.content}" /></textarea></td>
		</tr>
		<tr>
			<th>등록날짜</th>
			<td><c:out value="${fn:substring(content.bdate,0,10) }" /></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="수정" onclick="location='boardEdit.do?no=${content.no}';" /> 
				<input type="button" value="목록" onclick="location='boardListAll.do';" />
				<input type="button" value="삭제" onclick="location='boardDelete.do?no=${content.no}';"/>
			</td>
		</tr>
	</table>
</body>
</html>