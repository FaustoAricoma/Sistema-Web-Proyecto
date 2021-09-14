CREATE DATABASE bd_compania_urrutibehety;

CREATE TABLE compania_limpieza(
id_compania_limpieza INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
direccion1 VARCHAR(50) NOT NULL,
telefono INT,
logo_compania VARCHAR (100),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_compania_limpieza) 
)ENGINE=INNODB;

CREATE TABLE empleados(
id_empleado INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
nombres VARCHAR(30) NOT NULL,
apellidos VARCHAR(60) NOT NULL,
ci VARCHAR(20) NOT NULL,
fec_nac DATE,
profesion VARCHAR(30) NOT NULL,
direccion VARCHAR(80) NOT NULL,
fech_ingreso DATE NOT NULL,
fech_salida DATE,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_empleado),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;

CREATE TABLE empleado_salarios(
id_empleado_salario INT NOT NULL AUTO_INCREMENT,
id_empleado INT NOT NULL,
salario FLOAT NOT NULL,
fecha_salario DATE NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_empleado_salario),
FOREIGN KEY(id_empleado)REFERENCES empleados(id_empleado)
)ENGINE=INNODB;

CREATE TABLE maquinas(
id_maquina INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
nombre VARCHAR(40) NOT NULL,
tipo VARCHAR(50) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_maquina),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;


CREATE TABLE proveedores(
id_proveedor INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(60) NOT NULL,
telefono INT,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_proveedor)
)ENGINE=INNODB;

CREATE TABLE productos(
id_producto INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
id_proveedor INT NOT NULL,
producto VARCHAR(50) NOT NULL,
caracteristica VARCHAR(150) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_producto),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza),
FOREIGN KEY(id_proveedor)REFERENCES proveedores(id_proveedor)
)ENGINE=INNODB;

CREATE TABLE servicios(
id_servicio INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
tipo VARCHAR(50) NOT NULL,
observaciones VARCHAR(200),
protocolo VARCHAR(200),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_servicio),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;

CREATE TABLE gerente(
id_gerente INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
nombres VARCHAR(30) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
ci VARCHAR(20) NOT NULL,
fec_nac DATE,
profesion VARCHAR(30),
telefono INT,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_gerente),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;

CREATE TABLE clientes(
id_cliente INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
nombre VARCHAR(30) NOT NULL,
direccion VARCHAR(50),
telefono INT,
nit VARCHAR(50),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_cliente),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;

CREATE TABLE clientes_servicios(
id_cliente_servicio INT NOT NULL AUTO_INCREMENT,
id_cliente INT NOT NULL,
id_servicio INT NOT NULL,
descripcion VARCHAR(200),
monto FLOAT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_cliente_servicio),
FOREIGN KEY(id_cliente)REFERENCES clientes(id_cliente),
FOREIGN KEY(id_servicio)REFERENCES servicios(id_servicio)
)ENGINE=INNODB;

CREATE TABLE departamentos(
id_departamento INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono INT,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_departamento),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;

/*INSERCION DE DATOS DEL PROYECTO*/

INSERT INTO compania_limpieza VALUES (1,'URRUTIBEHETY','C. Presbítero Medina–Sopocachi','22414038','ing.jpg',now(),now(),1,1);

INSERT INTO empleados VALUES (1,1,'Lorena','Orduña Condori','7102553','1993-07-15','supervisora','Warnez c. los Mangales','2021-01-30','2021-05-30',now(),now(),1,1);
INSERT INTO empleados VALUES (2,1,'Sonia','Arias Perez','1881890','1985-01-01','ama de casa','Cuarto anillo c. 5','2020-01-30','2021-10-30',now(),now(),1,1);
INSERT INTO empleados VALUES (3,1,'Fatina','Gallardo Cardozo','7208709','1989-08-24','ama de casa','Villa Fatima c.26 de enero','2020-03-30','2021-04-30',now(),now(),1,1);
INSERT INTO empleados VALUES (4,1,'Daniela','Vega Castro','5878815','1992-03-14','ama de casa','Equipetrol c. Sarmiento','2021-01-20','2021-8-30',now(),now(),1,1);
INSERT INTO empleados VALUES (5,1,'Carmen Lourdes','Guerrero Ugarte','6649205','1980-01-12','ama de casa','Equipetrol c. La plata','2020-05-10','2021-05-10',now(),now(),1,1);
INSERT INTO empleados VALUES (6,1,'Marlene','Tapia Hurtado','7141414','1985-02-16','ama de casa','EL Palmar c. pinos','2020-08-01','2021-09-30',now(),now(),1,1);
INSERT INTO empleados VALUES (7,1,'Camila Alicia','Tito Tolaba','4000077','1990-04-22','ama de casa','El Bajio c. Sausalito','2020-11-21','2022-12-20',now(),now(),1,1);
INSERT INTO empleados VALUES (8,1,'Shirley','Vargar Gudiño','7231722','1987-11-27','ama de casa','Molino c. junin','2021-02-20','2022-03-20',now(),now(),1,1);
INSERT INTO empleados VALUES (9,1,'Adrian','Valanza Vilca','5006963','1990-01-30','operador','La Ramada c. Alemana','2018-02-18','2023-07-30',now(),now(),1,1);
INSERT INTO empleados VALUES (10,1,'Marcelo','Calizaya Huanca','7171437','1985-05-25','chofer','Campo Verde calle 3','2019-10-30','2023-05-10',now(),now(),1,1);

INSERT INTO empleado_salarios VALUES (1,1,4000,'2021-03-30',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (2,2,2500,'2021-03-30',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (3,3,2500,'2021-04-30',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (4,4,2500,'2021-03-31',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (5,5,2500,'2021-03-20',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (6,6,2500,'2021-03-22',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (7,7,2500,'2021-03-10',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (8,8,2500,'2021-03-15',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (9,9,3500,'2021-04-03',now(),now(),1,1);
INSERT INTO empleado_salarios VALUES (10,10,3000,'2021-04-20',now(),now(),1,1);


INSERT INTO maquinas VALUES (1,1,'BR-1600-NDC','pulidora',now(),now(),1,1);
INSERT INTO maquinas VALUES (2,1,'R3 Extractor','limpiador de alfombras',now(),now(),1,1);
INSERT INTO maquinas VALUES (3,1,'V-CAN-12','aspiradora de polvo',now(),now(),1,1);
INSERT INTO maquinas VALUES (4,1,'Karcher HD 1090','pistola de agua',now(),now(),1,1);
INSERT INTO maquinas VALUES (5,1,'CHASQUY 18”','lustradora industrial',now(),now(),1,1);
INSERT INTO maquinas VALUES (6,1,'DP 9000 Classic','lustradora semi-industral',now(),now(),1,1);
INSERT INTO maquinas VALUES (7,1,'PJH','mochila pulvelizadora',now(),now(),1,1);
INSERT INTO maquinas VALUES (8,1,'S.SCRUBBER 90','barredora movil',now(),now(),1,1);
INSERT INTO maquinas VALUES (9,1,'jupiter full','generador de vapor',now(),now(),1,1);
INSERT INTO maquinas VALUES (10,1,'HOT BOX – BYTURBO','calentador de agua',now(),now(),1,1);


INSERT INTO proveedores VALUES (1,'Intec','B/San Geronimo','77158645',now(),now(),1,1);
INSERT INTO proveedores VALUES (2,'Plasma tic','B/La Pampa','4568522',now(),now(),1,1);
INSERT INTO proveedores VALUES (3,'Corinsa','B/Torrecillas','6658698',now(),now(),1,1);
INSERT INTO proveedores VALUES (4,'Protex.s.r.l','B/San Jorge','60885547',now(),now(),1,1);
INSERT INTO proveedores VALUES (5,'Ola','Av/ La Paz','78454522',now(),now(),1,1);
INSERT INTO proveedores VALUES (6,'OlaMax','B/Lourdes','78546985',now(),now(),1,1);
INSERT INTO proveedores VALUES (7,'OMO','B/Pascuas','4522585',now(),now(),1,1);
INSERT INTO proveedores VALUES (8,'ACE','B/Trigal','71448796',now(),now(),1,1);
INSERT INTO proveedores VALUES (9,'PULse','Av/Panamericana','78554762',now(),now(),1,1);
INSERT INTO proveedores VALUES (10,'IPER','B/German Buch','60478587',now(),now(),1,1);
INSERT INTO proveedores VALUES (11,'JABON BOLIVAR','B/La Loma','4555684',now(),now(),1,1);


INSERT INTO productos VALUES (1,1,3,'brill','esponja de limpieza',now(),now(),1,1);
INSERT INTO productos VALUES (2,1,5,'ola matic','detergente',now(),now(),1,1);
INSERT INTO productos VALUES (3,1,5,'ola maximus','quita grasa',now(),now(),1,1);
INSERT INTO productos VALUES (4,1,4,'perlita','papel higienico',now(),now(),1,1);
INSERT INTO productos VALUES (5,1,5,'ola suavecito','suavisante de ropa',now(),now(),1,1);
INSERT INTO productos VALUES (6,1,3,'limpanno','esponja de baño',now(),now(),1,1);
INSERT INTO productos VALUES (7,1,1,'drax','detergente liquido',now(),now(),1,1);
INSERT INTO productos VALUES (8,1,1,'clin','detergente concentrado',now(),now(),1,1);
INSERT INTO productos VALUES (9,1,2,'todo brillo','crema de pulir',now(),now(),1,1);
INSERT INTO productos VALUES (10,1,5,'ola aromatic','aromatizante de piso',now(),now(),1,1);

INSERT INTO servicios VALUES (1,1,'industrial','uso de indumentaria de seguridad','maquinas de uso industrial',now(),now(),1,1);
INSERT INTO servicios VALUES (2,1,'domiciliario','es de acabado profesional','trabajo profesional',now(),now(),1,1);
INSERT INTO servicios VALUES (3,1,'mercados','tratamiento profundo','control de plagas y olores',now(),now(),1,1);
INSERT INTO servicios VALUES (4,1,'empresas','limpieza puntual','trabajos puntuales',now(),now(),1,1);
INSERT INTO servicios VALUES (5,1,'hospitales','desinfecion total','productos de desinfeccion',now(),now(),1,1);
INSERT INTO servicios VALUES (6,1,'instituciones','la limpieza fuera del horario laboral','personal necesario',now(),now(),1,1);

INSERT INTO clientes VALUES (1,1,'Neiby Baltazar','B/Zamora',70658122,'',now(),now(),1,1);
INSERT INTO clientes VALUES (2,1,'Nohelia Bautista','B/Portillo',69877715,'',now(),now(),1,1);
INSERT INTO clientes VALUES (3,1,'Edgar Calizaya','B/Carmen',72839418,'',now(),now(),1,1);
INSERT INTO clientes VALUES (4,1,'Gonzalo Burgos','B/Pintada',71456233,'',now(),now(),1,1);
INSERT INTO clientes VALUES (5,1,'Yamil Vedia','B/San Blas',77852227,'',now(),now(),1,1);
INSERT INTO clientes VALUES (6,1,'Lorena Flores','B/Santa Ana',70333452,'',now(),now(),1,1);
INSERT INTO clientes VALUES (7,1,'Robert Marquez','B/Lourdes',6645872,'',now(),now(),1,1);
INSERT INTO clientes VALUES (8,1,'Jimena Romero','B/San Martin',69531110,'',now(),now(),1,1);
INSERT INTO clientes VALUES (9,1,'Milton Choque','B/Aranjuez',72699445,'',now(),now(),1,1);
INSERT INTO clientes VALUES (10,1,'Jhovana Ortis','B/Trigal',71656545,'',now(),now(),1,1);


INSERT INTO clientes_servicios VALUES (1,3,6,'limpieza area de parqueo',2500,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (2,7,2,'limpieza de alfombras',1200,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (3,6,2,'limpieza de dormitorios',2000,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (4,9,1,'limpieza de tanques de conserva',10000,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (5,10,5,'limpieza de consultorios',5000,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (6,5,6,'limpieza de sala de senadores',6300,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (7,1,3,'limpieza de sector carnes',4500,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (8,2,2,'pulido de pisos del departamento',7000,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (9,4,4,'limpieza del area de deposito',3500,now(),now(),1,1);
INSERT INTO clientes_servicios VALUES (10,8,2,'limpieza de cocina y comedor',4000,now(),now(),1,1);

INSERT INTO departamentos VALUES (1,1,'Santa Cruz',33546868,now(),now(),1,1);
INSERT INTO departamentos VALUES (2,1,'Cochabamba',44243777,now(),now(),1,1);
INSERT INTO departamentos VALUES (3,1,'La Paz',22414038,now(),now(),1,1);
INSERT INTO departamentos VALUES (4,1,'Tarija',72118069,now(),now(),1,1);

INSERT INTO gerente VALUES (1,1,'Ivan','Herrera Sandobal','3714313','1982-02-04','administrador de negocios',78542145,now(),now(),1,1);
/*TABLAS DE SEGURIADAD*/
CREATE TABLE _registro_huellas(
  id_registro_huella INT NOT NULL AUTO_INCREMENT,
  consulta varchar(50) NOT NULL,
  fec_insercion TIMESTAMP NOT NULL,
  usuario INT NOT NULL,
  PRIMARY KEY(id_registro_huella)
)ENGINE=INNOB;

CREATE TABLE _personas(
id_persona INT NOT NULL AUTO_INCREMENT,
id_compania_limpieza INT NOT NULL,
ci VARCHAR(15) NOT NULL,
nombres VARCHAR(20) NOT NULL,
ap VARCHAR(30),
am VARCHAR(30),
telefono VARCHAR(30),
direccion VARCHAR(30),
genero VARCHAR(1),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_compania_limpieza)REFERENCES compania_limpieza(id_compania_limpieza)
)ENGINE=INNODB;

INSERT INTO _personas VALUES (1,1,7198627,'FAUSTO RODRIGO','ARICOMA','LEON','69333170','B. LAS PALMAS','M',now(),now(),1,1);
INSERT INTO _personas VALUES (2,1,7837943,'FATIMA','MERILES','CARDOZO','66511550','B. LA LOMA','F',now(),now(),1,1);
INSERT INTO _personas VALUES (3,1,7147817,'GONZALO','MOLLO','LEMA','69848555','B. CATEDRAL','M',now(),now(),1,1);
INSERT INTO _personas VALUES (4,1,4151917,'LUIS FERNANDO','CORIA','RODRIGUEZ','75626355','B. LUIS DE FUENTES','M',now(),now(),1,1);
INSERT INTO _personas VALUES (5,1,5757543,'RUBEN','CAMARGO','VICENTE','68951222','B. EJERCITO','M',now(),now(),1,1);
INSERT INTO _personas VALUES (6,1,1895158,'DANIELA','OVANDO','MENDOZA','78222315','B. MENBRILLOS','F',now(),now(),1,1);
INSERT INTO _personas VALUES (7,1,6337147,'MARLENE','CALVIMONTES','LEDEZMA','70566585','B. TABLADITA','F',now(),now(),1,1);
INSERT INTO _personas VALUES (8,1,1432260,'ROMEO','TORREZ','SAGREDO','65999245','B. CONSTRUCTOR','M',now(),now(),1,0);
INSERT INTO _personas VALUES (9,1,5154210,'JUAN JOSE','CORREA','JUSTINIANO','70415582','B. LOS PINOS','M',now(),now(),1,1);
INSERT INTO _personas VALUES (10,1,1858268,'LUIS FELIPE','CALLEJAS','TARDIO','71256845','B. EL CARMEN','M',now(),now(),1,0);
INSERT INTO _personas VALUES (11,1,4117476,'MARIA CELESTE','TABORGA','CHOQUE','65244751','B. AEROPUERTO','F',now(),now(),1,0);
INSERT INTO _personas VALUES (12,1,7111367,'ALVARO ','GUERRERO','VIDAURRE','70115548','B. SAN GERONIMO','M',now(),now(),1,1);

CREATE TABLE _usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
id_persona INT NOT NULL,
usuarioo VARCHAR(30) NOT NULL, /*admin*/
clave VARCHAR(100) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY(id_persona) REFERENCES _personas(id_persona)
)ENGINE=INNODB;

INSERT INTO _usuarios VALUES (1,1,'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,1);
INSERT INTO _usuarios VALUES (2,2,'fatima','$2y$10$AyjqDierYPmYPrfex2U8Oe0ub.Kdxl7Z8LNINN6lshod2o5t.rp9G',now(),now(),1,1);
INSERT INTO _usuarios VALUES (3,3,'gonzalo','$2y$10$rzrtuWmxdzoKeD6HvDaLGOlprAln0iVqs3cHKN4FywbtTxaju6dQW',now(),now(),1,1);
INSERT INTO _usuarios VALUES (4,12,'alvaro','$2y$10$NpLJJtF1ZURKz4GFJMGfUu/HwCMEpuxZD3ZuPf073qh3b4CtJ4khq',now(),now(),1,1);

CREATE TABLE _roles(
id_rol INT NOT NULL AUTO_INCREMENT,
rol VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;

INSERT INTO _roles VALUES (1,'Administrador',now(),now(),1,1);
INSERT INTO _roles VALUES (2,'USUARIO_PRUEBA1',now(),now(),1,1);
INSERT INTO _roles VALUES (3,'USUARIO_PRUEBA2',now(),now(),1,1);
INSERT INTO _roles VALUES (4,'USUARIO_EXAMEN',now(),now(),1,1);

CREATE TABLE _usuarios_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario_rol),
FOREIGN KEY(id_usuario)REFERENCES _usuarios(id_usuario),
FOREIGN KEY(id_rol)REFERENCES _roles(id_rol)
)ENGINE=INNODB;

INSERT INTO _usuarios_roles VALUES (1,1,1,now(),now(),1,1);
INSERT INTO _usuarios_roles VALUES (2,2,2,now(),now(),1,1);
INSERT INTO _usuarios_roles VALUES (3,3,3,now(),now(),1,1);
INSERT INTO _usuarios_roles VALUES (4,4,4,now(),now(),1,1);


CREATE TABLE _grupos(
id_grupo INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;

INSERT INTO _grupos VALUES (1,'HERRAMIENTAS',now(),now(),1,1);
INSERT INTO _grupos VALUES (2,'COMPANIA URRUTIBEHETY',now(),now(),1,1);
INSERT INTO _grupos VALUES (3,'REPORTES',now(),now(),1,1);

CREATE TABLE _opciones(
id_opcion INT NOT NULL AUTO_INCREMENT,
id_grupo INT NOT NULL,
opcion VARCHAR(30) NOT NULL,
contenido VARCHAR(100) NOT NULL,
orden INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY(id_grupo)REFERENCES _grupos(id_grupo)
)ENGINE=INNODB;

INSERT INTO _opciones VALUES (1,1,'Personas','../privada/personas/personas.php',10,now(),now(),1,1);
INSERT INTO _opciones VALUES (2,1,'Usuarios','../privada/usuarios/usuarios.php',20,now(),now(),1,1);
INSERT INTO _opciones VALUES (3,1,'Grupos','../privada/grupos/grupos.php',30,now(),now(),1,1);
INSERT INTO _opciones VALUES (4,1,'Roles','../privada/roles/roles.php',40,now(),now(),1,1);
INSERT INTO _opciones VALUES (5,1,'Usuarios Roles','../privada/usuarios_roles/usuarios_roles.php',50,now(),now(),1,1);
INSERT INTO _opciones VALUES (6,1,'Opciones','../privada/opciones/opciones.php',60,now(),now(),1,1);
INSERT INTO _opciones VALUES (7,1,'Accesos','../privada/accesos/accesos.php',70,now(),now(),1,1);

INSERT INTO _opciones VALUES (8,2,'Compania limpieza','../privada/compania_limpieza/compania_limpieza.php',10,now(),now(),1,1);
INSERT INTO _opciones VALUES (9,2,'Empleados','../privada/empleados/empleados.php',20,now(),now(),1,1);
INSERT INTO _opciones VALUES (10,2,'Maquinas','../privada/maquinas/maquinas.php',30,now(),now(),1,1);
INSERT INTO _opciones VALUES (11,2,'Empleados_Salarios','../privada/empleado_salarios/empleado_salarios.php',40,now(),now(),1,1);
INSERT INTO _opciones VALUES (12,2,'Proveedores','../privada/proveedores/proveedores.php',50,now(),now(),1,1);
INSERT INTO _opciones VALUES (13,2,'Productos','../privada/productos/productos.php',60,now(),now(),1,1);
INSERT INTO _opciones VALUES (14,2,'Servicios','../privada/servicios/servicios.php',70,now(),now(),1,1);
INSERT INTO _opciones VALUES (15,2,'Gerente','../privada/gerente/gerente.php',80,now(),now(),1,1);
INSERT INTO _opciones VALUES (16,2,'Clientes','../privada/clientes/clientes.php',90,now(),now(),1,1);
INSERT INTO _opciones VALUES (17,2,'Clientes Servicios','../privada/clientes_servicios/clientes_servicios.php',100,now(),now(),1,1);
INSERT INTO _opciones VALUES (18,2,'Departamentos','../privada/departamentos/departamentos.php',110,now(),now(),1,1);

INSERT INTO _opciones VALUES (19,3,'Rtp de Personas Usuarios','../privada/reportes/personas_usuarios.php',10,now(),now(),1,1);
INSERT INTO _opciones VALUES (20,3,'Rtp de Clientes Servicios','../privada/reportes/clientes_servicios.php',20,now(),now(),1,1);
INSERT INTO _opciones VALUES (21,3,'Rtp de Personas por Fecha','../privada/reportes/personas_fechas.php',30,now(),now(),1,1);
INSERT INTO _opciones VALUES (22,3,'Rtp de Empleados por Fecha','../privada/reportes/empleados_fechas_ingreso.php',40,now(),now(),1,1);
INSERT INTO _opciones VALUES (23,3,'Rtp de Maquinas en Uso','../privada/reportes/maquinas_uso.php',50,now(),now(),1,1);
INSERT INTO _opciones VALUES (24,3,'Rtp de Clientes por Fecha','../privada/reportes/clientes_registros_fecha.php',60,now(),now(),1,1);
INSERT INTO _opciones VALUES (25,3,'Rtp de Empleados Disponibles','../privada/reportes/empleados_disponibles.php',70,now(),now(),1,1);
INSERT INTO _opciones VALUES (26,3,'Rtp de Productos por Fecha','../privada/reportes/productos_fechas.php',80,now(),now(),1,1);
INSERT INTO _opciones VALUES (27,3,'Rtp de persona por genero','../privada/reportes/rtp_personas_genero.php',90,now(),now(),1,1);
INSERT INTO _opciones VALUES (28,3,'Rtp de Empleados por profesion','../privada/reportes/rtp_emp_profesion.php',100,now(),now(),1,1);
INSERT INTO _opciones VALUES (29,3,'Ficha técnica de Personas','../privada/reportes/fichas_tecnicas_personas.php',110,now(),now(),1,1);
INSERT INTO _opciones VALUES (30,3,'Ficha técnica de Productos','../privada/reportes/fichas_tecnicas_productos.php',120,now(),now(),1,1);
INSERT INTO _opciones VALUES (31,3,'Ficha técnica de Maquinas','../privada/reportes/fichas_tecnicas_maquinas.php',130,now(),now(),1,1);
INSERT INTO _opciones VALUES (32,3,'Rtp de Servicios por tipo','../privada/reportes/rtp_servicios_tipo.php',140,now(),now(),1,1);

CREATE TABLE _accesos(
id_acceso INT NOT NULL AUTO_INCREMENT,
id_opcion INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_acceso),
FOREIGN KEY(id_opcion)REFERENCES _opciones(id_opcion),
FOREIGN KEY(id_rol)REFERENCES _roles(id_rol)
)ENGINE=INNODB;

INSERT INTO _accesos VALUES (1,1,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (2,2,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (3,3,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (4,4,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (5,5,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (6,6,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (7,7,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (8,8,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (9,9,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (10,10,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (11,11,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (12,12,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (13,13,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (14,14,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (15,15,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (16,16,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (17,17,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (18,18,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (19,19,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (20,20,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (21,21,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (22,22,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (23,1,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (24,2,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (25,3,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (26,9,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (27,10,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (28,11,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (29,12,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (30,13,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (31,14,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (32,19,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (33,20,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (34,21,2,now(),now(),1,1);
INSERT INTO _accesos VALUES (35,1,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (36,2,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (37,14,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (38,15,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (39,16,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (40,17,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (41,19,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (42,20,3,now(),now(),1,1);
INSERT INTO _accesos VALUES (43,23,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (44,24,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (45,25,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (46,26,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (47,1,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (48,3,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (49,4,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (50,5,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (51,9,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (52,10,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (53,11,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (54,12,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (55,13,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (56,14,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (57,15,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (58,16,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (59,19,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (60,20,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (61,21,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (62,22,4,now(),now(),1,1);
INSERT INTO _accesos VALUES (63,27,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (64,28,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (65,29,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (66,30,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (67,31,1,now(),now(),1,1);
INSERT INTO _accesos VALUES (68,32,1,now(),now(),1,1);

