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
<div class="text_left">
	<a href="/group8/Welcome">←トップメニュー</a>
</div>
<div class="block_center">
	<br><br>
	<div class="login_box">
		<h2 class="text_center box">利用者ログイン</h2>
		<form action="/group8/LoginServlet" method="post">
			<table class="login_table">
				<tr class="h20">
					<th>ログインID</th><br>
					<td><input type="text" name ="id" required></td>
				</tr>
				<tr class="h30">
					<th>パスワード</th><br>
					<td><input type="text" name="pass" required></td>
				</tr>
				<tr class="h50">
					<td colspan="2"><input type="submit" value="ログイン" class="login_button"></td>
				</tr>
			</table>
		</form>
	</div>
</div>
<div class="text_center">
	ログインIDをお持ちでない方はこちら→<a href="/group8/RegisterServlet">ユーザ登録</a>
</div>
</body>
</html>