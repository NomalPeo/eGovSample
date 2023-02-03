<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		padding-top:200px;
		margin:auto;
		width:400px;
		border-collapse: collapse;
	}
	th,td{
		border:1px solid black;
		
	}
</style>
</head>
<body>
	<form action="boardWriteSave.do" method="post" name="frm">
		<table>
			<tr>
				<th>No.</th>
				<td><input type="text" name="no" value=""></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><textarea rows="20" cols="100" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">저장</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>