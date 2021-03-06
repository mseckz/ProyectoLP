USE MASTER
GO
IF DB_ID('ProyFinal') IS NOT NULL
  DROP DATABASE PROYFINAL
GO
CREATE DATABASE PROYFINAL
GO
USE PROYFINAL
GO
-- 1 -- Tabla Usuario 
CREATE SEQUENCE NUMUSUARIO AS int START WITH 100000 INCREMENT BY 1
CREATE TABLE
USUARIO (
  CODIGOUSUARIO char(8) DEFAULT (CONCAT('US', NEXT VALUE FOR NUMUSUARIO)),
  USUARIO VARCHAR(100) NOT NULL,
  CLAVE CHAR(8) NOT NULL,
  NOMBRE varchar(20) NOT NULL,
  APELLIDOPATERNO varchar(20) NOT NULL,
  APELLIDOMATERNO varchar(20),
  FECHANACIMIENTO date,
  CORREO varchar(100),
  ESTADO varchar(10) NOT NULL, -- el status activo, o inactivo 
  FECHACREACION datetime NOT NULL, -- fecha de creacion de la cuenta 
  CONSTRAINT CPK001 PRIMARY KEY (CODIGOUSUARIO),
  CONSTRAINT CCK001 CHECK (LEN(CODIGOUSUARIO) = 8 AND CODIGOUSUARIO IS NOT NULL),
  CONSTRAINT CCK002 CHECK (CORREO LIKE '%_@%_.%_' AND CORREO IS NOT NULL),
  CONSTRAINT CCK004 CHECK (ESTADO IN ('Activo', 'Inactivo'))
)
-----------------------------------------------------------------------------------------
-- tabla tipo de juego 
CREATE TABLE TIPOJUEGO (
  IDTIPO int IDENTITY PRIMARY KEY,
  DESCRIPCION varchar(100
  ) NOT NULL
)
GO
CREATE TABLE CATEGORIA (
  IDCATEGORIA int IDENTITY PRIMARY KEY,
  DESCRIPCION varchar(100) NOT NULL
)
GO
---- administrador 
CREATE TABLE ADMINISTRADOR (
  CODIGOADMINISTRADOR char(8) DEFAULT (CONCAT('AD',NEXT VALUE FOR NUMUSUARIO)),
  CLAVE CHAR(8) NOT NULL,
  NOMBRE varchar(20) NOT NULL,
  APELLIDOPATERNO
  varchar(20) NOT NULL,
  APELLIDIMATERNO varchar(20),
  FECHANACIMIENTO date NOT NULL,
  TELEFONO varchar(20),
  CORREO varchar(50),
  ESTADO varchar(10) NOT NULL,
  -- el status activo, o inactivo 
  FECHACREACION datetime NOT NULL, -- fecha de creacion de la cuenta 
  CONSTRAINT CPK016 PRIMARY KEY (CODIGOADMINISTRADOR),
  CONSTRAINT CCK020 CHECK (LEN
  (CODIGOADMINISTRADOR) = 8),
  CONSTRAINT CCK021 CHECK (CORREO LIKE '%_@%_.%_' AND
  CORREO IS NOT NULL),
  CONSTRAINT CCK022 CHECK (ESTADO IN ('Activo', 'Inactivo')),
  CONSTRAINT CCK023 CHECK (ISNUMERIC(TELEFONO) = 1)
)
-- 2 -- Tabla Juego 
CREATE SEQUENCE NUMJUEGO AS int START WITH 100001 INCREMENT BY 1
CREATE TABLE
JUEGO (
  CODIGOJUEGO char(8) DEFAULT (CONCAT('JU', NEXT VALUE FOR NUMJUEGO)),
  NOMBRE varchar(100) NOT NULL,
  DESCRIPCION VARCHAR(200),
  COSTO decimal(7, 2) NOT NULL,
  TIPO int NOT NULL,
  CATEGORIA int NOT NULL,
  CODIGOADMINISTRADOR char(8) NOT NULL,
  ESTADO varchar(10) NOT NULL, -- el status activo, o inactivo 
  FECHAINGRESO datetime NOT NULL, -- fecha que se a�adio el juego 
  CONSTRAINT CPK002 PRIMARY KEY (CODIGOJUEGO),
  CONSTRAINT CUK002 UNIQUE (CODIGOJUEGO),
  CONSTRAINT CCK006 CHECK (LEN(CODIGOJUEGO) = 8 AND CODIGOJUEGO IS NOT NULL),
  CONSTRAINT CFK001 FOREIGN KEY (TIPO) REFERENCES TIPOJUEGO (IDTIPO),
  CONSTRAINT CFK002 FOREIGN KEY (CATEGORIA) REFERENCES CATEGORIA (IDCATEGORIA),
  CONSTRAINT CFK014 FOREIGN KEY (CODIGOADMINISTRADOR) REFERENCES ADMINISTRADOR (CODIGOADMINISTRADOR),
  CONSTRAINT CCK007 CHECK (ESTADO IN ('Activo', 'Inactivo'))
)
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- 3 -- Tabla Juego - Serial -- Detalle Del Juego 
CREATE SEQUENCE NUMSERIAL AS int START WITH 100000 INCREMENT BY 1
CREATE TABLE
LICENCIA (
  CODIGOSERIAL char(8) DEFAULT (CONCAT('SE', NEXT VALUE FOR NUMSERIAL)),
  CODIGOJUEGO char(8) NOT NULL,
  -- serial uniqueidentifier not null, -- O se puede tener una web donde ingresar el serial o se genera el codigo aca de forma automatica
  SERIAL varchar(30) NOT NULL,
  ESTADO varchar(10) NOT NULL,
  -- el status Libre, o Usado 
  FECHACREACION datetime NOT NULL, -- fecha que se a�adio el serial 
  CONSTRAINT CPK003 PRIMARY KEY (CODIGOSERIAL),
  CONSTRAINT CFK003 FOREIGN KEY (
  CODIGOJUEGO) REFERENCES JUEGO (CODIGOJUEGO),
  CONSTRAINT CCK008 CHECK (LEN(
  CODIGOSERIAL) = 8),
  CONSTRAINT CCK009 CHECK (ESTADO IN ('Libre', 'Usado'))
)
-----------------------------------------------------------------------------------------
CREATE TABLE ADMINISTRADORJUEGOS (
  CODIGOSERIAL char(8) REFERENCES LICENCIA (
  CODIGOSERIAL),
  CODIGOADMINISTRADOR char(8) REFERENCES ADMINISTRADOR (
  CODIGOADMINISTRADOR),
  PRIMARY KEY (CODIGOSERIAL, CODIGOADMINISTRADOR)
)
-----------------------------------------------------------------------------------------
-- 4 -- Tabla Carrito 
CREATE SEQUENCE NUMCARRITO AS int START WITH 100000 INCREMENT BY 1
CREATE TABLE
CARRITO (
  CODIGOCARRITO char(8) DEFAULT (CONCAT('CA', NEXT VALUE FOR NUMCARRITO)),
  CODIGOUSUARIO char(8) NOT NULL,
  ESTADO varchar(10) NOT NULL,
  -- el status En Proceso,Cancelado o Realizado 
  CONSTRAINT CPK004 PRIMARY KEY (CODIGOCARRITO),
  CONSTRAINT CFK004 FOREIGN KEY (
  CODIGOUSUARIO) REFERENCES USUARIO (CODIGOUSUARIO),
  CONSTRAINT CUK004 UNIQUE (
  CODIGOCARRITO),
  CONSTRAINT CCK010 CHECK (LEN(CODIGOCARRITO) = 8 AND CODIGOCARRITO
  IS NOT NULL),
  CONSTRAINT CCK011 CHECK (ESTADO IN ('Realizado', 'En proceso',
  'Cancelado'))
)
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- 6 --Tabla Detalle Carrito 
CREATE TABLE DETALLECARRITO (
  CODIGOCARRITO char(8) NOT NULL,
  CODIGOJUEGO char(8) NOT NULL,
  CANTIDAD int NOT NULL,
  COSTO decimal(7, 2) NOT NULL,
  ESTADO varchar(10
  ) NOT NULL, --  En Proceso,Cancelado o Realizado 
  CONSTRAINT CPK005 PRIMARY KEY (CODIGOCARRITO, CODIGOJUEGO),
  CONSTRAINT CFK005
  FOREIGN KEY (CODIGOCARRITO) REFERENCES CARRITO (CODIGOCARRITO),
  CONSTRAINT CFK006
  FOREIGN KEY (CODIGOJUEGO) REFERENCES JUEGO (CODIGOJUEGO),	
  CONSTRAINT CCK013 CHECK
  (ESTADO IN ('Realizado', 'En proceso', 'Cancelado')),
  CONSTRAINT CCK014 CHECK (
  CANTIDAD > 0 AND COSTO > 0)
)
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- 7 --Tabla Venta 
CREATE SEQUENCE NUMVENTA AS int START WITH 100000 INCREMENT BY 1
CREATE TABLE
VENTA (
  CODIGOVENTA char(8) DEFAULT (CONCAT('VE', NEXT VALUE FOR NUMVENTA)),
  CODIGOCARRITO char(8) NOT NULL,
  CODIGOUSUA char(8) NOT NULL,
  FECHAVEN date,
  SUBTOTAL decimal(8, 2) NOT NULL,
  IGV decimal(8, 2) NOT NULL,
  TOTAL decimal(8, 2)
  NOT NULL,
  ESTADO varchar(20) NOT NULL,
  CONSTRAINT CPK006 PRIMARY KEY (
  CODIGOVENTA),
  CONSTRAINT CFK008 FOREIGN KEY (CODIGOUSUA) REFERENCES USUARIO (
  CODIGOUSUARIO),
  CONSTRAINT CCK015 CHECK (LEN(CODIGOVENTA) = 8 AND CODIGOVENTA IS
  NOT NULL),
  CONSTRAINT CCK016 CHECK (ESTADO IN ('Realizado', 'En proceso',
  'Cancelado'))
-- considerar que en proceso es si hay que validar una tarjeta , osea seria un proceso externo
)
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- 8 --Tabla Detalle Venta 
CREATE SEQUENCE NUMDETALLEVEN AS int START WITH 100000 INCREMENT BY 1
CREATE
TABLE DETALLEVENTA (
  CODIGOVENTA char(8) NOT NULL,
  CODIGOJUEGO char(8) NOT NULL,
  CODIGOSERIAL CHAR(8) NOT NULL REFERENCES LICENCIA (CODIGOSERIAL),
  NUMSERIAL VARCHAR(30) NOT NULL,
  COSTO decimal(7, 2) NOT NULL,
  ESTADO varchar(10) NOT NULL, --  En Proceso,Cancelado o Realizado 
  CONSTRAINT CPK007 PRIMARY KEY (CODIGOVENTA, CODIGOJUEGO, CODIGOSERIAL),
  CONSTRAINT CFK009
  FOREIGN KEY (CODIGOVENTA) REFERENCES VENTA (CODIGOVENTA),
  CONSTRAINT CFK010
  FOREIGN KEY (CODIGOJUEGO) REFERENCES JUEGO (CODIGOJUEGO),
  CONSTRAINT CCK018 CHECK
  (ESTADO IN ('Realizado', 'En proceso', 'Cancelado'))
)
--INSERTAR ADMINISTRADORES
INSERT INTO ADMINISTRADOR (CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDIMATERNO, FECHANACIMIENTO,
TELEFONO, CORREO, ESTADO, FECHACREACION)
  VALUES ('12345678','Jo Sue', 'Yep', 'Arce', '1992/02/01', '940143992', 'jo.sue.yep@hotmail.com', 'activo', GETDATE());
--INSERTAR USUARIOS 
INSERT INTO USUARIO (USUARIO,CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, FECHANACIMIENTO, CORREO, ESTADO, FECHACREACION)
  VALUES ('LUIS','12345678','Luis', 'Almeyda', 'Vasquez', '1992/01/01','luis@gmail.com', 'activo', GETDATE());
INSERT INTO USUARIO (USUARIO,CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, FECHANACIMIENTO, CORREO, ESTADO, FECHACREACION)
  VALUES ('JOYEP','12345678','Jo Sue', 'Yep', 'Arce', '1992/02/01','jo.sue.yep@hotmail.com', 'activo', GETDATE());
  INSERT INTO USUARIO (USUARIO,CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, FECHANACIMIENTO, CORREO, ESTADO, FECHACREACION)
  VALUES ('CARLOS','12345678','Carlos', 'Cornejo', 'Vargas', '1990/02/15','carlos.var@hotmail.com', 'activo', GETDATE());
  INSERT INTO USUARIO (USUARIO,CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, FECHANACIMIENTO, CORREO, ESTADO, FECHACREACION)
  VALUES ('CESAR','12345678','Cesar', 'Hipolito', 'Crisologo', '1989/09/26', 'hipocesa@hotmail.com', 'activo', GETDATE());
INSERT INTO USUARIO (USUARIO,CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, FECHANACIMIENTO, CORREO, ESTADO, FECHACREACION)
  VALUES ('LUIGGI','12345678','Luigui', 'Aguirre', 'Aguirre', '1993/06/25', 'luiguiar@hotmail.com', 'inactivo', GETDATE());
--CATEGORIAS DE JUEGOS
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('ACCION');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('AVENTURA');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('CARRERAS');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('CASUAL');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('DEPORTES');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('ESTRATEGIA');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('INDIE');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('MMO');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('ROL');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('FREE TO PLAY');
INSERT INTO CATEGORIA(DESCRIPCION)
VALUES ('DEMOS');
--INSERTAR TIPO DE JUEGOS
INSERT INTO TIPOJUEGO(DESCRIPCION)
VALUES ('PRINCIPAL');
INSERT INTO TIPOJUEGO(DESCRIPCION)
VALUES ('EXPANSION');
--INSERTAR JUEGOS

INSERT INTO JUEGO(NOMBRE, DESCRIPCION, COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('METAL GEAR SOLID V: GROUND ZEROES','DESCRIPCIN 1', 20.00, 1, 1, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE,DESCRIPCION, COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Battlefield 4','DESCRIPCIN 2', 20.00, 1, 1, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION, COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Titanfall� Edici�n Deluxe', 'DESCRIPCIN 3',55.00, 1, 1, 'AD100000','inactivo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION, COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Dying Light', 'DESCRIPCIN 4',50.00, 1, 1, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION, COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Grand Theft Auto V', 'DESCRIPCIN 5',45.00, 1, 1, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('MIDDLE EARTH: SHADOW OF MORDOR', 'DESCRIPCIN 6',10.00, 1, 2, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Assassin�s Creed Unity', 'DESCRIPCIN 7',60.00, 2, 2, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Walking Dead: Season 2', 'DESCRIPCIN 8',55.00, 2, 2, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Tomb Raider: The Angel of Darkness', 'DESCRIPCIN 9',16.00, 2, 2, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Dragon Age II', 'DESCRIPCIN 10',15.00, 2, 2, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Need for Speed Most Wanted', 'DESCRIPCIN 11',15.00, 2, 3, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Grid 2', 'DESCRIPCIN 12',20.00, 1, 3, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('SHIFT 2', 'DESCRIPCIN 13',25.00, 1, 3, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('F1 2012', 'DESCRIPCIN 14',16.00, 1, 3, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('The crew', 'DESCRIPCIN 15',15.00, 1, 3, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Los Sims 3', 'DESCRIPCIN 16',15.00, 2, 4, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Plants vs. Zombies', 'DESCRIPCIN 17',20.00, 1, 4, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Plants vs. Zombies 2', 'DESCRIPCIN 18',25.00, 2, 4, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Guitar Hero 3', 'DESCRIPCIN 19',16.00, 2, 4, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Los Sims� 4 Digital Deluxe', 'DESCRIPCIN 20',50.00, 1, 4, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Fifa 15', 'DESCRIPCIN 21',40.00, 1, 5, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Fifa 14', 'DESCRIPCIN 22',30.00, 1, 5, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('NHL 09', 'DESCRIPCIN 23',7.00, 1, 5, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('PES 2015', 'DESCRIPCIN 24',40.00, 1, 5, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('NBA 2K15', 'DESCRIPCIN 25',20.00, 1, 5, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Plants vs Zombies� Garden Warfare', 'DESCRIPCIN 26',21.00, 1, 6, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('BEJEWELED 3', 'DESCRIPCIN 27',3.00, 1, 6, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Red Alert 3', 'DESCRIPCIN 28',12.00, 1, 6, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('This War of Mine', 'DESCRIPCIN 29',35.00, 1, 6, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Civilization: Beyond Earth', 'DESCRIPCIN 30',30.00, 1, 6, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Exodus Wars: Fractured Empire', 'DESCRIPCIN 31',10.00, 1, 7, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Survivalist', 'DESCRIPCIN 32',5.00, 1, 7, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('The Tiny Tale 2', 'DESCRIPCIN 33',6.00, 1, 7, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('SickBrick', 'DESCRIPCIN 34',6.00, 1, 7, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Never Alone', 'DESCRIPCIN 35',9.00, 1, 7, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Star Wars�: The Old Republic', 'DESCRIPCIN 36',10.00, 1, 8, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('The Secret World', 'DESCRIPCIN 37',20.00, 1, 8, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('The Crew', 'DESCRIPCIN 38',60.00, 1, 8, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('H1Z1', 'DESCRIPCIN 39',20.00, 1, 8, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('DayZ', 'DESCRIPCIN 40',40.00, 1, 8, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Hyper Dimension Neptunia', 'DESCRIPCIN 41',15.00, 1, 9, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('The hobbyt Lego', 'DESCRIPCIN 42',5.00, 1, 9, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Forward to the Sky', 'DESCRIPCIN 43',8.00, 1, 9, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Dying Light', 'DESCRIPCIN 44',60.00, 1, 9, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('The Escapists', 'DESCRIPCIN 45',15.00, 1, 9, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Heroes & Generals', 'DESCRIPCIN 46',00.00, 1, 10, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Battlefield Heroes', 'DESCRIPCIN 47',00.00, 1, 10, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Command & Conquer: Tiberium Alliances', 'DESCRIPCIN 48',00.00, 1, 10, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Star Wars�: The Old Republic', 'DESCRIPCIN 49',00.00, 1, 10, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('FIFA World', 'DESCRIPCIN 50',00.00, 1, 10, 'AD100000','activo', GETDATE());

INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Demo de Mass Effect 3', 'DESCRIPCIN 51',00.00, 1, 11, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('Demo descargable de FIFA 15', 'DESCRIPCIN 52',00.00, 1, 11, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('SimCity� (prueba gratis)', 'DESCRIPCIN 53',00.00, 1, 11, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('FIFA MANAGER 14 DEMO', 'DESCRIPCIN 54',00.00, 1, 11, 'AD100000','activo', GETDATE());
INSERT INTO JUEGO(NOMBRE, DESCRIPCION,COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)
VALUES ('PAYDAY 2 Demo', 'DESCRIPCIN 55',00.00, 1, 11, 'AD100000','activo', GETDATE());




--INSERTAR LICENCIAS
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100001','XCJU33-33334D-OPPO6G-FFGHF3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100002','DRF654-HNJM75-8JKIOP-SQWE34', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100003','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100004','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
--INSERTAR LICENCIAS

SELECT * FROM USUARIO
--CREAR CARRITOS PARA CLIENTE
INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) VALUES ('US100001', 'En Proceso')
INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) VALUES ('US100002', 'En Proceso')
INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) VALUES ('US100003', 'En Proceso')
INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) VALUES ('US100004', 'En Proceso')
INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) VALUES ('US100005', 'En Proceso')


select * from carrito;
select * from DETALLECARRITO
select * from JUEGO
select * from ADMINISTRADOR
select * from LICENCIA
go

CREATE TRIGGER tx_crear_carrito on usuario for insert
as
	declare @codigousuario char(8)
	select @codigousuario = codigousuario from inserted
	INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) values (@codigousuario, 'En proceso');
go


CREATE PROCEDURE USP_VALIDAR_USUARIO
@email varchar(100),
@clave char(8)
as
SELECT * FROM USUARIO WHERE CORREO = @email and CLAVE = @clave
go

exec USP_VALIDAR_USUARIO 'luis@gmail.com','12345678'
go


select dv.* from  DETALLEVENTA dv inner join VENTA v
on dv.CODIGOVENTA = v.CODIGOVENTA inner join USUARIO u
on u.CODIGOUSUARIO = v.CODIGOUSUA
where v.CODIGOUSUA = 'US100001'


INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100001','XCJU33-33334D-OPPO6G-FFGHF3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100001','SQWE34-33334D-SQWE35-FFKU7F', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100001','333F4D-13E34D-334T5D-HNJM75', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100002','DRF654-HNJM75-8JKIOP-SQWE34', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100002','DRF654-XCJU33-OPPO6G-FF44TD', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100002','DRF654-330MJD-OPPO6G-8JKIOP', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100003','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100003','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100003','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100004','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100004','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100004','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100005','XCJU453-333F4D-OPEE6G-FF44TD', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100005','FFD95H-333F4D-HNJM75-334T5D', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100005','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100006','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100006','XCJX76-330MJD-OD4O6G-FF6H22', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100006','XCOI76-334T5D-OPP99G-FF9CD4', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100007','XCJX76-330MJD-OD4O6G-FF6H22', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100007','XCOI76-334T5D-OPP99G-FF9CD4', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100007','AVDI76-3344T5-OPP2FE-FFD95H', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100007','XCODCC-37J55D-OPP3EE-FF99K1', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100008','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100008','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100008','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100009','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100009','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100009','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100010','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100010','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100010','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100011','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100011','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100011','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100012','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100012','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100012','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100013','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100013','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100013','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100014','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100014','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100014','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100015','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100015','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100015','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100016','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100016','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100016','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100017','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100017','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100017','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100018','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100018','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100018','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100019','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100019','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100019','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100020','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100020','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100020','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100021','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100021','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100021','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100022','DRF654-HNJM75-8JKIOP-SQWE35', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100022','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100022','XCJ8I3-3SFG43-OPPF4G-FF8IV3', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100023','XCJU33-33334D-OPPO6G-FFGHF6', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100023','XCJU33-3SFG43-FF8IV3-OPP99G', 'Libre',GETDATE());
INSERT INTO LICENCIA(CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION)
VALUES ('JU100023','FF99K1-HNJM75-HNJFR5-FF6H29', 'Libre',GETDATE());

SELECT * FROM USUARIO
SELECT * FROM VENTA
SELECT * FROM DETALLEVENTA


-- stock de licencias por juego
SELECT codigojuego, count(CODIGOJUEGO) FROM LICENCIA WHERE ESTADO = 'libre'
group by CODIGOJUEGO
go

-- procedure que retorna lista de juegos adquiridos por usuario

create proc usp_juegos_adquiridos_usuario
@codusuario char(8) 
as
select * from JUEGO where CODIGOJUEGO in (select distinct dv.CODIGOJUEGO from DETALLEVENTA dv inner join VENTA V ON V.CODIGOVENTA = DV.CODIGOVENTA
INNER JOIN USUARIO U ON U.CODIGOUSUARIO = V.CODIGOUSUA
WHERE V.CODIGOUSUA = @codusuario)
go



select dv.* from DETALLEVENTA dv inner join venta v on dv.CODIGOVENTA = v.CODIGOVENTA
inner join USUARIO u on v.CODIGOUSUA = u.CODIGOUSUARIO
where v.CODIGOUSUA = 'US100001' and dv.CODIGOJUEGO = 'JU100001'

SELECT TOP (1) * FROM LICENCIA where CODIGOJUEGO = 'JU100001' AND ESTADO = 'libre'
