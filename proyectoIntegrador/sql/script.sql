/* crear el schema y usarlo */
CREATE SCHEMA proyecto;
USE proyecto;

/* tabla usuarios */
CREATE TABLE usuarios (
-- nombre        tipo         restriccion
id               INT         UNSIGNED PRIMARY KEY AUTO_INCREMENT,
email            VARCHAR(200)   NOT NULL,
contraseña       VARCHAR(150)   NOT NULL,
foto_de_perfil   VARCHAR(500)   NOT NULL,
fecha            DATE           NOT NULL,
dni              INT            UNSIGNED UNIQUE NOT NULL,
cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/* tabla productos */
CREATE TABLE productos (
-- nombre        tipo         restriccion          
id              INT           UNSIGNED PRIMARY KEY AUTO_INCREMENT,
user_id         INT           UNSIGNED NOT NULL,  
nombre          VARCHAR(250)  NOT NULL,
descrpcion      VARCHAR(2000) NOT NULL,

FOREIGN KEY (user_id)  REFERENCES usuarios(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/* tabla comentarios */
CREATE TABLE comentarios (
-- nombre        tipo         restriccion
id               INT          UNSIGNED PRIMARY KEY AUTO_INCREMENT,
id_post          INT          UNSIGNED NOT NULL,
id_usuario       INT          UNSIGNED NOT NULL,
comentarios      VARCHAR(5000) NOT NULL, 

FOREIGN KEY (id_usuario)  REFERENCES usuarios(id),
FOREIGN KEY (id_post)  REFERENCES productos(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/* 5 usuarios */

/* 10 posteos */

/* 4 comentarios */