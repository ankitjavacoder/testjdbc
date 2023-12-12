<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details Found</title>
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
    <body style="margin: 0%;">
        <div style="background-image: linear-gradient(20deg,rgb(255, 152, 152),rgb(255, 182, 219),rgb(234, 186, 144)); width: 100%; height: 800px;padding-top: 90px;">
        <center>
            <br><br>
        <c:if test="${empty data}">
                <h1>No Such Employee Found...</h1> <br><br>
        </c:if>
        <c:if test="${not empty data}">
            <h1>Employee Fetched</h1>
        <h3>Employee ID : ${data.eId} </h3>
        <h3>Employee Name : ${data.eName} </h3>
        <h3>Employee Salary : ${data.eSalary} </h3>
        <h3>Employee Organization : ${data.eOrganization}</h3>
        </c:if>
        <br>
        <button class="btn btn-info">
            <a style="text-decoration: none;font-size: 20px;color: white;" href= "<c:url value = "/home"/>" >Home Page</a>
        </button>
        </center>
        </div>
</body>
</html>