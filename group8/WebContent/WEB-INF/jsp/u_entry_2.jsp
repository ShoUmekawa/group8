<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="scopedata.Account" %>
<%
   Account account = (Account)session.getAttribute("Register");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ登録確認</title>
</head>
<body>
<a href = "/group8/LoginServlet">←ユーザ登録</a>
<h3>ユーザ登録確認</h3>
[登録情報]
<table border=1>
<tr>
<th width="80">ユーザーID</th>
<th width="100">パスワード</th>
<th width="100">ユーザー名</th>
</tr>
<tr>
<td><center><%= account.getId() %></center></td>
<td><center><%= account.getPass() %></center></td>
<td><center><%= account.getName() %></center></td>
</tr>
</table>

<form action="/group8/RegisterServlet" method="get">
<td colspan="2">
<input type="hidden" name="action" value="re">
<input type="submit" value="登録"></td>
</form>

</body>
</html>