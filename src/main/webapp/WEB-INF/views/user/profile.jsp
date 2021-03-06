<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your profile</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/my.css"/>">
</head>
<body>
	<c:choose>
		<c:when test="${user.sex=='female'}">
			<div class="divParent">
				<div class="w3-card-4 divChild">
					<img
						src="<c:url value="/resources/images/user_avatar_female.jpg" />"
						style="width: 100%; height: 100%;" alt="Norway">
					<div class="w3-container w3-center">
						<p class="xSmallP">${user.username}</p>
						<p class="xSmallP">${user.email}</p>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="divParent">
				<div class="w3-card-4 divChild">
					<img src="<c:url value="/resources/images/user_avatar.png" />"
						style="width: 100%; height: 100%;" alt="Norway">
					<div class="w3-container w3-center">
						<p class="xSmallP">${user.username}</p>
						<p class="xSmallP">${user.email}</p>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>