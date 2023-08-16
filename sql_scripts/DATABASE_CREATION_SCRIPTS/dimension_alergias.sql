

CREATE TABLE dimension_alergias (

id_alergia_pk int identity(1,1) not null primary key,
id_alergia int not null,
id_ingrediente int not null,
id_idioma int not null,
nombre_alergia varchar(4000) not null, 
FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma)
)