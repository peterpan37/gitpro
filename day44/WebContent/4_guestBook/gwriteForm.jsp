<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� �ۼ� ������ </title>
</head>
<link href="../css/mystyle.css" type="text/css"  rel="stylesheet" >
<body>
	<div id="header">
		<%@ include file="header.jsp" %>
	</div>
	<div id="menu">
		<%@ include file="menu.jsp" %>
	</div>
	
	<div id="main">
		<form action="gwritePro2.jsp"  method="post">   
			<table>
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" placeholder="�̸��Է�"></td>
				</tr>
				
				<tr>
					<td>E-Mail</td>
					<td><input type="text" name="email" placeholder="email@kosta.or.kr"></td>
				</tr>
				
				<tr>
					<td>HomePage</td>
					<td><input type="text" name="home" placeholder="http://edu.kosta.or.kr"></td>
				</tr>
				
				<tr>
					<td>��   ��</td>
					<td>
						<textarea rows="15" cols="50" name="contents" placeholder="�۾���"></textarea>
					</td>
				</tr>
				
				<tr>
					<td  colspan="2"  align="center">
						<input type="submit" value="�� ��" > &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="��  ��" >
						<br><br><a href="gdeleteForm.jsp"> <font color="red"> ���� ���췯 ����</font></a>
						<br><br><a href="gupdateForm.jsp"> <font color="red"> ���� ������Ʈ ����</font></a>
						<br><br><a href="greadForm.jsp"> <font color="red"> ��Ϻ���</font></a>
	
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>









