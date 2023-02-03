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
th{
	width:200px;
}
textarea {
	padding:20px;
	resize: none;
	background-color: white;
}
input{
padding:0;
	width:100%;
	height: 100%;
}
</style>
</head>
<body>
	<form name="frm" method="post" action="boardEditOK.do">
	<table>
		<tr>
			<th>NO</th>
			<td><input type="text" name="no" value="${content.no}" readonly></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input name="title" type="text" value="${content.title}"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content" rows="20" cols="100" ><c:out
						value="${content.content}" /></textarea></td>
		</tr>
		<tr>
			<th>등록날짜</th>
			<td><c:out value="${fn:substring(content.bdate,0,10) }" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정하기">
				<input type="button"value="목록" onclick="location='boardListAll.do';" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>