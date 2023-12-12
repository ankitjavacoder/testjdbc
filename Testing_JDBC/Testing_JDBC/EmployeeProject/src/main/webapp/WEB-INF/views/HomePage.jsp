<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>

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
    <br><br><br>
    <div style="width: 100%; height: 750px; background-image: radial-gradient(rgb(255, 211, 211),rgb(149, 207, 255));">
        <div style="width: 100%; height: 200px;  float: left; padding-top: 50px;">
            <center>
                <h1 class="display-4">Welcome to Employee Database Application</h1>

            </center>
        </div>
        <div style=" width: 100%; height: 100px;float: left;">
            <div style="text-align: center;padding-top: 2%;">
                <form action="addEmp">
                    <button type="submit" class="btn btn-success">Click here for Adding the Employee
                        Data</button>

                </form><br><br>
                <form action="delEmp">
                    <button type="submit" class="btn btn-danger">Click here for Delete the Employee
                        Data</button>

                </form><br><br>
                <form action="fetchEmp">
                    <button type="submit" class="btn btn-info">Click here for Fetch the Employee
                        Data</button>

                </form><br><br>
                <form action="getEmp">
                    <button type="submit" class="btn btn-warning">Click here to show all Employee Names
                </form>
            </div>
        </div>
    </div>
</body>

</html>