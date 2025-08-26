<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form name="frm" method="post" action="insert">
			<table border="1">
				<tr>
					<td>예약번호</td>
					<td><input type="text" name="resv_no"></td>
					<td>예)20230001</td>
				</tr>
				<tr> 
					<td>고객번호</td>
					<td><input type="text" name="cust_no"></td>
					<td>예)1001</td>
				</tr>
				<tr>
					<td>예약일자</td>
					<td><input type="text" name="resv_date"></td>
					<td>예)20230001</td>
				</tr>
				<tr>
					<td>코트번호</td>
					<td><input type="text" name="court_no"></td>
					<td>예)C001~c009</td>
				</tr>
				<tr>
					<td colspan="3" style="text-align:center">
						<input type="button" value="예약등록" onclick="checkResv()">
						<input type="button" value="다시쓰기" onclick="resetResv()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>