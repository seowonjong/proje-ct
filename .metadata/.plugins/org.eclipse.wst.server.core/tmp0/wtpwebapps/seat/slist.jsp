<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석예약조회</title>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background-color: #f9fafb;
		color: #333;
		line-height: 1.6;
	}

	section {
		width: 100%;
		min-height: calc(100vh - 200px);
		background: #fff;
		padding: 40px 20px;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: flex-start;
		text-align: center;
	}

	section h2 {
		font-size: 2rem;
		margin-bottom: 30px;
		color: #2c3e50;
	}

	form {
		width: 100%;
		max-width: 500px;
		background: #ffffff;
		padding: 30px 20px;
		border-radius: 12px;
		box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
	}

	.table-row {
		display: flex;
		flex-direction: column;
		text-align: left;
		margin-bottom: 15px;
	}

	label {
		margin-bottom: 5px;
		font-weight: bold;
		color: #2c3e50;
	}

	input[type="text"] {
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 6px;
		font-size: 1rem;
		transition: border-color 0.3s ease;
	}

	input[type="text"]:focus {
		border-color: #1abc9c;
		outline: none;
	}

	.button-group {
		text-align: center;
		margin-top: 20px;
	}

	input[type="button"] {
		background: #1abc9c;
		color: #fff;
		border: none;
		padding: 10px 20px;
		font-size: 1rem;
		border-radius: 6px;
		margin: 0 5px;
		cursor: pointer;
		transition: background 0.3s ease;
	}

	input[type="button"]:hover {
		background: #16a085;
	}

	@media (max-width: 600px) {
		section h2 {
			font-size: 1.5rem;
		}

		form {
			padding: 20px 15px;
		}
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>

	<section>
		<h2>좌석예약조회</h2>
		<form action="list_action.jsp" name="list_frm" method="post">
			<div class="table-row">
				<label for="emptno">사원번호를 입력하세요</label>
				<input type="text" name="emptno" id="emptno">
			</div>
			<div class="button-group">
				<input type="button" value="좌석예약조회" onclick="listCheck()">
				<input type="button" value="홈으로" onclick="window.location.href='index.jsp'">
			</div>
		</form>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="check.js"></script>
</body>
</html>
