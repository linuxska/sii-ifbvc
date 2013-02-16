
# This is a fix for InnoDB in MySQL >= 4.1.x
# It "suspends judgement" for fkey relationships until are tables are set.
SET FOREIGN_KEY_CHECKS = 0;

#-----------------------------------------------------------------------------
#-- ministerio
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `ministerio`;


CREATE TABLE `ministerio`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255)  NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `ministerio_U_1` (`name`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- casa
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `casa`;


CREATE TABLE `casa`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`ministerio` INTEGER  NOT NULL,
	`nombre` VARCHAR(255)  NOT NULL,
	`apaterno` VARCHAR(255)  NOT NULL,
	`amaterno` VARCHAR(255),
	`direccion` VARCHAR(255)  NOT NULL,
	`colonia` VARCHAR(255),
	`cp` VARCHAR(5),
	`ruta` VARCHAR(10),
	`ciudad` VARCHAR(255)  NOT NULL,
	`telcasa` VARCHAR(10),
	`telmovil` VARCHAR(10),
	`matrimonios` INTEGER,
	`peques` INTEGER,
	`jovenes` INTEGER,
	`jovencitas` INTEGER,
	`totalpersonas` INTEGER,
	`colchonetas` INTEGER,
	`iglesia` INTEGER,
	`zona` VARCHAR(1)  NOT NULL,
	`coordenadas` VARCHAR(255),
	`asignado` TINYINT default 0 NOT NULL,
	`alternos` TINYINT default 0 NOT NULL,
	`observaciones` VARCHAR(255),
	PRIMARY KEY (`id`),
	INDEX `casa_FI_1` (`ministerio`),
	CONSTRAINT `casa_FK_1`
		FOREIGN KEY (`ministerio`)
		REFERENCES `ministerio` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- miembro
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `miembro`;


CREATE TABLE `miembro`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`ministerio` INTEGER  NOT NULL,
	`nombre` VARCHAR(255)  NOT NULL,
	`apaterno` VARCHAR(255)  NOT NULL,
	`amaterno` VARCHAR(255),
	`sexo` VARCHAR(10),
	`direccion` VARCHAR(255)  NOT NULL,
	`entrecalles` VARCHAR(255),
	`colonia` VARCHAR(255), 
	`cp` VARCHAR(5),
	`ciudad` VARCHAR(255)  NOT NULL,
	`telcasa` VARCHAR(10),
	`telmovil` VARCHAR(10),
	`cumpleanios` DATE,
	`correo` VARCHAR(255),
	`observaciones` VARCHAR(255),
	PRIMARY KEY (`id`),
	INDEX `miembro_FI_1` (`ministerio`),
	CONSTRAINT `miembro_FK_1`
		FOREIGN KEY (`ministerio`)
		REFERENCES `ministerio` (`id`)
		ON DELETE CASCADE
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- iglesia
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `iglesia`;


CREATE TABLE `iglesia`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`nombre_iglesia` VARCHAR(255)  NOT NULL,
	`nombre_pastor` VARCHAR(255)  NOT NULL,
	`apaterno` VARCHAR(255)  NOT NULL,
	`amaterno` VARCHAR(255),
	`direccion` VARCHAR(255)  NOT NULL,
	`colonia` VARCHAR(255),
	`cp` VARCHAR(5),
	`ciudad` VARCHAR(255)  NOT NULL,
	`estado` VARCHAR(255)  NOT NULL,
	`pais` VARCHAR(255)  NOT NULL,
	`telefono` VARCHAR(12),
	`movil` VARCHAR(12),
	`correo` VARCHAR(255),
	`pagina` VARCHAR(255),
	`nombrearchivo` VARCHAR(255),
	`foto` TINYINT default 0,
	`observaciones` VARCHAR(255),
	PRIMARY KEY (`id`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- proveedor
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `proveedor`;


CREATE TABLE `proveedor`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`nombreempresa` VARCHAR(255)  NOT NULL,
	`giro` VARCHAR(64),
	`direccion` VARCHAR(255)  NOT NULL,
	`entrecalles` VARCHAR(255),
	`colonia` VARCHAR(255),
	`cp` VARCHAR(5),
	`ciudad` VARCHAR(255)  NOT NULL,
	`tellocal` VARCHAR(10),
	`telmovil` VARCHAR(10),
	`idnextel` VARCHAR(15),
	`correo` VARCHAR(255),
	`observaciones` VARCHAR(255),
	PRIMARY KEY (`id`)
)Type=InnoDB;

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;
