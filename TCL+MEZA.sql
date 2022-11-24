DROP SCHEMA IF EXISTS isosceles;    -- ELIMINO LA BASE YA ESXISTENTE
CREATE DATABASE  if NOT exists isosceles; -- CREO NUEVAMENTE LA BASE DE DATOS
USE isosceles;

-- CREO LAS DOS TABLAS QUE VOY A UTILIZAR

CREATE TABLE if NOT exists isosceles.tipo_id (
		id_tipo INT NOT NULL AUTO_INCREMENT,
		tipo_id	VARCHAR (150) NOT NULL,
        PRIMARY KEY (id_tipo)
);

CREATE TABLE if not exists isosceles.marca(
		id_marca INT NOT NULL AUTO_INCREMENT,
		nonb_marca	VARCHAR (150),
		PRIMARY KEY (id_marca)
        );


						-- CARGA DATOS TIPOS DE IDENTIFICACION
INSERT INTO isosceles.tipo_id (tipo_id) VALUES
('Cedula de Identidad '),('Documento nacional de Identidad'),
('Pasaporte'),('Cedula de Ciudadania');


 INSERT INTO isosceles.marca (nonb_marca) VALUES
('Chevrolet'),('Mercury'),('Audi'),('Mercury'),('Buick'),('Volvo'),('Lexus'),('Mitsubishi'),
('Nissan'),('Dodge'),('Infiniti'),('Jeep'),('Hummer'),('Lexus'),('Suzuki'),('Cadillac'),
('Dodge'),('Ford'),('Honda'),('Hyundai'),('Dodge'),('Volkswagen'),('Lincoln'),('Jeep'),
('Jaguar'),('Ford'),('Pontiac'),('Lincoln'),('BMW'),('47 Street'),('361'),('Nation'),
('Activitta'),('Actvitta'),('Addnice'),('Adidas'),('Agua'),('Patagona'),('Airness'),
('All'),('TerraAllstar'),('Alpina'),('Alpine'),('Skate'),('Araquina'),
('Asics'),('Athxx'),('Atomik'),('Avia'),('Avura'),('Bando'),('Batistella'),
('Bibi'),('Bonitopie'),('Botanguita'),('Briganti'),('Brooks'),('ByM Shoes'),
('Caterpillar'),('Cavatini'),('Cheeky'), ('Chérie'),('Converse'),('Couce'),
('Crocs'),('DC'),('DC Shoes'),('Deli'),('Diadora'),('Diesel'),('Diportto'),
('Disney'),('Dufour'),('Element'),('Enzo'),('Faraon'),('Farenheite'),
('Ferraro'),('Fierros'),('Fila'),('Filament'),('Finders'),('Flecha'),
('Footy'),('Fragola'),('Franco Pasotti'),('Gaelle'),('Genérica'),
('Gola'),('Goodyear'),('Goosy'),('Gowell'),('Gravagna'),('Grims'),
('Gummi'),('Head'),('Heben'),('Heyas'),('Heyday'),('Hush Puppies'),
('Indra'),('Jaguar'),('John Foos'),('Jordan'),('Kappa'),('Kelme'),
('Kickers'),('Kidy'),('Kioshi'),('Klivers'),('LA Gear'),('Lacoste'),
('Lady Stork'),('Le Coq Sportif'),('Levi s'),('Lotto'),('Luna Chiara'),
('Marcel'),('Marvel'),('Massimo Chiesa'),('MDC Moda'),('Merrell'),
('Mimo'),('Mistral'),('Mizuno'),('Mocassino'),('Modare'),('Moleca'),
('Molekinha'),('Molekinho'),('Montagne'),('Mormaii'),('Muaa'),('Narrow'),
('New Balance'),('New Style'),('New Tilers'),('Nike'),('Old Navy'),
('Olympikus'),('One Foot'),('Orbita'),('Pampero'),('Pampero Infantil'),
('Panther'),('Pegada'),('Penalty'),('Piccadilly'),('Pira'),('Plumita s'),
('Pony'),('Proforce'),('Prowess'),('Puma'),('PupsPuro'),('Rave'),('Recife'),
('Reebok'),('Reef'),('Roller'),('Rush Town'),('Rusty'),('Sacha'),('Shoes'),
('Salomon'),('Saucony'),('Selten'),('Sergio Tacchini Seta'),('Sex WaxShadow'),
('Sin marca'),('Skechers'),('Sky Blue'),('Small Shoes'),('SoftSorba'),('Sorpasso'),
('South 1'),('Spiral'),('StarStone'),('Stork Man STX'),('Sulu'),('Superga'),
('The Dark'),('King'),('Topper'),('TOYTridy'),('Tunning'),('Umbro'),('Under Armour'),
('Vans'),('Värt'),('Viamo'),('Vicus'),('Vizzano'),('Wake'),('Wees Kids'),
('Wembly'),('Wilson'),('Zapy'),('Zara');

SELECT * FROM isosceles.marca ORDER BY nonb_marca; -- VEO EL LISTADO QUE ESTA CARGADO
START TRANSACTION;
SET SQL_SAFE_UPDATES = 0;
	DELETE FROM isosceles.marca
    WHERE nonb_marca LIKE "A%";
    SELECT * FROM isosceles.marca ORDER BY nonb_marca; -- CORROBORO QUE SE HAYAN ELIMINADO LAS MARCAS QUE INICAINA CON LA LETRA A 
ROLLBACK; -- VUELVO ATRAS LA ELIMINACION
SELECT * FROM isosceles.marca ORDER BY nonb_marca;  -- CORFIMO ESTO ULTIMO
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM isosceles.marca ORDER BY nonb_marca; -- VEO EL LISTADO QUE ESTA CARGADO
START TRANSACTION;
SET SQL_SAFE_UPDATES = 0;
	DELETE FROM isosceles.marca
    WHERE nonb_marca LIKE "A%";
    COMMIT; -- CONFIRMO LA ELIMINACION
SELECT * FROM isosceles.marca ORDER BY nonb_marca;  -- CORFIMO QUE LA ELIMINACION SE HAYA REALIZADO
SET SQL_SAFE_UPDATES = 1;


-- INICIO CARGA POR LOTES DE LA TABLA TIPO DE ID
START TRANSACTION;
INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('Carnet de Identidad');
INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('Clave Unica de Registro de Poblacion');
INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('Documento Personal de Identificacion');
INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('Registro unico Personal');
SAVEPOINT parte1;

INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('Cedula de Identidad Civil');
INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('Cedula de Identidad personal');
INSERT INTO isosceles.tipo_id (tipo_id) VALUES('Licencia de Identificacion');
INSERT INTO isosceles.tipo_id (tipo_id) VALUES ('UNID');
SAVEPOINT parte2;

-- ROLLBACK TO SAVEPOINT parte1;
