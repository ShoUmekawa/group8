<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者メニュー</title>
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
<a href="/group8/Welcome">←ログアウト</a>
<h2 class="text_center box">管理者メニュー</h2>
<table>
	<tr>
		<td><form action="/group8/a_co_menu.jsp" method="get">
				<input type="submit" value="📚登録企業一覧表示" class="select_user">
			</form>
		</td>
		<td><form action="/group8/" method="get">
				<input type="submit" value="⇩企業情報登録" class="select_user">
			</form>
		</td>
	</tr>
</table>
<p>ログイン:</p>
</body>
</html>