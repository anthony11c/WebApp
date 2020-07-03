<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Mobiteli</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/main.css">
</head>

<body>
    <div class="container">
        <div calss="row">
            <div class="col-12 bg-primary">
                <header>
                    <h1 class="mb-0 text-white text-center">Tech Overview</h1>
                </header>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link link1 " href="indexAdmin.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link2" href="#">Mobiteli</a>
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
            <h1 class="display-4">Prava stranica za zanimljive informacije!</h1>
            <p class="lead">Web stranica kreirana je kao projekt iz kolegija Programiranje web aplikacija koristeći tehnologije poput javascripta, jQuery-a, PHP-a te HTML, CSS i BOOTSTRAP tehnologija. </p>
        </div>
        
        <section class="section1">
        <h2 class="pl-3 pt-2 pb-2">Phones</h2>
            <div class="row">
                <div class="card-group">
            <?php
            //Spajanje na bazu
            include 'connect.php';
            //Povlačenje svih stupaca iz tablice clanak za kategoriju mobiteli
            $query = "SELECT * FROM clanak WHERE kategorija='mobiteli'";
            $result = mysqli_query($dbc, $query);
            while($row = mysqli_fetch_array($result)){
                    echo'<div class="col-lg-4 col-sm-12">';
                        echo'<a href="clanak.php?id=' . $row['id']. '">';
                            echo'<div class="card mb-1 h-100">';
                                echo'<div class="card-body text-center">';
                                    echo'<img class="slikaArtikl" src="img/'.$row['slika'].'">';
                                    echo'<h5 class="card-title mt-2">';
                                        echo $row['naslov'];
                                    echo'</h5>';
                                    echo'<p class="card-text text">';
                                        echo $row['sazetak'];
                                    echo'</p>';
                                    echo'<br/>';
                                    echo'<p class="datum">';
                                        echo $row['datum'];
                                    echo'</p>';   
                                echo'</div>';
                            echo'</div>';
                        echo'</a>';
                    echo'</div>';
            }?>
                </div>
            </div>
        </section>
        
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