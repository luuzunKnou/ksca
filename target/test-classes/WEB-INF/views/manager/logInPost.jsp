<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
	<!-- Page for Interceptor -->
	<section>
		 <%
		 	response.sendRedirect("/");
		 %>
	</section>
<%@ include file="../include/footer.jsp"%> 