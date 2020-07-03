<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>Tech Overview</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/main.css">
    
</head>

<body>
<div class="container-fluid">
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
                    <li class="nav-item">
                        <a class="nav-link link2" href="#">Administracija</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link1" href="unosClanakAdmin.html">Unos novog članka</a>
                    </li>
                </ul>
            </div>
        </nav>
        
        <?php
        include 'connect.php';
        define('UPLPATH', 'img/');
        $query = "SELECT * FROM clanak";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)){
            echo '
                <form enctype="multipart/form-data" action="skripta.php" method="POST">
                <div class="row">
                <div class="col-xl-3">
                    <div class="form-item">
                        <label for="title"><b>Naslov vjesti</b>:</label>
                    <div class="form-field">
                        <input type="text" name="title" class="form-field-textual input-lg" value="'.$row['naslov'].'">
                    </div>
                    </div>
                </div>
                <div class="col-xl-3">
                    <div class="form-item">
                        <label for="about"><b>Kratki sadržaj vijesti</b> (do 50 znakova):</label>
                    <div class="form-field">
                        <textarea name="about" id="" cols="30" rows="10" class="form-field-textual input-lg">'.$row['sazetak'].'</textarea>
                    </div>
                    </div>
                </div>
                <div class="col-xl-3">
                    <div class="form-item">
                        <label for="content"><b>Sadržaj vijesti</b>:</label>
                    <div class="form-field">
                        <textarea name="content" id="" cols="30" rows="10" class="form-field-textual input-lg">'.$row['tekst'].'</textarea>
                    </div>
                    </div>
                </div>
                <div class="col-xl-3">
                    <div class="form-item">
                        <label for="pphoto"><b>Slika</b>:</label>
                    <div class="form-field">
                        <input type="file" class="input-text" id="pphoto" value="'.$row['slika'].'" name="pphoto"/>
                        <br><img src="' . UPLPATH . $row['slika'] . '" width=100px>
                        </div>
                        </div>
                        <div class="form-item">
                            <label for="category">Kategorija vijesti:
                                <select name="category" id="" class="form-field-textual" value="'.$row['kategorija'].'">
                                    <option value="mobiteli">Mobiteli</option>
                                    <option value="konzole">Konzole</option>
                                </select>
                            </label>
                        <div class="form-field">
                            
                        </div>
                        </div>
                            <div class="form-item ">
                                <label >Spremiti u arhivu:
                                    <div class="form-field">
                                    ';
                                        if($row['arhiva'] == 0) {
                                            echo '<input type="checkbox" name="archive" id="archive"/> Arhiviraj?';
                                        } 
                                        else {
                                            echo '<input type="checkbox" name="archive" id="archive" checked/> Arhiviraj?';
                                        }
                                        echo '
                                    </div>
                                </label>
                            </div>
                                <div class="form-item">
                                    <input type="hidden" name="id" class="form-field-textual" value="'.$row['id'].'">
                                    <button type="submit" name="update" value="Prihvati"> Izmjeni</button>
                                    <button type="submit" name="delete" value="Izbriši"> Izbriši</button>
                                </div>
                </div>
                </form>
                </div>
                <hr><hr>';
        }
        ?>

        <footer class="blockquote-footer text-center pb-3 mt-3 ">
            <div class="row">
                <div class="col-12">
                    @Copyright by Antonijo Ćosić
                </div>
            </div>
        </footer>
    </div>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    

    </div>
</body>

</html>