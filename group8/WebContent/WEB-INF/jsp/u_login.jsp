<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<style type="text/css">

</style>
</head>
<body>
<div class="text_left">
	<a href="/group8/Welcome">←トップメニュー</a>
</div>
<div class="block_center">
	<br><br>
	<div class="login_box">
		<h2 class="text_center box">利用者ログイン</h2>
		<form action="/group8/LoginServlet" method="post">
				<div class="l_ad">
					ログインID<br>
					<input type="text" size="100" name ="id" required><br>
					パスワード<br>
					<input type="text" size="100" name="pass" required><br>
				</div>
				<div class="l_ad">
					<input type="submit" value="ログイン" class="l_btn ">
				</div>
		</form>
	</div>
	<div class="text_center">
	ログインIDをお持ちでない方はこちら→<a href="/group8/RegisterServlet">ユーザ登録</a>
	</div>
</div>

</body>
</html>