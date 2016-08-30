<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "error.jsp"%>
<%@ page import = "java.sql.* , java.util.*"%>
<%@ page import = "dbconn.util.*" %>

<%!
	int numPerPage = 7;  //한페이지에 보여줄 게시글 수 
	int numPerBlock = 5;  //한페이지에 보일 페이지 번호의 개수 지정
	
	public void jspInit(){
		BookDAO.loadOracleDriver();
	}
	
%>

<html><head><title>방명록</title></head>
<link href="../css/mystyle.css" rel="stylesheet" type="text/css">
<body>
	<h3 id="header">방명록</h3>
	<div align="center"><a href="gwriteForm.jsp">방명록 작성(쓰기)</a></div>
	<div align="center"><a href="gdeleteForm.jsp">방명록 삭제</a></div>
	<div align="center"><a href="gupdateForm.jsp">방명록 업데이트</a></div>
	<div id="menu"><%@include file="menu.jsp" %></div>
	<div id="main">
		<%
			Connection conn=BookDAO.getConnection();  //드라이버 로드 및 연결
			String pstr = request.getParameter("page"); 
			int mypage=1;
			try{
				mypage = Integer.parseInt(pstr);
			}catch(Exception e){
				try{   //page 번호가 없는 경우에는 마지막 페이지(가장 최근글)를 지정한다.
					mypage = BookDAO.getPageCount(conn, numPerPage); // ex) 5
				}catch(Exception ee){
					ee.printStackTrace();
				}
			}
			/* BookDAO의 getData() 메소드를 이용해서 현재 페이지에 소속도니 방명록 글들을 vector 타입으로 얻는다. */
			Vector data = BookDAO.getData(conn, mypage, numPerPage); //conn, 5, 3
			
			int n = data.size();
			out.println("<table width='100%'>");
			
			for(int i =0; i<n; i++) {
				BookVO info = (BookVO)data.elementAt(i);  //벡터에 포함된 BookVO 객체의 내용을 화면에 보여줌
				String name = info.getName();
				String email = info.getEmail();
				String home = info.getHome();
				String contents = info.getContents();
	%>
					<tr bgcolor="e7e7e7">
						<td> 이 름 : <%= name %></td>
					</tr>
					<tr>
						<td> E-Mail : 
						<%
							if(email !=null && email.length()>0){
						%>
							<a href =mailto:<%= email %>><%= email %></a>
						<% } %>
						</td>
					</tr>
					<tr>
						<td> 홈페이지 : 
						<%
							if(home !=null && home.length()>0){
						%>
							<a href=<%= home %>><%= home %></a>
						<% } %>
						</td>
					</tr>
					<tr>
						<td> 내 용 : <p style='text-align:justify'><%=contents %></p>
						</td>
					</tr>	
				<%
			}
		%>
	</table>
	<div style="text-align:center">
	<%
		//현재 페이지 번호가 소속된 블록 번호를 계산
		int currentBlock = (int)Math.ceil( mypage / (double)numPerBlock);  // 3 = ( 5 / 2.0 )
		//데이터베이스 테이블에 저장된 총 페이지 수를 얻는다.
		double totalPage = BookDAO.getPageCount(conn, numPerPage);  // 5.0
		//총 블록 수를 계산
		int totalBlock=(int)Math.ceil(totalPage/numPerBlock);  //    3 = ( 5.0 / 2 ) <=== 2.5
		
		//totalBlock 이 currentBlock 보다 크다는 것은 현재 앞쪽에 표시되지 않은 페이지 번호가 있다는 의미
		if(totalBlock > currentBlock){   // 3 > 3
			int togo= (currentBlock+1) * numPerBlock;
			if(togo > totalPage){
				togo=(int)totalPage;
			}
			%>
				<a href="greadForm.jsp?page=<%=togo %>"> 이전  </a>
			<%
		}
		//for문을 돌려서 각 페이지 번호에 해당 페이지의 방명록 내용을 읽을 수 있도록 링크를 만든다.
		for(int i=numPerBlock ; i > 0 ; i--){
			int pn = numPerBlock * (currentBlock - 1) + i;  /*   2 * 3-1  */  
			
			//페이지 번호에서 현재 페이지에는 밑줄을 친다.
			if(pn > totalPage){
				continue;
			}
			
			if(pn == mypage){
				%>
					<a href = "greadForm.jsp?page=<%=pn %>">
						<span style="text-decoration:underline;"><%=pn %>
					</a>&nbsp;&nbsp;
					
				<%
			}else{
				%>
					<a href= "greadForm.jsp?page=<%=pn %>"><%=pn %></a>&nbsp;&nbsp;
				<%
			}
		}
		if(currentBlock > 1) {
			%>
				<a href = "greadForm.jsp?page=<%=(currentBlock) * numPerBlock %>"> 다음 </a>
			<%
		}
		conn.close();
	%>
		</div>
	</div>
</body>
</html>