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
<table border=1>
<tr>
<th width="80">ユーザ名</th>
<th width="100">ユーザID</th>
<th width="100">パスワード</th>
</tr>
<tr>
<td><center><%= account.getName() %></center></td>
<td><center><%= account.getId() %></center></td>
<td><center><%= account.getPass() %></center></td>
</tr>
</table>
<td colspan="2"><input type="submit" value="利用者ログイン"></td>
</body>
</html>