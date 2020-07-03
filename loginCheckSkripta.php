<?php
session_start();
include 'connect.php';

if (isset($_POST['submitButton'])) {
    // Provjera da li korisnik postoji u bazi uz zaštitu od SQL injectiona
    $prijavaImeKorisnika = $_POST['username'];
    $prijavaLozinkaKorisnika = $_POST['password'];
    $admin = '';
    $sql = "SELECT username, password, razina FROM korisnik WHERE username = ?";
    $stmt = mysqli_stmt_init($dbc);

    if (mysqli_stmt_prepare($stmt, $sql)) {
        mysqli_stmt_bind_param($stmt, 's', $prijavaImeKorisnika);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
    }

    mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika, $levelKorisnika) or die("error");
    mysqli_stmt_fetch($stmt);
    //Provjera lozinke
    if (password_verify($_POST['password'], $lozinkaKorisnika) && mysqli_stmt_num_rows($stmt) > 0) {
        $uspjesnaPrijava = true;
        // Provjera da li je admin
        if($levelKorisnika == 1) {
            $admin = true;
        } else { $admin = false; }
        //postavljanje session varijabli
        $_SESSION['$username'] = $imeKorisnika;
        $_SESSION['$level'] = $levelKorisnika;
    } else { $uspjesnaPrijava = false; }

    if($admin == true){
        $nazivKorisnik = $_SESSION['$username'];
        $poruka1 = " Imate admin ovlasti!";
        $message = $nazivKorisnik. '' .$poruka1 ;
    } else {
        $nazivKorisnik = $_SESSION['$username'];
        $poruka1 = " dobrodošli!";
        $message = $nazivKorisnik. '' .$poruka1 ;}

    if ($uspjesnaPrijava == true && $admin == true){
        echo "<script type='text/javascript'>alert('$message');document.location='indexAdmin.php'</script>";
    }
    else if($uspjesnaPrijava == true && $admin == false){
        echo "<script type='text/javascript'>alert('$message');document.location='index.php'</script>";
    } else {
        $message = "Molimo unesite svoje podatke!";
        echo "<script type='text/javascript'>alert('$message');document.location='login.html'</script>";
    }
}
?>