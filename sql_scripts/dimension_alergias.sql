

CREATE TABLE dimension_alergias (
id_alergia identity(1,1) not null primary key,
id_idioma int not null,
id_ingrediente int not null,
nombre_alergia varchar not null, 
FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma), 
FOREIGN KEY (id_ingrediente) REFERENCES dimension_ingredientes(id_ingrediente)
)