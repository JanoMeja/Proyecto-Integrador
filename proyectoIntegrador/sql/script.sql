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
create table productos (
-- nombre        tipo         restriccion          
id              int           unsigned primary key  auto_increment,
user_id         int           unsigned not null,  
nombre          varchar(250)  not null,
descrpcion      varchar(500)  not null,
fotoProducto 	varchar(150)  not null,
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
comentarios      text         NOT NULL, 

FOREIGN KEY (id_usuario)  REFERENCES usuarios(id),
FOREIGN KEY (id_post)  REFERENCES productos(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/* 5 usuarios */

 INSERT INTO usuarios  VALUES (default, 'aguscarmanp@gmail.com', 'Agus0506', '', '06-05-2023', '42372582', default, default );
 INSERT INTO usuarios  VALUES (default, 'esuarez@gmail.com', 'SuarezLuis12', '', '10-09-2023', '45293032',default, default );
 INSERT INTO usuarios  VALUES (default, 'janomeja@gmail.com', 'Janocrack', '', '12-12-2023', '45234321', default, default );
 INSERT INTO usuarios  VALUES (default, 'juanitocazares@gmail.com', 'Jcazares2112', '', '02-08-2023', '43565071', default, default );
 INSERT INTO usuarios  VALUES (default, 'pulpogonzales@gmail.com', 'Ggonzales', '', '11-04-2022', '46738405', default, default );

/* 10 posteos */

INSERT INTO productos VALUES (default,1,'Argentina Primera Camisetas Retro Futbol 1978', "Camisa muy linda y significativa", "", default, default);
INSERT INTO productos  VALUES (default,2, 'CAMISETA DE FUTBOL RETRO DE RIVER 1975', 'camisa de river vintage hecha con tela de calidad',"",default, default);
INSERT INTO productos  VALUES (default,3,'Camiseta Napoli Buitoni Maradona Titular Retro', 'Cosida a Mano y cuenta con Algodón Premium.','', default, default);
INSERT INTO productos  VALUES (default,4,'Camiseta Argentina Scaloni Retro', 'camiseta de scaloni en sus ul',"", default, default);
INSERT INTO productos  VALUES (default,5,'Camiseta Argentina 86 Maradona Retro Campeón México 1986', 'Impresionante re-edición Argentina 1986, la que uso Diego Armando Maradona para traer el titulo de México 1986 a nuestro país Versión TITULAR', "",default, default);
INSERT INTO productos  VALUES (default,6,'Camiseta De Futbol Retro Vintage Del Rojo De Avellaneda ', 'CAMISETA DE FUTBOL RETRO DE INDEPENDIENTE 1934/1935,La mejor casaca Vintage del Diablo Rojo de Avellaneda',"", default, default);
INSERT INTO productos  VALUES (default,7,'Camiseta Boca 81 Maradona Titular Retro', 'Camiseta de Diego Armando MAradona titular de Boca Juniors','', default, default);
INSERT INTO productos  VALUES (default,8,'Conjunto Retro Cruyff Holanda 1974 ', 'Conjunto de Holanda, la camiseta puede ir con o sin el nombre, tu propio nombre con el numero que quieras. Solo tenes que aclarar después de hacer la compra.','', default, default);
INSERT INTO productos  VALUES (default,9,'Camiseta Retro Argentina 86 Azul Maradona Mano De Dios #10', 'Espectacular camiseta retro Selección Argentina alternativa 1986, la del gol del siglo y la mano contra los ingleses. Lleváte este pedazo de historia.Confeccionada en poliéster azul a bastones bi tono, escudo y logo bordado, número 10 en vinilo termotransferible.','', default, default);
INSERT INTO productos  VALUES (default,10,'Camiseta Argentina Aimar Retro', 'Camiseta con ;a dorsal 10 de Pablo Aimar con Tela Poliéster','', default, default);


/* 40 comentarios */

INSERT INTO comentarios  VALUES (default, 1, 3, 'Muy buen produto', default, default);
INSERT INTO comentarios  VALUES (default, 3, 2,'No me gusta que tengan camisetas alternativas del club', default, default);
INSERT INTO comentarios  VALUES (default, 4, 3,'Muy bueno',  default, default);
INSERT INTO comentarios  VALUES (default, 5, 4,'Hermosas camisetas',  default, default);
INSERT INTO comentarios  VALUES (default, 2, 4, 'Tremenda la camiseta', default, default);
INSERT INTO comentarios  VALUES (default, 1, 2, 'Calidad increible', default, default);
INSERT INTO comentarios  VALUES (default, 1, 1, 'Awanteeee bocaaaa', default, default);
INSERT INTO comentarios  VALUES (default, 1, 5, 'Que equipazo ese!', default, default);
INSERT INTO comentarios  VALUES (default, 2, 3, 'Que viva el futbol', default, default);
INSERT INTO comentarios  VALUES (default, 2, 2, 'Increible todo', default, default);
INSERT INTO comentarios  VALUES (default, 2, 1, 'Tremenda camiseta, idolos!', default, default);
INSERT INTO comentarios  VALUES (default, 3, 1, 'Awante river', default, default);
INSERT INTO comentarios  VALUES (default, 3, 5, 'Increible, saludos a la marca', default, default);
INSERT INTO comentarios  VALUES (default, 3, 6, 'Son mis idolos', default, default);
INSERT INTO comentarios  VALUES (default, 4, 5, 'Me recomendaron la marca, esta todo muy bueno', default, default);
INSERT INTO comentarios  VALUES (default, 4, 6, 'Increible pagina web se mandaron', default, default);
INSERT INTO comentarios  VALUES (default, 4, 1, 'Que jugadorazo', default, default);
INSERT INTO comentarios  VALUES (default, 5, 3, 'Top', default, default);
INSERT INTO comentarios  VALUES (default, 5, 2, 'Mi favorita', default, default);
INSERT INTO comentarios  VALUES (default, 5, 5, 'Que viva el futbol', default, default);
