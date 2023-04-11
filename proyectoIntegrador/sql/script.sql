/* tabla usuarios */
create table usuarios (
-- nombre        tipo         restriccion
id               int         unsigned primary key  auto_increment,
email            varchar(200)    not null,
contraseña       varchar(150)   not null,
foto_de_perfil   varchar(500)   not null,
fecha            date,
dni              int            unsigned unique not null,
cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/* tabla productos */
create table productos (
-- nombre        tipo         restriccion          
id              int           unsigned primary key  auto_increment,
user_id         int           unsigned not null,  
nombre          varchar(250)  not null,
descrpcion      varchar(2000)  not null,

FOREIGN KEY (user_id)  REFERENCES usuarios(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/* tabla comentarios */
create table comentarios (
-- nombre        tipo         restriccion
id               int          unsigned primary key auto_increment,
id_post          int          unsigned not null,
id_usuario       int          unsigned not null,
comentarios      varchar(5000) not null, 

FOREIGN KEY (id_usuario)  REFERENCES usuarios(id),
FOREIGN KEY (id_post)  REFERENCES productos(id),

cratedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);