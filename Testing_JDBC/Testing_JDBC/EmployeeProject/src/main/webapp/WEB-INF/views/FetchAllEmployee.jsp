<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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

    <body style="margin: 0px;">

        <div
            style="width: 100%; float: left; height: 612px;background-image: linear-gradient(120deg,rgb(149, 149, 241),rgb(255, 207, 134),rgb(243, 137, 151),rgb(114, 219, 196));">
            <br><br><br>
            <center>
    <c:if test = "${listData.size() == 0}">
        <h1 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"> No Employees Found</h1>
    </c:if>
    <c:if test = "${listData.size() > 0}">
   <h1 class = "display-4">Employee Details </h1><br>
            <table class="table">
                <tr>
                  <th>Id</th>
                  <th>Name</th>
                  <th>Action</th>
                </tr>
                <c:forEach items="${listData}" var="user">
                <tr>
                  <td><a style="text-decoration: none;color: black;" href="fetch/${user.eId}">${user.eId}</a></td>
                  <td>${user.eName}</td>
                  <td>
                   <button class="btn btn-danger">
                   <a style="text-decoration: none;color: white;" href="delete/${user.eId}">Delete</a>
                   </button>
                   <button class="btn btn-info">
                   <a style="text-decoration: none;color: white;" href="editdata/${user.eId}">Edit</a>
                   </button>
                  </td>
                </tr>
          </c:forEach>
          </center>
          </table>
        </c:if>
            <center>
                <button class="btn btn-success">
                    <a style="text-decoration: none;font-size: 20px;color: black;" href="HomePage">Home Page</a>
                </button>
            </center>
        </div>
    </body>

    </html>