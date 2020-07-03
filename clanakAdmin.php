<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/clanakStyle.css">

    <title>Članak</title>

</head>
<body>
    <?php
    $idClanak = $_GET['id'];

    include 'connect.php';
    if ($dbc) 
    {
        $query = "SELECT * FROM clanak WHERE id = $idClanak";
        $result = mysqli_query($dbc, $query) or die("Error");

        if ($result) 
        {
            while ($row = mysqli_fetch_array($result)) 
            {
                    $naslov = $row["naslov"];
                    $tekst = nl2br($row["tekst"]);
                    $slika = $row["slika"];
                    $datumObjave = $row["datum"];
            }
        }
    }
        
    mysqli_close($dbc);
    ?>
    
    <div class="container">
        <div calss="row">
            <div class="col-12 bg-primary">
                <header>
                    <h1 class="mb-0 text-white text-center">Tech Overview</h1>
                </header>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                        <a class="nav-link link1 " href="indexAdmin.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link2" href="kategorijaMobiteliAdmin.php">Mobiteli</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link1" href="kategorijaKonzoleAdmin.php">Konzole</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link link2" href="administracija.php">Administracija</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link1" href="unosClanakAdmin.html">Unos novog članka</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="jumbotron mb-1">
        <img class="mx-auto d-block" src="img/<?php echo $slika ?>"; style="width:600px;height:400px;" />
            <h1 class="display-4 "><?php echo $naslov?></h1>
            <p class="lead clanakTekst"><?php echo $tekst?> </p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button"><?php echo $datumObjave?></a>
            </p>
        </div>
        
        <footer class="blockquote-footer text-center pb-3 mt-3">
            <div class="row">
                <div class="col-12">
                    @Copyright by Antonijo Ćosić
                </div>
            </div>
        </footer>
    </div>

    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</body>
</html>