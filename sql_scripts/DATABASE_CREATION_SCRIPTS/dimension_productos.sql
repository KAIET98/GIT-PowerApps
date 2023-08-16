

    CREATE TABLE dimension_productos (
    id_producto int  not null primary key,
    id_idioma int not null,
    id_ingrediente int not null,
    id_alergia int not null,
    precio_producto float not null,
    nombre_producto varchar(4000) not null,
    FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma), 
    FOREIGN KEY (id_alergia) REFERENCES dimension_alergias(id_alergia), 
    FOREIGN KEY (id_alergia) REFERENCES dimension_alergias(id_alergia)

    )