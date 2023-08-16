


CREATE TABLE dimension_usuarios (
id_usuario int identity(1,1) not null primary key, 
nombre varchar(4000) not null, 
apellido_1 varchar(4000) not null, 
apellido_2 varchar(4000) not null, 
fecha_nacimiento date not null, 
email   varchar(4000) not null, 
telefono varchar(4000) not null,
usuario varchar(4000) not null,
password varchar(4000) not NULL, 
adress varchar(4000), 
fecha_alta varchar(4000) not null,
fecha_baja varchar(4000),
id_idioma INT not null,
id_alergia int null,
FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma), 
FOREIGN KEY (id_alergia) REFERENCES dimension_alergias(id_alergia_pk)


)
