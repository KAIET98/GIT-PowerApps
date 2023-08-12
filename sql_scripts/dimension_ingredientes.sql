

CREATE TABLE dimension_ingredientes(

id_tabla_ingrediente identity(1,1) not null primary key,
id_ingrediente int not null,
id_idioma int not null,
nombre_ingrediente varchar not null,
FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma),
FOREIGN KEY (id_ingrediente) REFERENCES dimension_ingredientes(id_ingrediente)
)