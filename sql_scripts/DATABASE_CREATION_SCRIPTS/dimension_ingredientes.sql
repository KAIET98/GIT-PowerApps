


CREATE TABLE dimension_ingredientes(

id_ingrediente int  not null primary key,
id_idioma int not null,
nombre_ingrediente varchar(4000) not null,
FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma)
)