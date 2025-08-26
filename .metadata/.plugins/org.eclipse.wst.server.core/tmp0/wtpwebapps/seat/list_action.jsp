<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<% 
	request.setCharacterEncoding("utf-8");

	String emptno = request.getParameter("emptno");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		String sql = "select * from tbl_resv_2504 where empno=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, emptno);
		
		rs = pstmt.executeQuery();
		if(rs.next()){
			%>
			<jsp:forward page="success.jsp"></jsp:forward>
		<%
		}
		else{
			%>
			<jsp:forward page="fail.jsp"></jsp:forward>
			<%
					}
	}catch(Exception e){
		e.printStackTrace();
	}


%>