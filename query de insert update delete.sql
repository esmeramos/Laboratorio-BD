use bdMuebleria

insert into MetodoEnvio
values (03, 'Estándar', 'Entrega entre 3-5 días hábiles')

insert into MetodoEnvio
values (02, 'Dos dias', 'Entrega en 2 días hábiles')

insert into MetodoEnvio
values (01, 'Un día', 'Entrega en 1 día hábil')

insert into Departamento
values(100, 'Línea Blanca')

insert into Departamento
values(101, 'Electrodomésticos')

insert into Departamento
values(102, 'Cómputo y Electrónica')

insert into Departamento
values(103, 'Juguetes')

insert into Departamento
values(104, 'Celulares')

insert into Departamento
values(105, 'Decoración')

insert into Departamento
values(106, 'Patio')

insert into Departamento
values(107, 'Baño')

insert into Departamento
values(108, 'Cocina')

insert into Area_Trabajo 
values (521, 'Ventas')

insert into Area_Trabajo 
values (522, 'Recursos Humanos')

insert into Area_Trabajo 
values (523, 'Seguridad')

insert into Area_Trabajo 
values (524, 'Gerencia')

insert into Pago
values (200, 'Efectivo')

insert into Pago
values (201, 'Tarjeta de débito')

insert into Pago
values (202, 'Tarjeta de crédito')

insert into Turno
values (001, 'Día', '8:00', '17:00')

insert into Turno 
values (002, 'Tarde', '13:00', '22:00')

insert into CodigoPostal
values (64100)

insert into CodigoPostal
values (64102)

insert into CodigoPostal
values (44970)

insert into CodigoPostal
values (72000)

insert into CodigoPostal
values (83000)

insert into CodigoPostal
values (52300)

insert into Estado
values (30, 'Nuevo León', 64102)

insert into Estado
values (31, 'Jalisco', 44970)

insert into Estado
values(32, 'Puebla', 72000)

insert into Estado
values(33, 'Estado de Mexico', 72000)

Update Estado set clave_codigop=52300 where id_Estado=33

insert into Estado
values(34, 'Sonora', 83000)

insert into Municipio
values (50, 'Monterrey', 30)

insert into Municipio
values(51, 'Guadalajara', 31)

insert into Municipio
values (52, 'Puebla de Zaragoza', 32)

insert into Municipio
values(53, 'Chapultepec', 33)

insert into Municipio
values(54, 'Hermosillo', 34)

insert into Colonia
values (500, 'San Bernabe', 50)

insert into Colonia
values (501, '5 de Mayo', 51)

insert into Colonia
values (502, 'San Francisco', 52)

insert into Colonia
values (503, 'Chapultepec', 53)

insert into Colonia
values (504, 'Hermosillo Centro', 54)

insert into Direccion
values (300,'1031 C', 'Escarola', 500, 50, 30, 64102)

insert into Direccion
values (301,'2024', 'José Alcalá', 501, 51, 31, 44970)

insert into Direccion
values (302,'1243', 'Calle 6 Nte', 502, 52, 32, 72000)

insert into Direccion
values (303,'560', 'Vicente Guerrero', 503, 53, 33, 52300)

insert into Direccion
values (304, '845', 'Calle de la Reforma', 504, 54, 34, 83000)

insert into Email values(1, 'cliente1@yahoo.com.mx')

insert into Email values(2, 'customer@gmail.com')

insert into Email values(3, 'customer1@hotmail.com')

insert into Email values(4, 'cliente@outlook.com')

insert into Email values(5, 'custom@optonline.net')

insert into Email values(6, 'cliente099@comcast.net')

insert into Email values(7, 'cliente23@live.com.mx')

insert into Email values(8, 'customer00@ymail.com')

insert into Email values(9, 'cliente3@gmail.com')

insert into Email values(10, 'cust0mer@comcast.net')

insert into Email values(11, 'prov@gmail.com')

insert into Email values(12, 'proveedor@hotmail.com')

insert into Email values(13, 'proveedores@grupox.com')

insert into Email values(14, 'proveedor0@optonline.net')

insert into Email values(15, 'proveedor32@live.com.mx')

insert into Email values(16, 'proveedor16@gmail.com')

insert into Email values(17, 'provedory@ymail.com')

insert into Email values(18, 'pr0veedor@live.com.mx')

insert into Email values(19, 'provs@p.net')

insert into Email values(20, 'proveedor@farm.mx')

insert into Telefono values (0001, '81259675', 'Casa' )

insert into Telefono values (0002, '21589635', 'Celular' )

insert into Telefono values (0003, '82647530', 'Oficina' )

insert into Telefono values (0004, '81826897', 'Casa' )

insert into Telefono values (0005, '81256379', 'Celular' )

insert into Telefono values (0006, '81236590', 'Oficina' )

insert into Telefono values (0007, '21236598', 'Casa' )

insert into Telefono values (0008, '81826598', 'Celular' )

insert into Telefono values (0009, '81828386', 'Celular' )

insert into Telefono values (0010, '82868985', 'Celular' )

Update Telefono set telefono='21363047' where id_telefono=0008
Update Telefono set tipo_tel='Trabajo' where tipo_tel='Oficina'
Update Email set email='rox200199@hotmail.com' where id_email=16
Update Email set email='rocio.r@kohls.com' where id_email=10

Delete from Email where id_email=19
Delete from Email where email='prov@gmail.com'
Delete from Email where id_email=10
Delete from Telefono where id_telefono=0004
Delete from Telefono where id_telefono=0007