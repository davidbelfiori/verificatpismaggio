<?php
include "../db/connection.php";
session_start();
if(isset($_POST['submit'])){


    $email=$_POST['email'];
    $password=$_POST['password'];

    $sql="select * from user where Email='$email' and password='$password'";
    $res=mysqli_query($conn,$sql);
    if($res->num_rows>0){
        $row=mysqli_fetch_assoc($res);
        if($row['TypeUser']=='Officina'){
           header('location: page.php');
        }
    }else{
        echo "<script> alert('errore1')</script>";
    }

}


?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.98.0">
    <title>Signin</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">





<link href="../page/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
    font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
    .bd-placeholder-img-lg {
        font-size: 3.5rem;
        }
      }

      .b-example-divider {
    height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
    flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
    vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
    position: relative;
    z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
    display: flex;
    flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>


    <!-- Custom styles for this template -->
    <link href="indexstyle.css" rel="stylesheet">
  </head>
  <body class="text-center">

<main class="form-signin w-100 m-auto">
  <form action="index.php" method="post">
    <img class="mb-4" src="Black Autoparts In Gear, Auto Piston, Spark Plug And Wrench, Logo Design.svg" alt="" width="70%" height="40%">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInput"  name="email" placeholder="name@example.com">
      <label for="floatingInput">Email address</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox"    value="remember-me"> Remember me
</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary"  name="submit" type="submit" style="background-color: grey; border-color: gray" >Sign in</button>

  </form>
</main>



  </body>
</html>
