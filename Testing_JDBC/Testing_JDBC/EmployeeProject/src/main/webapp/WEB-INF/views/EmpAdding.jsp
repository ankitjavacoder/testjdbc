<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee Registration</title>
        <style>
            label {
                font-size: 25px;
            }

            #id,
            #name,
            #salary,
            #org {
                width: 250px;
                height: 25px;
            }
            #ErrorLine {
                color: rgb(250, 77, 77);
                font-size: 15px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
            }
        </style>
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

    <body>
        <div
            style="width: 100%; height: 900px; background-image: radial-gradient(rgba(197, 255, 147, 0.719),rgb(100, 167, 255));">
            <div style="width: 100%; height: 150px;text-align: center;padding-top: 20px;">
                <h1 style="font-size: 50px;">Employee Registration Page</h1>
            </div>
            <div style="width: 100%; height: 750px; ">
                <center>
                    <div style="background-color: rgba(255, 106, 106, 0.749);width: 28%;">
                        <!-- <form:errors id="ErrorLine" path="employee.*" /> -->
                    </div>
                    <form action="addReqProcessing" method="post">
                        <form:errors id="ErrorLine" path="employee.eId" /><br>
                        <label for="id">Employee ID : </label>
                        <input id="id" type="number" required placeholder="Enter the Employee ID" name="eId"><br><br>
                        <label for="name">Employee Name : </label>
                        <input id="name" type="text" required placeholder="Enter the Employee Name"  name="eName"><br><br>
                        <label for="salary">Employee Salary : </label>
                        <input id="salary" type="number" required placeholder="Enter the Employee Salary"
                            name="eSalary">
                            <br><br>
                             <form:errors id="ErrorLine" path="employee.eSalary" /><br>
                        <label for="org">Employee Organization : </label>
                        <input id="org" type="text" required placeholder="Enter the Employee Organization"
                            name="eOrganization">
                            <br>
                            <form:errors id="ErrorLine" path="employee.eOrganization" /><br>
                            <br><br>
                        <input type="submit" class="btn btn-success" value="Submit">
                        <input type="reset" class="btn btn-danger" value="Reset Form">
                    </form><br><br>
                    <button class="btn btn-primary">
                        <a style="text-decoration: none;font-size: 20px;color: black;" href="HomePage">Home Page</a>
                    </button>
                </center>
            </div>
        </div>
    </body>

    </html>