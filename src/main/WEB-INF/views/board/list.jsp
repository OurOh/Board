<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<body>
	<h2>게시글 목록</h2>
	<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="board" itens="${boards }">
		<tr>
			<td>${board.id}</td>
			<td>${board.title}</td>
			<td>${board.writer}</td>
			<td>${board.createDate}</td>
		</tr>
	</c:forEach> 		
	</table>
	<a href="/board/write">글 작성</a>

</body>
</html>