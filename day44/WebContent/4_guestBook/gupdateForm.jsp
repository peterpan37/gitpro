<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<html>
<head><title>���� �ۼ�������</title></head>
<link href="../css/mystyle.css" rel="stylesheet" type="text/css">
<body>
<%-- <%
	String su = request.getParameter("num");
	int num = Integer.parseInt(su);
%> --%>

	<div id="header">
		<%@include file="header.jsp" %>
	</div>
	<div id="menu">
		<%@include file="menu.jsp" %>
	</div>
	<div id="main">
		<form method="post" action="gupdatePro.jsp">
			<table>
				<tr>
					<td>	��ȣ</td>
					<td>	<input type="text" name="num"></td>
				</tr>
				<tr>
					<td>	�̸�</td>
					<td>	<input type="text" name="name"></td>
				</tr>
				<tr>
					<td>	E-Mail</td>
					<td>	<input type="text" name="email"></td>
				</tr>
				<tr>
					<td>	Ȩ������</td>
					<td>	<input type="text" name="home"></td>
				</tr>
				<tr>
					<td>	��   ��</td>
					<td>	<textarea rows="15" cols="50" name="contents"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="������Ʈ�Ϸ�����">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="�� ��">
						<br><br><a href="gwriteForm.jsp"><font color="red">���� ���� ����</font></a>
						<br><br><a href="gdeleteForm.jsp"><font color="red">���� ���췯 ����</font></a>
						<br><br><a href="greadForm.jsp"><font color="red">���� �б�</font></a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>