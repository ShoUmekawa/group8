<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="data.User" %>
<%
   User user = (User)session.getAttribute("user");
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
<th width="80">ユーザ名</th>
<th width="100">ユーザID</th>
<th width="100">パスワード</th>
</tr>
<tr>
<td><center><%= user.getName() %></center></td>
<td><%= user.getId() %></td>
<td><center><%= user.getPass() %></center></td>
</tr>
</table>
</body>
</html>