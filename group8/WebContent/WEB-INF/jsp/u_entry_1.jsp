<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規ユーザ登録</title>
<link rel="stylesheet" href="css/style.css">
<style type="text/css">

</style>
</head>
<body>
<div class="text_left">
	<a href="/group8/LoginServlet">←利用者ログイン</a>
</div>
<div class="block_center">
	<br><br>
	<div class="login_box">
		<h2 class="text_center box">新規ユーザー登録</h2>
		<form action="/group8/RegisterServlet" method="post">
			<div class="l_ad">
				ID<br>
				<input type="text" name="id" required><br>
				パスワード<br>
				<input type="text" name="pass" required><br>
				名前<br>
				<input type="text" name="name" required><br>
			</div>
		</form>
	</div>
</div>
	<input class="l_btn" type="submit" value="新規登録">
</body>
</html>









