USE isosceles;
-- CREACION DEL PRIMER USUARIO
CREATE USER `administracion`@`localhost` IDENTIFIED WITH mysql_native_password BY 'administracion';

			-- AL USUARIO ADMINISTRACION LE PERMITO VER TODAS LAS TABLAS

GRANT SELECT ON isosceles.* TO administracion@localhost; 



			-- LE REVOCO LOS PERMISOS AL USUARIO ADMINISTRACION

-- REVOKE SELECT ON isoceles.* FROM administracion@localhost; 


			-- AL USUARIO ADMINISTRACION SOLO LE PERMITO VER LAS VISTA?
    
-- GRANT SELECT ON isosceles.datos_envio TO administracion@localhost; 
-- GRANT SELECT ON isosceles.contacto_menor_nivel3 TO administracion@localhost; 
-- GRANT SELECT ON isosceles.datos_envio TO administracion@localhost; 
-- GRANT SELECT ON isosceles.prouctos_mas_stock TO administracion@localhost; 
-- GRANT SELECT ON isosceles.nuevos_usuario TO administracion@localhost; 
-- GRANT SELECT ON isosceles.tipos_de_usuarios TO administracion@localhost; 




-- CREACION DEL SEGUNDO USUARIO
CREATE USER `desarrollo`@`localhost` IDENTIFIED WITH mysql_native_password BY 'desarrollo';

		-- AL USUARIO  DESARROLO LE PERMITO VER,INSERTAR Y ACTUALIZAR TODAS LAS TABLAS
GRANT SELECT,INSERT,UPDATE ON isosceles.* TO administracion@localhost; 


		-- LE REVOCO TODOS LOS PERMISOS AL USUARIO DESARROLLO
        
    -- REVOKE ALL ON isoceles.* FROM desarrollo@localhost;
    
    
				-- AL USUARIO DESARROLLO LE PERMITO SOLO UTILIZAR LOS SP?
 	
-- GRANT INSERT ON isosceles.agregar_nueva_categoria TO desarrollo@localhost;
-- GRANT INSERT ON isosceles.agregar_nuevo_usuario TO desarrollo@localhost;
-- GRANT UPDATE ON isosceles.modifica_contrasena_usuario TO desarrollo@localhost; 
-- GRANT UPDATE ON isosceles.modifica_nombre_usuario TO desarrollo@localhost;

	-- VER TODOS LOS USUARIO Y LOS GRANTS DE LOS 2 USUARIOS CREADOS
USE mysql;
SELECT * FROM user;
SHOW GRANTS FOR administracion@localhost;
SHOW GRANTS FOR desarrollo@localhost;

			-- ELIMINAR USUARIOS CREADOS
-- DROP USER administracion@localhost;
-- DROP USER desarrollo@localhost;