<%@page import="webanime.model.UserModel"%>
<%@page import="webanime.Bus.IuserBus"%>
<%@page import="webanime.Bus.impl.userBus"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print( request.getAttribute("user"));
	
	%>
</body>
</html>