<?php
include 'connect.php';
define('UPLPATH', 'img/');
$date = date('d.m.Y.');

if (isset($_POST['delete'])) {
    $id = $_POST['id'];
    $query = "DELETE FROM clanak WHERE id=$id ";
    if ($result = mysqli_query($dbc, $query)) {
        $message = "Članak je uspješno obrisan iz baze!";
        echo "<script type='text/javascript'>alert('$message');document.location='administracija.php'</script>";
    }
};

if (isset($_POST['update'])) {
    $picture = $_FILES['pphoto']['name'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    if (isset($_POST['archive'])) {
        $archive = 1;
    } else {
        $archive = 0;
    }
    $target_dir = 'img/' . $picture;
    move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target_dir);
    $id = $_POST['id'];
    $query = "UPDATE clanak SET naslov='$title', sazetak='$about', tekst='$content', slika='$picture', kategorija='$category', arhiva='$archive' WHERE id=$id ";
    if ($result = mysqli_query($dbc, $query)) {
        $message = "Promjena je spremljena!";
        echo "<script type='text/javascript'>alert('$message');document.location='administracija.php'</script>";
    }
};

if (isset($_POST['unos'])) {
    $picture = $_FILES['pphoto']['name'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    if (isset($_POST['archive'])) {
        $archive = 1;
    } else {
        $archive = 0;
    }
    $target_dir = 'img/' . $picture;
    move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target_dir);
    $query = "INSERT INTO clanak (datum, naslov, sazetak, tekst, slika, kategorija, arhiva) VALUES ('$date','$title','$about','$content','$picture','$category', $archive)";
    if ($result = mysqli_query($dbc, $query)) {
        $message = "Uspješno unešen članak!";
        echo "<script type='text/javascript'>alert('$message');document.location='administracija.php'</script>";
    }
};
?>

