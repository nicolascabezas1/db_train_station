-- Crear tabla "lines"
USE metro_city;
CREATE TABLE `lines` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(10) NOT NULL,
  `color` VARCHAR(15) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Crear tabla "stations"
CREATE TABLE `stations` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Crear tabla "trains" con clave foránea
CREATE TABLE `trains` (
  `serial_number` VARCHAR(10) NOT NULL,
  `line_id` BIGINT(20) UNSIGNED NOT NULL,
  `type` TINYINT(4) NOT NULL,
  `year` INT(4) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (serial_number),
  CONSTRAINT `trains_line_id_foreing `
  FOREIGN KEY (line_id) REFERENCES `lines`(`id`)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

--creacion de tabla stattions delete
CREATE TABLE `stations_delete` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

