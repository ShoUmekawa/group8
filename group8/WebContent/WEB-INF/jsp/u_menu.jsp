<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
input{
	color:#FFFFFF;
	font-size:20px;
	width: 10em;
	height:3em;
}
</style>
</head>
<body>
<a href="/group8/LoginServlet">ログアウト</a>
<h2 class="text_center box">利用者メニュー</h2>
<table>
	<tr>
		<td>
			<form action="/group8/SearchServlet" method="get">
			<input type="submit" value="🔍検索表示"class="select_user">
		</form>
		</td>
		<td><form action="/group8/#" method="get">
			<input type="submit" value="📚企業一覧表示" class="select_user">
		</form>
		</td>
	</tr>
</table>
</body>
</html>