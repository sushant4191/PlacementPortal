<?php
    session_start();
    $err = false;
?>

<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
<style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    *{
        font-family: "Open Sans", sans-serif;
    }
    .space{
        margin-left: 10mm 
    }
    html{
    max-width: 100vw;
    }
    body{
        background-image: url('https://mdbcdn.b-cdn.net/img/Photos/Others/images/76.jpg');
        height: 100vh;
        margin: 0;
        padding: 0;
    }
    .d1{
        margin:0;
        background: white;
        width: 100%;
        padding: 3mm;
        padding-left: 5mm;
    }
</style>
</head>
<body>
    <h1 class="d1">Placement Portal</h1>
<?php

    if(isset($_POST['sub']))
    {
        require('db.php');
        $company_name = $_POST['company_name'];
        $profile_name = $_POST['profile_name'];
        $passwd = $_POST['passwd'];

        $str = "SELECT * FROM placement_portal.jobs WHERE jobs.company_name='$company_name' AND jobs.profile_name='$profile_name' AND jobs.password='$passwd'";

        $stmt = $conn->query($str);

        $row=$stmt->fetch(PDO::FETCH_ASSOC);
        if($row)
        {
            $_SESSION['profile_name']=$row['profile_name'];
            $_SESSION['company_name']=$row['company_name'];
            header("Location: job_db_app.php");
        }
        else
        {
            $err = true;
        }
    }
?>

<form class="form" action="" method="post" name="login">
        <h1 class="login-title">Job Login</h1>
        <input type="text" class="login-input" name="company_name" placeholder="Company Name"  required/>
        <input type="text" class="login-input" name="profile_name" placeholder="Profile Name"  required/>
        <input type="password" class="login-input" name="passwd" placeholder="Password"  required/>
        <input type="submit" name="sub" value="Log In" class="login-button" />
        <p class="error">
            <?php
            if($err)
                echo "Invalid credentials!";
            ?>
        </p>
        <p class="link"><a href="job_register.php">New Registration</a><span class="space"></span><a href="std_login.php">For students</a></p>
</form>


</body>
</html>