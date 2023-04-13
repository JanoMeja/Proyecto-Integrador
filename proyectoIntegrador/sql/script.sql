-- crear el schema y usarlo
CREATE SCHEMA proyecto;
USE proyecto;

-- tabla usario
create table usuarios (
-- nombre        tipo         restriccion  
id               int         unsigned primary key  auto_increment,
email            varchar(200)    not null,
contraseña       varchar(150)   not null,
foto_de_perfil   varchar(500)    null,
fecha            date,
dni              int            not null,
cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- tabla productos
create table productos (
-- nombre        tipo         restriccion           
id              int           unsigned primary key  auto_increment,
user_id         int           unsigned not null,  
nombre          varchar(250)  not null,
descripcion      varchar(500)  not null,

FOREIGN KEY (user_id)  REFERENCES usuarios(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- tabla comentarios
create table comentarios (
-- nombre        tipo         restriccion  
id               int          unsigned primary key auto_increment,
id_post          int          unsigned not null,
id_usuario       int          unsigned not null,
comentarios      varchar(500) not null, 

FOREIGN KEY (id_usuario)  REFERENCES usuarios(id),
FOREIGN KEY (id_post)  REFERENCES productos(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
 -- usarios
 INSERT INTO usuarios (id, email, contraseña, foto_de_perfil, fecha, dni)  VALUES (default, 'aguscarmanp@gmail.com', 'Agus0506', '', '2000-02-22', '42372582');
 INSERT INTO usuarios (id, email, contraseña, foto_de_perfil, fecha, dni)  VALUES (default, 'esuarez@gmail.com', 'SuarezLuis12', '', '2023-04-06', '45293032');
 INSERT INTO usuarios (id, email, contraseña, foto_de_perfil, fecha, dni) VALUES (default, 'janomeja@gmail.com', 'Janocrack', '', '2023-07-10', '45234321');
 INSERT INTO usuarios (id, email, contraseña, foto_de_perfil, fecha, dni) VALUES (default, 'juanitocazares@gmail.com', 'Jcazares2112', '', '2002-01-02', '43565071');
 INSERT INTO usuarios (id, email, contraseña, foto_de_perfil, fecha, dni)  VALUES (default, 'pulpogonzales@gmail.com', 'Ggonzales', '', '2021-02-04', '46738405');
 
-- posteos
INSERT INTO productos (id, user_id, nombre, descripcion) VALUES (default,1,'Argentina Primera Camisetas Retro Futbol 1978', "Camisa muy linda y significativa");
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,2, 'CAMISETA DE FUTBOL RETRO DE RIVER 1975', 'camisa de river vintage hecha con tela de calidad');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,3,'Camiseta Napoli Buitoni Maradona Titular Retro', 'Cosida a Mano y cuenta con Algodón Premium.');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,4,'Camiseta Argentina Scaloni Retro', 'camiseta de scaloni en sus ul');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,5,'Camiseta Argentina 86 Maradona Retro Campeón México 1986', 'Impresionante re-edición Argentina 1986, la que uso Diego Armando Maradona para traer el titulo de México 1986 a nuestro país Versión TITULAR');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,1,'Camiseta De Futbol Retro Vintage Del Rojo De Avellaneda ', 'CAMISETA DE FUTBOL RETRO DE INDEPENDIENTE 1934/1935,La mejor casaca Vintage del Diablo Rojo de Avellaneda');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,2,'Camiseta Boca 81 Maradona Titular Retro', 'Camiseta de Diego Armando MAradona titular de Boca Juniors');
INSERT INTO productos (id, user_id, nombre, descripcion) VALUES (default,3,'Conjunto Retro Cruyff Holanda 1974 ', 'Conjunto de Holanda, la camiseta puede ir con o sin el nombre, tu propio nombre con el numero que quieras. Solo tenes que aclarar después de hacer la compra.');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,4,'Camiseta Retro Argentina 86 Azul Maradona Mano De Dios #10', 'Espectacular camiseta retro Selección Argentina alternativa 1986, la del gol del siglo y la mano contra los ingleses. Lleváte este pedazo de historia.Confeccionada en poliéster azul a bastones bi tono, escudo y logo bordado, número 10 en vinilo termotransferible.');
INSERT INTO productos (id, user_id, nombre, descripcion)  VALUES (default,5,'Camiseta Argentina Aimar Retro', 'Camiseta con la dorsal 10 de Pablo Aimar con Tela Poliéster');

-- comentarios
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 1, 1, 'Muy buen produto');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 10, 2,'No me gusta que tengan camisetas alternativas del club');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 2, 3,'Muy bueno');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 3, 4,'Hermosas camisetas');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 4, 5, 'Tremenda la camiseta');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 5, 1, 'Calidad increible');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 6, 2, 'Awanteeee bocaaaa');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 7, 3, 'Que equipazo ese!');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 8, 4, 'Que viva el futbol');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 9, 5, 'Increible todo');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 10, 1, 'Tremenda camiseta, idolos!');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 1, 2, 'Awante river');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 2, 3, 'Increible, saludos a la marca');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 3, 4, 'Son mis idolos');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 4, 5, 'Me recomendaron la marca, esta todo muy bueno');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 5, 1, 'Increible pagina web se mandaron');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 6, 2, 'Que jugadorazo');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 7, 3, 'Top');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 8, 4, 'Mi favorita');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 9, 5, 'Que viva el futbol');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 10, 1, 'Muy bueno');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 1, 2, 'Lo quiero ya');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 2, 3, 'Tienen envio?');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 3, 4, 'Algun descuento?');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 4, 5, 'Aceptan mercado pago?');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 5, 1, 'Que equipazo ese');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 6, 2, 'Mi remera favorita');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 7, 3, 'Shorts venden?');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 8, 4, 'Inigualable');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 9, 5, 'Mucha mistica');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 10, 1, 'Jugadorazo');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 1, 2, 'La calida de esa remera por dios');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 2, 3, 'Mi equipo');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 3, 4, 'Damela siempre');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 4, 5, 'Se puede buscar por la oficina?');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 5, 1, 'Muy bueno todo');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 6, 2, 'La quiero para mi novia');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 7, 3, 'Llega antes del viernes?');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 8, 4, 'La amo');
INSERT INTO comentarios (id, id_post, id_usuario, comentarios) VALUES (default, 9, 5, 'No me convence');