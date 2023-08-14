


CREATE TABLE dimension_usuarios (
id_usuario int identity(1,1) not null primary key, 
nombre VARCHAR not null, 
apellido_1 VARCHAR not null, 
apellido_2 VARCHAR not null, 
fecha_nacimiento date not null, 
email   VARCHAR not null, 
telefono VARCHAR not null,
usuario VARCHAR not null,
password varchar not NULL, 
adress varchar, 
fecha_alta VARCHAR not null,
fecha_baja VARCHAR,
id_idioma INT not null,
id_alergia int null,
FOREIGN KEY (id_idioma) REFERENCES dbo.dimension_idiomas(id_idioma), 
FOREIGN KEY (id_alergia) REFERENCES dimension_alergias(id_alergia)


)
