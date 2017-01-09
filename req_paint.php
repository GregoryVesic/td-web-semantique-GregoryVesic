<?php
/**
 * Created by PhpStorm.
 * User: Greg
 * Date: 04/12/2016
 * Time: 23:05
 */

	// on démarre la session, si l'utilisateur n'est pas connecté alors on redirige vers la page main.php.  
	session_start();

	if (!isset($_SESSION['prenom'])) {

		header("Location: main.php");
	}

	$picture = stripslashes($_POST["picture"]);
	$drawingCommands = $_POST["drawingCommands"];
	$email = $_SESSION["email"];
	$mot = $_POST["mot"];
	//$dest = $_POST["dest"];

	// Connect to server and select database.
	$dbh = new PDO('mysql:host=localhost;dbname=pictionnary', 'test', 'test');

	//$sql = $dbh->prepare("INSERT INTO DRAWINGS (EMAIL, COMMANDS, DESSIN, MOT, DEST) VALUES (:email, :commandes, :dessin, :mot, :dest)");
	$sql = $dbh->prepare("INSERT INTO DRAWINGS (EMAIL, COMMANDS, PICTURE) VALUES (:email, :commands, :picture)");
	$sql->bindValue(":email", $email);
	$sql->bindValue(":commands", $drawingCommands);
	$sql->bindValue(":picture", $picture);
	//$sql->bindValue(":mot", $mot);
	//$sql->bindValue(":dest", $dest);

	if (!$sql->execute()) {

		echo "PDO::errorInfo():<br/>";
		$err = $sql->errorInfo();
		print_r($err);
	} else {

		echo "Votre dessin a bien été enregistré !<br><a href='main.php'>Retour</a>";
	}
 ?>