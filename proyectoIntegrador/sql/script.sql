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
descripcion     varchar(500)  not null,
img      		varchar(500)  not null,
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
INSERT INTO productos (id, user_id, nombre, descripcion, img) VALUES (default,1,'Camiseta Argentina Suplente Final Mundial 1990', 'Diego Armando Maradona #10', '/images/dam.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,2, 'Camiseta Boca Juniors Titular Final Libertadores 2007 ', 'Juan Roman Riquelme #10', '/images/jr.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,3,'Camiseta Argentina Titular Nueva con 3 estrellas', 'Lionel Andres Messi #10', '/images/lm.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,4,'Camiseta Brasil Titular Final Mundial 2002', 'Ronaldo Nazario #9', '/images/rn.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,5,'Camiseta Barcelona Titular Final Champions League 2006 ', ' Ronaldinho #10','/images/r.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,1,'Camiseta Paris Saint-Germain 2021 Titular', 'Presentación de Lionel Andres Messi #30', '/images/lm2.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,2,'Camiseta Boca Juniors Titular Final Intercontinental 2000', 'Martin Palermo #9', '/images/mp.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img) VALUES (default,3,'Camiseta Argentinos Juniors 1976 Titular', 'Diego Armando Maradona #16', '/images/dam2.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,4,'Camiseta Francia Suplente Final Mundial 2006', 'Zinedine Zidane #10', '/images/zz.jpg');
INSERT INTO productos (id, user_id, nombre, descripcion, img)  VALUES (default,5,'Camiseta Inter de Milán Titular Final Champions League 2010', 'Diego Alberto Milito #22', '/images/dm.jpg');

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