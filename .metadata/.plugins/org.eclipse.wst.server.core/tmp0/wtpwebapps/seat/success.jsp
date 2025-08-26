<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석예약조회(성공)</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

body {
	background: #f7f7f7;
	color: #333;
}

section {
	width: 100%;
	min-height: calc(100vh - 130px);
	padding: 40px 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	background: #f7f7f7;
}

section h2 {
	font-size: 26px;
	color: #2c3e50;
	margin-bottom: 30px;
	text-align: center;
}

div {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
}

table {
	width: 90%;
	max-width: 900px;
	border-collapse: collapse;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 20px rgba(0,0,0,0.1);
	background: #fff;
	margin-bottom: 20px;
}

thead {
	background: linear-gradient(90deg, #3498db, #2980b9);
	color: #fff;
}

thead th {
	padding: 15px;
	font-size: 16px;
	text-align: center;
}

tbody td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #ddd;
	font-size: 15px;
	color: #555;
}

tbody tr:hover {
	background-color: #ecf6fc;
	transition: background 0.3s;
}

input[type="button"] {
	padding: 10px 20px;
	font-size: 15px;
	background: #3498db;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background 0.3s;
	margin-top: 10px;
}

input[type="button"]:hover {
	background: #2980b9;
}

@media (max-width: 768px) {
	section h2 {
		font-size: 20px;
	}
	table {
		width: 100%;
	}
	thead th, tbody td {
		padding: 10px;
		font-size: 14px;
	}
}

/* Footer 고정 */
footer {
	width: 100%;
	height: 50px;
	background-color: #2c3e50;
	color: #fff;
	text-align: center;
	line-height: 50px;
	position: fixed;
	bottom: 0;
	left: 0;
	font-size: 0.9rem;
	box-shadow: 0 -2px 5px rgba(0,0,0,0.1);
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<%
	request.setCharacterEncoding("utf-8");
	String emptno = request.getParameter("emptno");
%>
<h2>사원번호 : <%=emptno%>님의 좌석예약 조회</h2>
<div>
<table>
<thead>
<tr>
	<th>사원번호</th>
	<th>이름</th>
	<th>근무일자</th>
	<th>좌석번호</th>
	<th>좌석위치</th>
	<th>내선번호</th>
</tr>
</thead>
<tbody>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String resvdate = "";
	String newDate = "";
	try {
		String sql = "SELECT em.empno, em.empname, re.resvdate, se.seatno, se.office, se.callno " +
					 "FROM tbl_emp_2504 em " +
					 "JOIN tbl_resv_2504 re ON em.empno = re.empno " +
					 "JOIN tbl_seat_2504 se ON se.seatno = re.seatno AND em.empno = ? " +
					 "ORDER BY re.resvdate DESC";

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, emptno);
		rs = pstmt.executeQuery();
		while(rs.next()){
			resvdate = rs.getString("resvdate");
			newDate = resvdate.substring(0,4) + "년" + resvdate.substring(4,6) + "월" + resvdate.substring(6,8) + "일";
%>
<tr>
	<td><%=rs.getString("empno")%></td>
	<td><%=rs.getString("empname")%></td>
	<td><%=newDate%></td>
	<td><%=rs.getString("seatno")%></td>
	<td><%=rs.getString("office")%></td>
	<td><%=rs.getString("callno")%></td>
</tr>
<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		if(rs != null) try{ rs.close(); } catch(Exception e){}
		if(pstmt != null) try{ pstmt.close(); } catch(Exception e){}
		if(con != null) try{ con.close(); } catch(Exception e){}
	}
%>
</tbody>
</table>

<input type="button" value="돌아가기" onclick="window.location.href='slist.jsp'">
</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
