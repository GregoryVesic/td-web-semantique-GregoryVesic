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

app.get('/', function(req, res){
    res.redirect('/login');
});

app.get('/login', function(req, res){
    res.render('login');
});

app.post('/login', function (req, res) {
    var username = req.body.username;
    var mdp = req.body.password;
    verif(username,mdp);
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

var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'test',
    password: 'test',
    database: 'pictionnary'
});

function verif(username,mdp){
    connection.connect();

    connection.query("select email from users where email='" + username + "' AND password='"+mdp+"'",function(err,rows){
        if(!err) {
            if (rows.length > 0) {
                logger.info('Authentification valide !');
            }
            else {
                logger.info('Authentification non valide !');
            }
        }
    });


    /*
    connection.query('SELECT * from users', function (err, rows, fields) {
        if (!err) {
            logger.info('Le résultat de la requête: ', rows);
        }
        else
            logger.error(err);
    });
    */

    connection.end();
}

logger.info('server start');
app.listen(1313);