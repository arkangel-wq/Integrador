SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `posf`
--




CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO categorias VALUES
("1","Equipos Electromecánicos","2017-12-21 14:53:29"),
("2","Taladros","2017-12-21 14:53:29"),
("3","Andamios","2017-12-21 14:53:29"),
("4","Generadores de energía","2017-12-21 14:53:29"),
("5","Equipos para construcción","2017-12-21 14:53:29"),
("6","Martillos mecánicos","2017-12-21 17:06:40");




CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO clientes VALUES
("5","Miguel Murillo","325235235","miguel@hotmail.com","(254) 545-3446","calle 34 # 34 - 23","1976-03-04","32","2017-12-26 17:27:13","2017-12-26 22:38:13"),
("6","Margarita Londoño","34565432","margarita@hotmail.com","(344) 345-6678","Calle 45 # 34 - 56","1976-11-30","14","2017-12-26 17:26:51","2017-12-26 16:26:51"),
("7","Julian Ramirez","786786545","julian@hotmail.com","(675) 674-5453","Carrera 45 # 54 - 56","1980-04-05","14","2017-12-26 17:26:28","2017-12-26 16:26:28"),
("8","Stella Jaramillo","65756735","stella@gmail.com","(435) 346-3463","Carrera 34 # 45- 56","1956-06-05","9","2017-12-26 17:25:55","2017-12-26 16:25:55"),
("9","Eduardo López","2147483647","eduardo@gmail.com","(534) 634-6565","Carrera 67 # 45sur","1978-03-04","12","2017-12-26 17:25:33","2017-12-26 16:25:33"),
("10","Ximena Restrepo","436346346","ximena@gmail.com","(543) 463-4634","calle 45 # 23 - 45","1956-03-04","18","2017-12-26 17:25:08","2017-12-26 16:25:08"),
("19","armando","2147483647","sada1301as@gmail.com","(248) 125-6260","Al verde","1997-12-30","0","0000-00-00 00:00:00","2020-11-17 10:35:49");




CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO productos VALUES
("1","1","101","Aspiradora Industrial ","vistas/img/productos/101/105.png","13","1000","1200","2","2020-11-17 22:48:27"),
("2","1","102","Plato Flotante para Allanadora","vistas/img/productos/102/940.jpg","6","4500","6300","3","2017-12-26 09:04:11"),
("3","1","103","Compresor de Aire para pintura","vistas/img/productos/103/763.jpg","8","3000","4200","12","2017-12-26 09:03:22"),
("4","1","104","Cortadora de Adobe sin Disco ","vistas/img/productos/104/957.jpg","16","4000","5600","4","2017-12-26 09:03:22"),
("5","1","105","Cortadora de Piso sin Disco ","vistas/img/productos/105/630.jpg","13","1540","2156","7","2017-12-26 09:03:22"),
("6","1","106","Disco Punta Diamante ","vistas/img/productos/106/635.jpg","15","1100","1540","5","2017-12-26 09:04:38"),
("7","1","107","Extractor de Aire ","vistas/img/productos/107/848.jpg","12","1540","2156","8","2017-12-26 09:04:11"),
("8","1","108","Guadañadora ","vistas/img/productos/108/163.jpg","13","1540","2156","7","2017-12-26 09:03:52"),
("9","1","109","Hidrolavadora Eléctrica ","vistas/img/productos/109/769.jpg","15","2600","3640","5","2017-12-26 09:05:09"),
("10","1","110","Hidrolavadora Gasolina","vistas/img/productos/110/582.jpg","18","2210","3094","2","2017-12-26 09:05:09"),
("11","1","111","Motobomba a Gasolina","vistas/img/productos/default/anonymous.png","20","2860","4004","0","2017-12-21 15:56:28"),
("12","1","112","Motobomba El?ctrica","vistas/img/productos/default/anonymous.png","20","2400","3360","0","2017-12-21 15:56:28"),
("13","1","113","Sierra Circular ","vistas/img/productos/default/anonymous.png","20","1100","1540","0","2017-12-21 15:56:28"),
("14","1","114","Disco de tugsteno para Sierra circular","vistas/img/productos/default/anonymous.png","20","4500","6300","0","2017-12-21 15:56:28"),
("15","1","115","Soldador Electrico ","vistas/img/productos/default/anonymous.png","20","1980","2772","0","2017-12-21 15:56:28");




CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO usuarios VALUES
("60","angel","angel","20EAfcH0JSFQY","Administrador","vistas/img/usuarios/angel/480.png","1","2020-12-03 16:30:34","2020-12-03 16:30:34"),
("66","maestra","vimosa","20EAfcH0JSFQY","Vendedor","vistas/img/usuarios/vimosa/375.jpg","1","0000-00-00 00:00:00","2020-10-26 09:03:44"),
("195","admin","admin","21OZ4/WxREgV.","Administrador","vistas/img/usuarios/admin/601.jpg","1","0000-00-00 00:00:00","2020-11-15 17:00:13");




CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;