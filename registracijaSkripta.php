<?php
    include 'connect.php';

    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $username = $_POST['user'];
    $lozinka = $_POST['password'];
    $lozinka2 = $_POST['password2'];
    $razina = 0;
    $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
    $registriranKorisnik = '';

    //Provjera postoji li u bazi već korisnik s tim korisničkim imenom
    $sql = "SELECT username FROM korisnik WHERE username = ?";
    $stmt = mysqli_stmt_init($dbc);
    if (mysqli_stmt_prepare($stmt, $sql)) {
        mysqli_stmt_bind_param($stmt, 's', $username);
        mysqli_stmt_execute($stmt); mysqli_stmt_store_result($stmt);
    }
    if(mysqli_stmt_num_rows($stmt) > 0){
        $msg='Korisničko ime već postoji!';
    }else{
    // Ako ne postoji korisnik s tim korisničkim imenom - Registracija korisnika u bazi pazeći na SQL injection
        $sql = "INSERT INTO korisnik (ime, prezime, username, password, razina) VALUES (?, ?, ?, ?, ?)";
        $stmt = mysqli_stmt_init($dbc);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $username, $hashed_password, $razina);
            mysqli_stmt_execute($stmt);
            $registriranKorisnik = true;
        }
    }
    if($registriranKorisnik == true){
        $message = "Uspješna registracija!";
        echo "<script type='text/javascript'>alert('$message');document.location='login.html'</script>";  
    }
    mysqli_close($dbc);
?>