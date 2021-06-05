<!DOCTYPE html>
<html>
<head>
	<title>Job Registration</title>
	<link rel="stylesheet" type="text/css" href="style.css">
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
	.d1{
        margin:0;
        background: white;
        width: 100vw;
        padding: 3mm;
        padding-left: 5mm;
    }
	</style>
</head>
<body>
	<h1 class="d1">Placement Portal</h1>
	<form class="form" action="" method="post">
        <h1 class="login-title">Job registration</h1>
        <input type="text" class="login-input" name="company_name" placeholder="Company Name" required />
        <input type="text" class="login-input" name="profile_name" placeholder="Profile Name" required />
        <input type="text" class="login-input" name="job_details" placeholder="Job Details" />
        <input type="date" class="login-input" name="application_deadline" placeholder="Application deadline" required />
        <input type="number" class="login-input" name="ctc" placeholder="CTC" required />
        <input type="password" class="login-input" name="passwd" placeholder="Password" required />
        <input type="submit" name="sub" value="Register" class="login-button" />
        <p class="link"><a href="job_login.php">Click to Login</a></p>
    </form>
</body>
</html>

<?php 
	require('db.php');

	if(isset($_POST['sub']))
	{
		$company_name = $_POST['company_name'];
		$profile_name = $_POST['profile_name'];
		$job_details = $_POST['job_details'];
		$application_deadline = $_POST['application_deadline'];
		$ctc = $_POST['ctc'];
		$passwd = $_POST['passwd'];

		$sql = "INSERT INTO placement_portal.jobs(company_name, profile_name, job_details, application_deadline, ctc, password) VALUES (:company_name, :profile_name, :job_details, :application_deadline, :ctc, :passwd)";
		$stmt = $conn->prepare($sql);
		$res = $stmt->execute(
			array(
				':company_name' => $company_name,
				':profile_name' => $profile_name,
				':job_details' => $job_details,
				':application_deadline' => $application_deadline,
				':ctc' => $ctc, 
				':passwd' => $passwd
			)
		);
	}

?>
