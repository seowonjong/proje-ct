<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>이름 목록</title></head>
<body>
  <h2>입력된 이름 목록</h2>
  <ul>
    <c:forEach var="item" items="${list}">
      <li>${item}</li>
    </c:forEach>
  </ul>
  <a href="index.jsp">입력 페이지로</a>
</body>
</html>
