<?php 
  session_start();
  if(isset($_GET["a"]) && $_GET["a"] != 0 && $_GET["a"] > 10)
    $_SESSION["curURL"] = $_SERVER["REQUEST_URI"];
  
  include_once ('lib/DataProvider.php'); 
  include_once ('lib/ShoppingCart.php');
?>

<!DOCTYPE html>
<html lang="en"><head>
	<title> Example </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
 	<script type="text/javascript" src="1.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" href="vendor/font-awesome.css">
 	<link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
</head>
<body >

  <?php include_once "modules/mHeader.php" ?>
  <?php include_once "modules/mMenu.php" ?>
  
  <?php include_once "modules/mContent.php" ?>

    <!-- footer -->
    <?php include_once "modules/mFooter.php" ?>
</body>
</html>