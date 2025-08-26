<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>이름 입력</title></head>
<body>
  <h2>이름을 입력하세요</h2>
  <form action="insert" method="post">
    이름: <input type="text" name="name">
    <input type="submit" value="저장">
  </form>
  <a href="list">목록 보기</a>
</body>
</html>
