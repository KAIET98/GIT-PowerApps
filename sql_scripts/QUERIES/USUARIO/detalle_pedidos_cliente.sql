


with idioma_cliente as (
	SELECT 
	id_idioma
	from [goya_powerapps2].[dbo].[dimension_usuarios] t1
	where nombre = 'KAIET'

), 

info_pedidos as (
SELECT 
t1.[id_pedido]
,t1.[id_cliente]
,t2.nombre
,t2.id_idioma idioma_cliente
,t1.[id_producto]
,T3.id_idioma as idioma_product
,t3.nombre_producto
,t1.[cantidad]
,t5.precio_producto
,(t1.[cantidad] * t5.precio_producto) as importe_pago
,t1.[id_alergia]
,t4.nombre_alergia
,t4.id_idioma idioma_alergia
,t1.[id_ingrediente]
,t1.[fecha_ini_pedido]
,t1.[fecha_fin_pedido]
  FROM [goya_powerapps2].[dbo].[pedidos] T1
  LEFT JOIN [goya_powerapps2].[dbo].[dimension_usuarios] t2
  on t1.id_cliente = t2.[id_usuario]
  LEFT JOIN [goya_powerapps2].[dbo].[dimension_productos] t3
  on t1.[id_producto] = t3.id_producto
  LEFT JOIN [goya_powerapps2].[dbo].[dimension_alergias] t4
  on t1.[id_alergia] = t4.id_alergia
  LEFT JOIN [goya_powerapps2].[dbo].[dimension_economico_producto] t5
  on t1.[id_producto] = t5.id_producto
  where t3.id_idioma = 
  (SELECT 
	t2.id_idioma
	FROM [goya_powerapps2].[dbo].[dimension_usuarios] t1
	LEFT JOIN [goya_powerapps2].[dbo].[dimension_idiomas] t2
	on t1.[id_idioma] = t2.id_idioma
	)

	
	AND t4.id_idioma = (SELECT 
	t2.id_idioma
	FROM [goya_powerapps2].[dbo].[dimension_usuarios] t1
	LEFT JOIN [goya_powerapps2].[dbo].[dimension_idiomas] t2
	on t1.[id_idioma] = t2.id_idioma
	)
	)
SELECT 
t1.id_pedido, 
t1.nombre, 
t1.idioma_cliente,
t1.id_producto, 
t1.nombre_producto, 
t1.cantidad, 
t1.precio_producto, 
-- t1.id_alergia,
t1.nombre_alergia, 
t1.id_ingrediente, 
t2.id_idioma idioma_ingr,
t2.nombre_ingrediente,
t1.fecha_ini_pedido,
t1.[fecha_fin_pedido]
FROM info_pedidos t1
LEFT JOIN dbo.dimension_ingredientes t2
on t1.id_ingrediente = t2.id_ingrediente
WHERE t2.id_idioma = (SELECT 
	t2.id_idioma
	FROM [goya_powerapps2].[dbo].[dimension_usuarios] t1
	LEFT JOIN [goya_powerapps2].[dbo].[dimension_idiomas] t2
	on t1.[id_idioma] = t2.id_idioma
	)


