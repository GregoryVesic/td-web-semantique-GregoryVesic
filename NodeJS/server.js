var express = require('express'); // Créer un serveur
var morgan = require('morgan'); // Charge le middleware de logging
var favicon = require('serve-favicon'); // Charge le middleware de favicon
var bodyParser = require('body-parser'); // Parsing JSON

var logger = require('log4js').getLogger('Server');
var app = express();

app.use(morgan('combined')); // Active le middleware de logging

app.use(express.static(__dirname + '/public')); // Indique que le dossier /public contient des fichiers statiques (middleware chargé de base)
app.use(bodyParser());

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');

/* On affiche le formulaire d'enregistrement */

app.get('/', function (req, res) {
    res.redirect('/login');
});

app.get('/login', function (req, res) {
    res.render('login');
    res.redirect('/register');
});

app.post('/login', function (req, res) {
    var username = req.body.username;
    var mdp = req.body.password;
    verif(username, mdp);
});

app.get('/inscription', function (req, res) {
    res.render('register');
});

app.get('/register', function (req, res) {
    // TODO ajouter un nouveau utilisateur
});

/* On affiche le profile  */
app.get('/profile', function (req, res) {
    // TODO
    // On redirige vers la login si l'utilisateur n'a pas été authentifier
    // Afficher le button logout
});

app.post('/req_inscription', function (req, res) {
    var email = req.body.email;
    //var mdp = req.body.mdp2;
    var mdp = req.body.password;
    var nom = req.body.nom;
    var prenom = req.body.prenom;
    var tel = req.body.tel;
    var url = req.body.website;
    var sexe = req.body.sexe;
    var birthdate = req.body.birthdate;
    //var age = req.body.age;
    var ville = req.body.ville;
    var taille = req.body.taille;
    var couleur = req.body.couleur;
    var profilepic = req.body.profilepic;
    logger.info(email, mdp, nom, prenom, tel, url, sexe, birthdate, ville, taille, couleur, profilepic);
    inserer(req.body);
});

logger.info('server start');
app.listen(1313);

var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'test',
    password: 'test',
    database: 'pictionnary',
    port: 3307
});

function verif(username, mdp) {
    connection.connect();

    connection.query("select email from users where email='" + username + "' AND password='" + mdp + "'", function (err, rows, fields) {
        //connection.query("select * from users",function(err,rows, fields){
        //logger.info("select email from users where email='" + username + "' AND password='"+mdp+"'");
        if (!err) {
            if (rows.length > 0) {
                logger.info('Authentification valide !');
            }
            else {
                logger.info('Authentification non valide !');
            }

        }
        else {
            logger.info('Erreur SQL !');
        }
        connection.end();
    });

}

// userInfo : contenu des champs du body dans un JSON
function inserer(userInfo) {
    //connection.connect();
    connection.query("INSERT INTO users (email, password, nom, prenom, tel, website, sexe, birthdate, ville, taille, couleur, profilepic) VALUES ('" + userInfo.email + "','" + userInfo.mdp + "','" + userInfo.nom + "','" + userInfo.prenom + "','" + userInfo.tel + "','" + userInfo.website + "','" + userInfo.sexe + "', '" + userInfo.birthdate + "','" + userInfo.ville + "', " + userInfo.taille + ",'" + userInfo.couleur + "','" + userInfo.profilepic + "')", function (err, result) {
        logger.debug(result);
        if (!err) {
           logger.info('Insertion : OK');
        } else {
           logger.info('Erreur SQL !');
           connection.close();
           throw err;
        }
    });
}