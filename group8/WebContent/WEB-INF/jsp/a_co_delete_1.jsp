<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href = "/group8/#">←登録企業一覧</a>
<h3>削除確認</h3>

<table border=1>
<tr>
<th width="80">ユーザーID</th>
<th width="100">パスワード</th>
<th width="100">ユーザー名</th>
</tr>
</table>

<form action="/group8/#" method="get">
<td colspan="2">
<input type="hidden" name="action" value="re">
<input type="submit" value="削除する"></td>
</form>
</body>
</html>