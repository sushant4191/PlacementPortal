<?php
	session_start();
	if(sizeof($_SESSION)==0)
		header("Location: job_login.php");
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Company Dashboard</title>

	<!-- <link rel="stylesheet" type="text/css" href="bootstrap-4.5.3-dist/css/bootstrap.min.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="bootstrap-4.5.3-dist/css/customstyle.css"> -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
  rel="stylesheet">

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    *{
        font-family: "Open Sans", sans-serif;
    }
	.dtable{
		margin: 10mm;
		border-style: solid;
		border-width: 2px;
		padding: 3mm; 
	}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand mb-0 h1" href="#">
		 	<?php echo $_SESSION['company_name']." : ".$_SESSION['profile_name'] ?>
		</a>
		
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
    	</button>

    	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    		<ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="job_db_app.php">Students Applications <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="job_db_eligibility.php">Eligibility</a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="job_db_schedule.php">Schedule</a>
		      </li>
  			</ul>

  			<form class="form-inline" action="" method="post">
    			<input class="btn btn-sm btn-outline-primary" type="submit" name="logout" value="Log Out"/>
  			</form>
  		</div>
  	</nav>


	<br>
	

	<div class="dtable">
		<h1> Students who have applied</h1>
		<br>
		<table class="table">
	  		<thead>
	  			<th scope="col"> Roll Number </th>
	  			<th scope="col"> Student Name</th>
	  			<th scope="col"> Program Name</th>
	  			<th scope="col"> Email</th>
	  			<th scope="col"> UG CPI</th>
	  			<th scope="col"> PG CPI</th>
	  			<th scope="col"> PhD CPI</th>
	  		</thead>
	  		<tbody>
	  		
	  		<?php
	  			require('db.php');
	  			//$sql = "SELECT * FROM placement_portal.eligible WHERE eligible.profile_name='".$_SESSION['profile_name']."' AND eligible.company_name='".$_SESSION['company_name']."'";
	  			$sql = "SELECT * FROM placement_portal.application A, placement_portal.student S WHERE A.rollno=S.rollno AND A.profile_name='".$_SESSION['profile_name']."' AND A.company_name='".$_SESSION['company_name']."'";
	  			
	  			$stmt = $conn->query($sql);

	  			while ($row=$stmt->fetch(PDO::FETCH_ASSOC)) {
					echo "<tr><td>";
					echo $row['rollno'];
					echo "</td><td>";
					echo $row['fname']." ".$row['lname'];
					echo "</td><td>";
					echo $row['prog_name'];
					echo "</td><td>";
					echo $row['email'];
					echo "</td><td>";
					echo $row['ug_cpi'];
					echo "</td><td>";
					if($row['pg_cpi']==-1)
						echo "-";
					else
						echo $row['pg_cpi'];
					echo "</td><td>";
					if($row['phd_cpi']==-1)
						echo "-";
					else
						echo $row['phd_cpi'];
					echo "</td></tr>";
				}
	  		?>


	  		</tbody>
	  	</table>
  	</div><br>


	<!-- jQuery (Bootstrap JS plugins depend on it) -->
	<!-- <script type="bootstrap-4.5.3-dist/js/jquery-3.5.1.min.js"></script> -->
	<!-- <script type="bootstrap-4.5.3-dist/js/bootstrp.min.js"></script> -->
	<!-- <script type="bootstrap-4.5.3-dist/js/script.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>

<?php

	if(isset($_POST['logout']))
	{	
		session_unset();
		session_destroy();
		header("Location:job_login.php");
	}

?>