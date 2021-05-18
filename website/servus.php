<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Habedere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>


    <h1 class="display-4 my-5">Servus, <b style="color: red;"><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Willkommen bei den Ultras!</h1>

    <div class="container">
        <div class="row align-items-start">
            <div class="col-3">
                <div class="card" style="width: 18rem;">
                    <img src="https://upload.wikimedia.org/wikipedia/de/8/8a/Logo_1fc_passau.svg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">1. FC Passau</h5>
                        <p class="card-text">Traditionsverein seit 1911</p>
                        <a href="https://fcpassau.de" class="btn btn-danger">Zum Verein</a>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <img src="https://fcpassau.de/wp-content/uploads/2020/09/H1-Mannschaft-14.09.2020-4-2048x1030.jpg" class="img-fluid" alt="Herren 1">
            </div>
        </div>
    </div>

    <a href="logout.php" class="btn btn-danger mt-4 ml-3 ">Do gehts wiada aussa!</a>

</body>
</html>