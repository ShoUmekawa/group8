<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録企業一覧表示</title>
</head>
<body>
<a href="/group8/">←管理者メニュー</a>
<h2 class="text_center box">登録企業一覧表示</h2>
<table border=1>
	<tr>
		<th width="50">ID</th>
		<th width="100">企業名</th>
		<th width="150">事業内容</th>
		<th width="80">PDF</th>
	</tr>
	<tr>
		<td><center><%=  %></center></td>
		<td><center><%=  %></center></td>
		<td><center><%=  %></center></td>
		<td></td>
		<td width="70">
			<center>
				<a href="/group8/UpdataServlet?action=<% %>>">修正</a>
			</center>
		</td>
		<td width="70">
			<center>
				<a href="/group8/?action=<% %>>">消去</a>
			</center>
		</td>
	</tr>
</table>
</body>
</html>









