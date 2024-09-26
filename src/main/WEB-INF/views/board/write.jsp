<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<body>
	<h2>게시글 작성</h2>
	<form action="/board/write" metod="post">
		제목: <input type="text" name="title"/><br/>
		내용: <textarea name = "content"></textarea><br/>
		작성자: <input type = "text" name="writer"/><br/>
		<input type="submit" value="작성"/>
	</form>
	<a href="/board/list">목록으로</a>

</body>
</html>