<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조회 실패</title>
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
	background: #f7f7f7;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	padding: 20px;
}

section h2 {
	font-size: 24px;
	color: #e74c3c; /* 빨간색으로 실패 알림 강조 */
	margin-bottom: 20px;
	text-align: center;
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
}

input[type="button"]:hover {
	background: #2980b9;
}

@media (max-width: 768px) {
	section h2 {
		font-size: 20px;
	}
	input[type="button"] {
		width: 80%;
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
	<h2>좌석 예매 정보가 존재하지 않습니다.</h2>
	<input type="button" value="돌아가기" onclick="window.location.href='slist.jsp'">
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
