<?php
    session_start();
    $err = false;
?>

<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">
    
<style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    *{
        font-family: "Open Sans", sans-serif;
    }
    body{
        background-image: url('https://mdbcdn.b-cdn.net/img/Photos/Others/images/76.jpg');
        height: 100vh;
        margin: 0;
        padding: 0;

    }
    .space{
        margin-left: 10mm 
    }
    .d1{
        margin:0;
        background: white;
        width: 100%;
        padding: 3mm;
        padding-left: 5mm;
    }
    p.foot{
    height:50px;
    font-size:20px;
    font-weight:bold;
    color:#444444;
    display:flex;
    justify-content: center;
    align-items: center;
    width:100vw;
    margin:0;
    }
    p.footnam{
    
    font-size:30px;
    color:#ffffff;
    display:flex;
    font-weight:bold;
    justify-content: center;
    align-items: center;
    width:100vw;
    margin:0;
    }
}
</style>
</head>
<body>
    <h1 class="d1">Placement Portal</h1>
<?php
    if(isset($_POST['sub']))
    {
        require('db.php');
        $rollno = $_POST['rollno'];
        $passwd = $_POST['passwd'];
        $stmt = $conn->query("SELECT * FROM placement_portal.student WHERE student.rollno=$rollno AND student.passwd=$passwd");

        $row=$stmt->fetch(PDO::FETCH_ASSOC);
        if($row)
        {
            $_SESSION['rollno']=$row['rollno'];
            $_SESSION['name']=$row['fname']." ".$row['lname'];
            $_SESSION['prog_name']=$row['prog_name'];
            
            header("Location: std_db_jobs.php");
        }
        else
        {
            $err = true;
        }
    }
?>

    <form class="form" action="" method="post" name="login">
        <h1 class="login-title">Student Login</h1>

        <input type="text" class="login-input" name="rollno" placeholder="Roll Number"  required/>
        <input type="password" class="login-input" name="passwd" placeholder="Password"  required/>
        <input type="submit" name="sub" value="Log In" class="login-button" />
        <p class="error">
            <?php
            if($err)
                echo "Invalid credentials!";
            ?>
        </p>
        <p id="login1" class="link"><a href="std_signup.php">New Registration</a><span class="space"></span><a href="job_login.php">For companies</a></p>
        
    </form>

    <footer>
  <p class="foot">Front End by:</p>
  <p class="footnam">Sushant Srivastav</p>
</footer>
</body>
</html>