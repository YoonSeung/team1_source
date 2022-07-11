<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<% response.sendRedirect(request.getContextPath()+"/search/main"); %>
</body>
</html>
