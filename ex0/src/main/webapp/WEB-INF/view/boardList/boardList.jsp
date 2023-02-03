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
	table{
		margin:auto;
		margin-top:100px;
		border-collapse: collapse;
		border:1px solid black;
		width:400px;
	}
	th,td{
		border:1px solid black;
		text-align: center;
	}
</style>
</head>
<body>

	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<c:forEach var="boardlist" items="${list}">
			<tr>
				<td><c:out value="${boardlist.no}" /></td>
				<td><a href="boardContent.do?no=<c:out value="${boardlist.no}"/>"><c:out value="${boardlist.title}" /></a></td>
				<td><c:out value="${fn:substring(boardlist.bdate,0,10)}" /></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="2">
				<input type="button" onclick="loaction='boardWrite.do';" value="글작성">
			</td>
		</tr>
	</table>

</body>
</html>