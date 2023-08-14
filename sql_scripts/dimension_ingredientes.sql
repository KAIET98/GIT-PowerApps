


CREATE TABLE dimension_ingredientes(

id_ingrediente int  identity(1,1) not null primary key,
id_idioma int not null,
nombre_ingrediente varchar not null,
FOREIGN KEY (id_idioma) REFERENCES dbo.dimension_idiomas(id_idioma)
)