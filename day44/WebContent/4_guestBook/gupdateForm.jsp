<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<html>
<head><title>방명록 작성페이지</title></head>
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
					<td>	번호</td>
					<td>	<input type="text" name="num"></td>
				</tr>
				<tr>
					<td>	이름</td>
					<td>	<input type="text" name="name"></td>
				</tr>
				<tr>
					<td>	E-Mail</td>
					<td>	<input type="text" name="email"></td>
				</tr>
				<tr>
					<td>	홈페이지</td>
					<td>	<input type="text" name="home"></td>
				</tr>
				<tr>
					<td>	내   용</td>
					<td>	<textarea rows="15" cols="50" name="contents"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="업데이트하러가기">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="취 소">
						<br><br><a href="gwriteForm.jsp"><font color="red">방명록 쓰러 가기</font></a>
						<br><br><a href="gdeleteForm.jsp"><font color="red">방명록 지우러 가기</font></a>
						<br><br><a href="greadForm.jsp"><font color="red">방명록 읽기</font></a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>