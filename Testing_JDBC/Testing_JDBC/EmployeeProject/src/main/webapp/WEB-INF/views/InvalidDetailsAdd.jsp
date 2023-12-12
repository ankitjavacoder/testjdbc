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

        #submit {
            background-color: aqua;
            width: 100px;
            height: 30px;
            font-weight: 900;

        }

        #submit:hover {
            background-color: rgb(0, 200, 200);
            width: 100px;
            height: 30px;
            font-weight: 900;

        }

        #res {
            background-color: rgb(255, 95, 95);
            width: 100px;
            height: 30px;
            font-weight: 900;
        }

        #res:hover {
            background-color: rgb(200, 0, 0);
            width: 100px;
            height: 30px;
            font-weight: 900;
        }
    </style>
</head>

<body>
    <div style="width: 100%; height: 750px; background-image: linear-gradient(#ffffff,#ffffff);">
        <div style="width: 100%; height: 200px;text-align: center;padding-top: 70px;">
            <h1 style="font-size: 50px;">Employee Registration Page</h1>
        </div>
        <div style="width: 100%; height: 650px; padding-top: 25px;">
            <center>
                <h1>Invalid details Entered</h1>
                <form action="addReqProcessing">
                    <label for="id">Employee ID : </label>
                    <input id="id" type="number" placeholder="Enter the Employee ID" name="eId"><br><br>
                    <label for="name">Employee Name : </label>
                    <input id="name" type="text" placeholder="Enter the Employee Name" name="eName"><br><br>
                    <label for="salary">Employee Salary : </label>
                    <input id="salary" type="number" placeholder="Enter the Employee Salary" name="eSalary"><br><br>
                    <label for="org">Employee Organization : </label>
                    <input id="org" type="text" placeholder="Enter the Employee Organization"
                        name="eOrganization"><br><br><br>
                    <input type="submit" id="submit" value="Submit">
                    <input type="reset" id="res" value="Reset Form">
                </form><br><br>
                <button class="btn btn-info">
                    <a style="text-decoration: none;font-size: 20px;color: black;" href="HomePage">Home Page</a>
                </button>
            </center>
        </div>
    </div>
</body>

</html>