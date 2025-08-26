<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<style>
	*{
		margin : 0;
		padding : 0;
	}
	
	
	section{
		width: 100%;
		height: calc(100vh - 160px);
		background-color: lightgray;
	}
	section h2{
		text-align: center;
		padding: 20px;
	}
	section form{
		display: flex;
		justify-content: center;
	}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 코트예약 </h2>
		<form name="frm" method="post" action="action.jsp">
			<table border="1">
				<c:forEach var="resv" items="${list}">
                <tr>
                    <td>${resv.resv_no}</td>
                    <td>${resv.cust_no}</td>
                    <td>${resv.resv_date}</td>
                    <td>${resv.court_no}</td>
                </tr>
            </c:forEach>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>