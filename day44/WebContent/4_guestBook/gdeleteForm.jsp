<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<html>
<head><title>���� �ۼ�������</title></head>
<link href="../css/mystyle.css" rel="stylesheet" type="text/css">
<body>
	<div id="header">
		<%@include file="header.jsp" %>
	</div>
	<div id="menu">
		<%@include file="menu.jsp" %>
	</div>
	<div id="main">
		<form method="post" action="gdeletePro.jsp">
			<table>
				<tr>
					<td>
						������� �ϴ� ��ȣ
					</td>
					<td>
						<input type="text" name="num">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="�� ��">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="�� ��">
						<br><br><a href="gwriteForm.jsp"><font color="red">���� ���� ����</font></a>
						<br><br><a href="greadForm.jsp"><font color="red">���� �б�</font></a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>