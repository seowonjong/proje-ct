<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>
<style>
	/* nav 스타일 */
	nav {
		width: 100%;
		background: #34495e; /* 헤더보다 살짝 밝은 톤 */
		display: flex;
		justify-content: center; /* 메뉴 중앙 정렬 */
		align-items: center;
		padding: 10px 0;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	}

	nav a {
		color: #ecf0f1; /* 밝은 글씨 */
		text-decoration: none;
		font-size: 1rem;
		padding: 8px 15px;
		margin: 0 5px;
		border-radius: 5px;
		transition: background 0.3s ease, color 0.3s ease;
	}

	nav a:hover {
		background: #1abc9c; /* 마우스 오버 시 강조색 */
		color: #fff;
	}
</style>
</head>
<body>
<nav>
	<a href="insert.jsp">근무좌석예약</a>
	<a href="slist.jsp">좌석예약조회</a>
	<a href="count.jsp">근무일수집계</a>
	<a href="index.jsp">홈으로</a>
</nav>
</body>
</html>
