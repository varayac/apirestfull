/*
 Navicat Premium Data Transfer

 Source Server         : Raspi
 Source Server Type    : MariaDB
 Source Server Version : 100604
 Source Schema         : articulosdb

 Target Server Type    : MariaDB
 Target Server Version : 100604
 File Encoding         : 65001

 Date: 28/10/2021 01:30:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NULL DEFAULT NULL,
  `precio` double(10, 2) NULL DEFAULT NULL,
  `stock` int(250) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articulos
-- ----------------------------
INSERT INTO `articulos` VALUES (1, 'Harina Royal - 1 KG', 1.99, 100);
INSERT INTO `articulos` VALUES (2, 'Vino Casillero del Diablo - 1 LT', 7.99, 200);
INSERT INTO `articulos` VALUES (3, 'Manjar de Leche Soprole - 1 KG', 2.99, 90);
INSERT INTO `articulos` VALUES (4, 'Azucar - 5 KG', 2.99, 170);
INSERT INTO `articulos` VALUES (5, 'Queso Colun - 500 GR', 4.99, 70);
INSERT INTO `articulos` VALUES (6, 'Cerveza Austral - 750 ML', 5.99, 120);
INSERT INTO `articulos` VALUES (7, 'Aceitunas Negras - 1/4 KG', 3.99, 200);
INSERT INTO `articulos` VALUES (8, 'Carne Lomo Liso - 2 KG', 30.00, 187);
INSERT INTO `articulos` VALUES (9, 'Mani Salado Acuenta - 1 KG', 5.99, 80);
INSERT INTO `articulos` VALUES (10, 'Cerveza Royal - 750 CC', 2.99, 73);

SET FOREIGN_KEY_CHECKS = 1;
