<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規ユーザ登録</title>
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
<a href="/group8/LoginServlet">←利用者ログイン</a>
<form action="/group8/RegisterServlet" method="post">
	<h2 class="text_center box">新規ユーザー登録</h2>
	ID<br>
	<input type="text" name="id" required><br>
	パスワード<br>
	<input type="text" name="pass" required><br>
	名前<br>
	<input type="text" name="name" required><br>
	<input class="l_btn" type="submit" value="新規登録">
</form>
</body>
</html>









