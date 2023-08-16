

    CREATE TABLE dimension_productos (
    id_produto_pk int identity(1,1)  not null primary key,
    id_producto int  not null ,
    id_idioma int not null,
    id_ingrediente int not null,
    nombre_producto varchar(4000) not null,
    FOREIGN KEY (id_idioma) REFERENCES dimension_idiomas(id_idioma),
FOREIGN KEY (id_ingrediente) REFERENCES dimension_ingredientes(id_ingrediente_pk)

    )