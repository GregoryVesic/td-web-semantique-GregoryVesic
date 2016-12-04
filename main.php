<?php
/**
 * Created by PhpStorm.
 * User: Greg
 * Date: 04/12/2016
 * Time: 18:46
 */

session_start();
if (!isset($_SESSION['email']))
{
    print("Pas de session trouvée !");
} else
{
    print "<div id=\"login\">";
    print "Email : " . base64_encode($_SESSION['email']);
    print "</div>";
}


print "Success to log in !";

?>