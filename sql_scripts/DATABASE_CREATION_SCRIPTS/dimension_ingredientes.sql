


CREATE TABLE dimension_ingredientes(


id_ingrediente_pk int identity(1,1) not null primary key,
id_ingrediente int  not null ,
id_alergia int not null,
id_producto int not null,
id_idioma int not null,
nombre_ingrediente varchar(4000) not null,
FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma), 
FOREIGN KEY (id_alergia) REFERENCES dimension_alergias(id_alergia_pk)
)