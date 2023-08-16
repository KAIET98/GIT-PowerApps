


USE [goya_powerapps2]
GO

with informacion_idioma_usuario as (
SELECT 
	id_idioma
	FROM 
	[goya_powerapps2].[dbo].[dimension_usuarios]
	where [nombre] = 'KAIET'

)

SELECT t1.[id_pedido]
	  ,t2.nombre
      ,t1.[id_producto]
	  ,t3.[nombre_producto]
	  ,t3.precio_producto
      ,t1.[cantidad]
      ,t1.[id_alergia]
      ,t1.[id_ingrediente]
      ,t1.[fecha_ini_pedido]
      ,t1.[fecha_fin_pedido]
  FROM [dbo].[pedidos] t1
  LEFT JOIN [goya_powerapps2].[dbo].[dimension_usuarios] t2
  on t1.id_cliente = t2.[id_usuario]
  LEFT JOIN [goya_powerapps2].[dbo].[dimension_productos] t3
  on t1.[id_producto] = T3.ID_PRODUCTO 
  LEFT JOIN informacion_idioma_usuario t4
  on t2.id_idioma = t4.id_idioma

  


GO


