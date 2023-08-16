

CREATE TABLE pedidos (
    id_pedido int identity(1,1) not null primary key, 
    id_cliente int not null, 
    id_producto int not null,
    cantidad int not null,
    id_alergia int,
    id_ingrediente int not null,
    fecha_ini_pedido datetime2 not null,
    fecha_fin_pedido datetime2,
    FOREIGN KEY (id_cliente) REFERENCES dimension_usuarios(id_usuario), 
    FOREIGN KEY (id_producto) REFERENCES dimension_productos(id_producto), 
    FOREIGN KEY (id_alergia) REFERENCES dimension_alergias(id_alergia)

)   