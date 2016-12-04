<?php
/**
 * Created by PhpStorm.
 * User: Greg
 * Date: 04/12/2016
 * Time: 22:18
 */

session_start();
if (!isset($_SESSION['email']))
{
    print "<div id=\"header\">";
    print "<form id=\"search\" action=\"req_login.php\" method=\"post\"> ";
    print "<label>Email <input type=\"text\" name=\"email\" id=\"email\"></label>";
    print "<label>Mot de passe<input type=\"password\" name=\"password\" id=\"password\"></label>";
    print "<input type=\"submit\" class=\"submit\" value=\"Login\">";
    print "<a href=\"inscription.php\">Inscription</a>";
    print "</form>";
    print "</div>";
} else
{
    print "<div id=\"login\">";
    print "Bonjour " . $_SESSION['nom'] . " ! <br>";
    print "<img src=\"" . $_SESSION['profilepic'] . "\">";
    print "<form action=\"logout.php\" method=\"POST\">";
    print "<input class=\"btn\" type =submit name=\"btnLogout\" value =\"Logout\">";
    print "</form>";
    print "</div>";
}


?>