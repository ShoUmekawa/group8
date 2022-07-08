<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
input{
	color:#FFFFFF;
	font-size:20px;
	width: 10em;
	height:3em;
}

}
</style>
</head>
<body>
<h2 class="text_center box">企業情報検索システム</h2>
<table>
	<tr>
		<td><form action="/group8/LoginServlet" method="get">
			<input type="submit" value="利用者ログイン"class="select_user">
		</form>
		</td>
		<td><form action="/group8/LoginServlet" method="get">
			<input type="submit" value="管理者ログイン" class="select_user">
		</form>
		</td>
	</tr>
</table>


</body>
</html>