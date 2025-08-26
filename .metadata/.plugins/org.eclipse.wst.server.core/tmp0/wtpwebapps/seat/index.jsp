<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background-color: #f5f5f5;
		color: #333;
		line-height: 1.6;
	}

	section {
		width: 100%;
		min-height: calc(100vh - 130px);
		background: #ffffff;
		padding: 40px 20px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		text-align: center;
	}

	section h2 {
		font-size: 2rem;
		margin-bottom: 20px;
		color: #2c3e50;
	}

	section p {
		font-size: 1.1rem;
		color: #555;
	}

	@media (max-width: 768px) {
		section {
			padding: 30px 15px;
		}

		section h2 {
			font-size: 1.5rem;
		}

		section p {
			font-size: 1rem;
		}
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>


	<section>
		<h2>응용소프트웨어 개발 완성</h2>
		<p>index 페이지</p>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>