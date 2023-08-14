

CREATE TABLE dimension_alergias (
id_alergia int identity(1,1) not null primary key,
id_idioma int not null,
id_ingrediente int not null,
nombre_alergia varchar not null, 
FOREIGN KEY (id_idioma) REFERENCES dbo.dimension_idiomas(id_idioma),
FOREIGN KEY (id_ingrediente) REFERENCES dbo.dimension_ingredientes(id_ingrediente)
)