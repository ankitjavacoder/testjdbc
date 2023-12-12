<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Added !</title>
    <style>
        #home{
        width: 170px;
        height: 30px;
         background-color: orange;
        }
        #home:hover{
        width: 170px;
        height: 30px;
         background-color: rgb(255, 181, 45);
        }
    </style>
</head>
<body style="margin: 0%;">
    <div style="background-image: linear-gradient(72deg,rgb(224, 107, 107),rgb(252, 232, 194),rgb(231, 38, 154)); width: 100%; height: 900px;padding-top: 90px;">
    <center>
        <h1>Employee Added</h1>
    <h3>Employee ID : ${emp.eId} </h3>
    <h3>Employee Name : ${emp.eName} </h3>
    <h3>Employee Salary : ${emp.eSalary} </h3>
    <h3>Employee Organization : ${emp.eOrganization}</h3>
    <button id="home">
        <a style="text-decoration: none;font-size: 20px;color: black;" href="HomePage">Home Page</a>
    </button>
    </center>
    </div>
</body>
</html>