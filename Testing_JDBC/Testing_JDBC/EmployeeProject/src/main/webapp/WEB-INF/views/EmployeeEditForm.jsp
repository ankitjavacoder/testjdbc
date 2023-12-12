<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Employee Fetched Form</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</head>
<body >
<div style="width: 100%; height: 800px;background-image: linear-gradient(100deg,rgb(214, 167, 82),rgba(80, 186, 228, 0.708),rgba(157, 17, 120, 0.673))">
    <center>
    <br><br><br>
<h1 class="display4" > Employee Edit Form </h1>
<form:form action ="/EmployeeProject/editUpdatedData" modelAttribute = "data">
ID :  <form:input path = "eId" required = "true" /><br><br>
Name :  <form:input path = "eName" /><br><br>
Salary :  <form:input path = "eSalary" /><br><br>
Company :  <form:input path = "eOrganization"/><br><br>
<input class="btn btn-success" type="submit" value="Save" />
</form:form> <br>
<button class ="btn btn-info">
<a style = "text-decoration: none; color: white;" href ="<c:url value = "/home"/>" >Home </a>
</button>
</center>
</div>
</body>
</html>