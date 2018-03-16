<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Companies</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<%@ include file="../fragments/bar.jspf"%>
 <h2>List of all companies</h2>
  <table class="w3-table-all">
    <tr>
        <th>Name</th>
        <th>Location</th>
    </tr>
    <c:forEach items="${companies}" var="company">
        <tr>
            <td>${company.name}</td>
            <td>${company.location}</td>
            <%-- <td><a href="edit/${user.id}" class="w3-button w3-orange">Edit</a></td>
            <td><a href="delete/${user.id}" class="w3-button w3-red">Delete</a></td> --%>
        </tr>
    </c:forEach>
  </table>
  <%@ include file="../fragments/script.jspf"%>
</body>
</html>