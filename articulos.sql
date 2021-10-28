CREATE DATABASE articulosdb;
USE articulosdb;

CREATE TABLE articulos (
  id INT(250) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  descripcion VARCHAR(250) DEFAULT NULL,
  precio DOUBLE(10,2) DEFAULT NULL,
  stock INT(250) DEFAULT NULL) DEFAULT CHARSET=latin1;
  
 INSERT INTO articulos (id, descripcion, precio, stock) VALUES 
 (1, 'Harina Royal - 1 KG', '1.99', 100),
 (2, 'Vino Casillero del Diablo - 1 LT', '7.99', 200),
 (3, 'Manjar de Leche Soprole - 1 KG', '2.99', 90),
 (4, 'Azucar - 5 KG', '2.99', 170),
 (5, 'Queso Colun - 500 GR', '4.99', 70),
 (6, 'Cerveza Austral - 750 ML', '5.99', 120),
 (7, 'Aceitunas Negras - 1/4 KG', '3.99', 200),
 (8, 'Carne Lomo Liso - 2 KG', '30.00', 187),
 (9, 'Mani Salado Acuenta - 1 KG', '5.99', 80),
 (10, 'Cerveza Royal - 750 CC', '2.99', 73);