var express = require('express'); // Créer un serveur
var session= require('express-session'); // Créer la session
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

/* Session */
app.use(session({secret: 'ssshhhhh'}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

var sess;
/* On affiche le formulaire d'enregistrement */

app.get('/', function (req, res) {
    // La session est en cours lorsque l'utilisateur requête l'app via l'URL
    sess = req.session;
    // On check si la session est existante, on route selon son existance
    if(sess.email) {
        res.redirect('/profile');
    }
    else {
        res.render('login');
    }
});

app.get('/login', function (req, res) {
    res.render('login');
});

app.post('/login', function (req, res) {
    var username = req.body.username;
    var mdp = req.body.password;

    connection.connect();

    connection.query("select * from users where email='" + username + "' AND password='" + mdp + "'", function (err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                logger.info('Authentification valide !');
                sess = req.session;
                sess.valid= true;
                if (username=="admin@gmail.com") {
                    sess.admin = username;
                    sess.password = rows[0].password;
                    sess.prenom = rows[0].prenom;
                    sess.nom = rows[0].nom;
                    sess.tel = rows[0].tel;
                    sess.tel = rows[0].tel;
                    sess.website = rows[0].website;
                    sess.sexe = rows[0].sexe;
                    sess.birthdate = rows[0].birthdate;
                    sess.ville = rows[0].ville;
                    sess.taille = rows[0].taille;
                    sess.couleur = rows[0].couleur;
                    sess.profilepic = rows[0].profilepic;
                    logger.info("gg");
                    res.redirect('profile');
                } else {
                    // On assigne ici l'username (email) saisie dans le HTML à la Session
                    sess.email = username;
                    sess.password = rows[0].password;
                    sess.prenom = rows[0].prenom;
                    sess.nom = rows[0].nom;
                    sess.tel = rows[0].tel;
                    sess.tel = rows[0].tel;
                    sess.website = rows[0].website;
                    sess.sexe = rows[0].sexe;
                    sess.birthdate = rows[0].birthdate;
                    sess.ville = rows[0].ville;
                    sess.taille = rows[0].taille;
                    sess.couleur = rows[0].couleur;
                    sess.profilepic = rows[0].profilepic;
                    logger.info(sess.profilepic);
                    res.redirect('profile');
                    //res.render('profile');
                }
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
});

app.get('/inscription', function (req, res) {
    res.render('register');
});

app.get('/register', function (req, res) {
    // TODO ajouter un nouveau utilisateur
});

app.post('/req_inscription', function (req, res) {
    var email = req.body.email;
    var password = req.body.password;
    var nom = req.body.nom;
    var prenom = req.body.prenom;
    var tel = req.body.tel;
    var url = req.body.website;
    var sexe = req.body.sexe;
    var birthdate = req.body.birthdate;
    var ville = req.body.ville;
    var taille = req.body.taille;
    var couleur = req.body.couleur;
    var profilepic = req.body.profilepic;
    inserer(req.body);
});

app.get('/profile', function (req, res) {
    //getProfil(sess.email);
    sess = req.session;
    //if (sess.valid = true) {
        var connection = mysql.createConnection({
            host: 'localhost',
            user: 'test',
            password: 'test',
            database: 'pictionnary',
            port: 3306
        });
    if (sess.email) {
        connection.query("SELECT * FROM drawings WHERE dest='" + sess.email + "'", function (err, rows, fields) {
            if (!err) {
                if (rows.length > 0) {
                        logger.info('Requete valide !');
                        res.render('profile', {
                            email: sess.email,
                            password: sess.password,
                            nom: sess.nom,
                            prenom: sess.prenom,
                            tel: sess.tel,
                            website: sess.website,
                            sexe: sess.sexe,
                            birthdate: sess.birthdate,
                            ville: sess.ville,
                            taille: sess.taille,
                            couleur: sess.couleur,
                            profilepic: sess.profilepic,
                            res: rows
                        });
                    }
                    else {
                        logger.info('Requete non valide !');
                    res.render('profileVide', {
                        email: sess.email,
                        password: sess.password,
                        nom: sess.nom,
                        prenom: sess.prenom,
                        tel: sess.tel,
                        website: sess.website,
                        sexe: sess.sexe,
                        birthdate: sess.birthdate,
                        ville: sess.ville,
                        taille: sess.taille,
                        couleur: sess.couleur,
                        profilepic: sess.profilepic,
                    });
                    }
                    connection.end();
                }
        });
    } else if (sess.admin) {
            connection.query("SELECT * FROM drawings", function (err, rows, fields) {
                res.render('profileAdmin', {
                    email: sess.email,
                    password: sess.password,
                    nom: sess.nom,
                    prenom: sess.prenom,
                    tel: sess.tel,
                    website: sess.website,
                    sexe: sess.sexe,
                    birthdate: sess.birthdate,
                    ville: sess.ville,
                    taille: sess.taille,
                    couleur: sess.couleur,
                    profilepic: sess.profilepic,
                    res: rows
                });
            });
        } else {
            res.redirect("/login");
        }
    //}
});

app.get('/dashboard', function (req, res) {
    sess = req.session;
    if (sess.email) {
        res.render('dashboard', {
            email: sess.email,
            password: sess.password,
            nom: sess.nom,
            prenom: sess.prenom,
            tel: sess.tel,
            website: sess.website,
            sexe: sess.sexe,
            birthdate: sess.birthdate,
            ville: sess.ville,
            taille: sess.taille,
            couleur: sess.couleur,
            profilepic: sess.profilepic
        });
    } else if (sess.admin) {
        res.render('dashboardAdmin');
    } else {
        res.redirect("/login");
    }
});

app.post('/dashboard', function (req, res) {
    var email = req.body.email;
    var password = req.body.password;
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
    //logger.info(email, mdp, nom, prenom, tel, url, sexe, birthdate, ville, taille, couleur, profilepic);
    mettreAJour(req.body);
});

app.get('/paint', function (req, res) {
    sess = req.session;
    if(sess.email) {
        res.render('paint', {
            email: sess.email,
            password: sess.password,
            nom: sess.nom,
            prenom: sess.prenom,
            tel: sess.tel,
            website: sess.website,
            sexe: sess.sexe,
            birthdate: sess.birthdate,
            ville: sess.ville,
            taille: sess.taille,
            couleur: sess.couleur,
            profilepic: sess.profilepic
        });
    } else {
        res.redirect('login');
    }
});

app.post('/paint', function (req, res) {
    var picture= req.body.picture;
    var commands= req.body.commands;
    var email= sess.email;
    var mot= req.body.mot;
    var dest= req.body.dest;

    envoyerDessin(req.body);
});

app.get('/logout',function(req,res) {
    req.session.destroy(function (err) {
        if (err) {
            console.log(err);
        } else {
            console.log("ok");
            sess.valid = false;
            res.redirect('/');
        }
    });
});

var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'test',
    password: 'test',
    database: 'pictionnary',
    port: 3306
});

app.listen(1313);
logger.info('server start on PORT 1313');

function verif(username, mdp) {
    connection.connect();

    connection.query("select email from users where email='" + username + "' AND password='" + mdp + "'", function (err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                logger.info('Authentification valide !');
                session.open = true;
                session.mail = rows[0].email;
                session.prenom = rows[0].prenom;
                session.nom = rows[0].nom;
                session.profilepic = rows[0].profilepic;
                session.couleur = rows[0].couleur;
                //return "o";
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
    connection.query("INSERT INTO users (email, password, nom, prenom, tel, website, sexe, birthdate, ville, taille, couleur, profilepic) VALUES ('" + userInfo.email + "','" + userInfo.password + "','" + userInfo.nom + "','" + userInfo.prenom + "','" + userInfo.tel + "','" + userInfo.website + "','" + userInfo.sexe + "', '" + userInfo.birthdate + "','" + userInfo.ville + "', " + userInfo.taille + ",'" + userInfo.couleur + "','" + userInfo.profilepic + "')", function (err, result) {
        if (!err) {
            logger.info('Insertion : OK');
        } else {
            logger.info('Erreur SQL !');
            connection.close();
            throw err;
        }
    });
}

function mettreAJour(userInfo) {
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'test',
        password: 'test',
        database: 'pictionnary',
        port: 3306
    });

    connection.query("UPDATE users SET email='" + userInfo.email + "', password='" + userInfo.password + "', nom='" + userInfo.nom + "', prenom='" + userInfo.prenom + "', tel='" + userInfo.tel + "', website='" + userInfo.website + "', sexe='" + userInfo.sexe + "', birthdate='" + userInfo.birthdate + "', ville='" + userInfo.ville + "', taille=" + userInfo.taille + ", couleur='" + userInfo.couleur + "', profilepic='" + userInfo.profilepic + "' WHERE email='" + sess.email + "'", function (err, result) {
        if (!err) {
            logger.info('Mise à jour : OK');
        } else {
            logger.info('Erreur SQL !');
            connection.close();
            throw err;
        }
    });
}

function envoyerDessin(userInfo) {
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'test',
        password: 'test',
        database: 'pictionnary',
        port: 3306
    });

    connection.query("INSERT INTO drawings (email, commands, picture, dest, text) VALUES ('" + sess.email + "','" + "test" + "','" + userInfo.picture + "','" + userInfo.dest + "','" + userInfo.mot + "')", function (err, result) {
        if (!err) {
            logger.info('Dessin envoyé : OK');
        } else {
            logger.info('Erreur SQL !');
            //connection.close();
            throw err;
        }
    });
}

function getProfil(username) {
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'test',
        password: 'test',
        database: 'pictionnary',
        port: 3306
    });

    connection.query("SELECT * FROM drawings WHERE dest='" + username + "'", function (err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                logger.info('Requete valide !');
                        var picture= rows[0].picture
                } else {
                    res.render('login');
                }
            }
            else {
                logger.info('Requete non valide !');
            }
        connection.end();
    });
}
