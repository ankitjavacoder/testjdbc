<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invalid Delete Operation</title>
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

<body style="margin: 0;">
    <div
        style="width: 100%; height: 610px; padding-top: 50px; background-image: linear-gradient(#a17fb3b2, #df5962b7); float: left;">
        <h1 style="text-align: center;font-size: 50px;">Invalid Data Operation</h1>
        <marquee direction="left" scrollamount="10">
            <h1>Employee record Deletion unsuccesfull !!!</h1>
        </marquee>
        <center>
            <h1>Record of Employee ID : ${id} not found... </h1>
            <br><br>
        </center>
        <center>
            <button class="btn btn-info">
                <a style="text-decoration: none;font-size: 20px;color: black;" href="HomePage">Home Page</a>
            </button>
        </center>
    </div>
</body>

</html>