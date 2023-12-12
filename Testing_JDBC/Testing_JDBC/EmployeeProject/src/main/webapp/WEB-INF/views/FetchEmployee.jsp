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

<body>
    <div style="width: 100%; height: 750px; background-image: linear-gradient(#ffc996,#f6a8ff,#b5ffcc);">
        <div style="width: 100%; height: 200px; text-align: center;padding-top: 70px;">
            <h1 style="font-size: 50px;">Employee Fetching Page</h1>
        </div>
        <div style="width: 100%; height: 650px;  padding-top: 25px;">
            <center>
                <form action="FetchDataReqProcessing">
                    <label for="id">Employee ID : </label>
                    <input id="id" type="number" placeholder="Enter the Employee ID" name="ID"><br><br>
                    <input type="submit" class="btn btn-info" value="Submit">
                    <input type="reset" class="btn btn-danger" value="Reset Form">
                </form><br><br>
                <button class="btn btn-info">
                    <a style="text-decoration: none;font-size: 20px;color: black;" href="HomePage">Home Page</a>
                </button>
            </center>
        </div>
    </div>
</body>

</html>