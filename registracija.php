<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/main.css">
    <title>Registracija korisnika</title>
</head>

<body>
    <?php
    $msg = '';
    ?>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 bg-primary">
                <header>
                    <h1 class="mb-0 pb-3 text-white text-left">Registracija</h1>
                </header>
            </div>
        </div>
        <section role="main">
            <div class="row">
                <div class="col-md containerUnos">
                    <div class="unosRegistracije">
                        <form enctype="multipart/form-data" action="registracijaSkripta.php" method="POST">
                            <div class="form-item"><label for="ime" class="centerLabel">Ime: </label>
                                <div class="form-field"> <input type="text" name="ime" id="ime" class="form-field-textual centerInputTest"><span id="porukaIme" class="bojaPoruke center"></span> </div>
                            </div>
                            <div class="form-item">  <label for="prezime" class="centerLabel">Prezime: </label>
                                <div class="form-field"> <input type="text" name="prezime" id="prezime" class="form-field-textual centerInputTest"><span id="porukaPrezime" class="bojaPoruke center"></span> </div>
                            </div>
                            <div class="form-item">  <label for="user" class="centerLabel">Korisničko ime:</label> <!-- Ispis poruke nakon provjere korisničkog imena u bazi --> <?php echo '<br><span class="bojaPoruke">' . $msg . '</span>'; ?> <div class="form-field"> <input type="text" name="username" id="username" class="form-field-textual centerInputTest"><span id="porukaUsername" class="bojaPoruke center"></span> </div>
                            </div>
                            <div class="form-item">  <label for="password" class="centerLabel">Lozinka: </label>
                                <div class="form-field"><input type="password" name="pass" id="pass" class="form-field-textual centerInputTest"><span id="porukaPass" class="bojaPoruke center"></span> </div>
                            </div>
                            <div class="form-item">  <label for="password2" class="centerLabel">Ponovite lozinku: </label>
                                <div class="form-field"> <input type="password" name="passRep" id="passRep" class="form-field-textual centerInputTest"><span id="porukaPassRep" class="bojaPoruke center"></span> </div>
                            </div>
                            <div class="form-item centerBotuni"> <button class="mt-3" type="submit" value="Prijava" id="slanje">Prijava</button> </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <footer class="blockquote-footer text-center pb-3 mt-3 fixed-bottom">
            <div class="row">
                <div class="col-12">
                    @Copyright by Antonijo Ćosić
                </div>
            </div>
        </footer>
    </div>

    <script type="text/javascript">
        document.getElementById("slanje").onclick = function(event) {
            var slanjeForme = true;
            // Ime korisnika mora biti uneseno
            var poljeIme = document.getElementById("ime");
            var ime = document.getElementById("ime").value;
            if (ime.length == 0) {
                slanjeForme = false;
                poljeIme.style.border = "2px dotted red";
                document.getElementById("porukaIme").innerHTML = "Unesite ime!<br>";
            } else {
                poljeIme.style.border = "3px solid #42f548";
                document.getElementById("porukaIme").innerHTML = "";
            } // Prezime korisnika mora biti uneseno
            var poljePrezime = document.getElementById("prezime");
            var prezime = document.getElementById("prezime").value;
            if (prezime.length == 0) {
                slanjeForme = false;
                poljePrezime.style.border = "2px dotted red";
                document.getElementById("porukaPrezime").innerHTML = "Unesite Prezime!<br>";
            } else {
                poljePrezime.style.border = "3px solid #42f548";
                document.getElementById("porukaPrezime").innerHTML = "";
            } // Korisničko ime mora biti uneseno
            var poljeUsername = document.getElementById("username");
            var username = document.getElementById("username").value;
            if (username.length == 0) {
                slanjeForme = false;
                poljeUsername.style.border = "2px dotted red";
                document.getElementById("porukaUsername").innerHTML = "Unesite korisničko ime!<br>";
            } else {
                poljeUsername.style.border = "3px solid #42f548";
                document.getElementById("porukaUsername").innerHTML = "";
            } // Provjera podudaranja lozinki
            var poljePass = document.getElementById("pass");
            var pass = document.getElementById("pass").value;
            var poljePassRep = document.getElementById("passRep");
            var passRep = document.getElementById("passRep").value;
            if (pass.length == 0 || passRep.length == 0 || pass != passRep) {
                slanjeForme = false;
                poljePass.style.border = "2px dotted red";
                poljePassRep.style.border = "2px dotted red";
                document.getElementById("porukaPass").innerHTML = "Lozinke nisu iste!<br>";
                document.getElementById("porukaPassRep").innerHTML = "Lozinke nisu iste!<br>";
            } else {
                poljePass.style.border = "3px solid #42f548";
                poljePassRep.style.border = "3px solid #42f548";
                document.getElementById("porukaPass").innerHTML = "";
                document.getElementById("porukaPassRep").innerHTML = "";
            }
            if (slanjeForme != true) {
                event.preventDefault();
            }
        };
    </script>
</body>

</html>