-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2019 a las 19:45:04
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paygo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logistics`
--

CREATE TABLE `logistics` (
  `cedula` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `numero_empleado` int(11) NOT NULL,
  `cargo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jefe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ventas_2019` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logistics`
--

INSERT INTO `logistics` (`cedula`, `nombres`, `apellido1`, `apellido2`, `fecha_nacimiento`, `genero`, `fecha_ingreso`, `numero_empleado`, `cargo`, `jefe`, `zona`, `municipio`, `departamento`, `ventas_2019`, `email`, `password`, `imagen`, `celular`, `created_at`, `updated_at`) VALUES
(5332366, 'Dolores', 'Chavarro', 'Lenis', '1970-01-01', 'F', '1970-01-01', 5700016, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 47230805, 'dolores.chavarro@sulogistics.com', '$2y$10$yiC9LEHklWUZ3ORm3x7wmufD78.QnPymFzDMOUAzYQg4LPY4FoaSG', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3171152151', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(5339522, 'Magdalena', 'Zuleta', 'Larrahondo', '1970-01-01', 'F', '1970-01-01', 5700020, 'Ejecutivo Comercial', '5700045', 'Zona 2', 'Ibagué', 'Tolima', 43139394, 'magdalena.zuleta@sulogistics.com', '$2y$10$TRKZt08KKjJvINIUC5X4AOuJRD2xOb.qM8FIVljBOf.8TsbOkle2i', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3194805722', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(5365023, 'María del Socorro', 'Iragorri', 'Bedoya', '1970-01-01', 'F', '1970-01-01', 5700017, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Soledad', 'Atlántico', 48011527, 'mariadelsocorro.iragorri@sulogistics.com', '$2y$10$mUihHqVJXkmSBv6ONI0HZO0snIP.gVLfVRZ.RwYzxRLmCzu9foCZG', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3156762278', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(5389867, 'Celia', 'Alzate', 'Bolívar', '1970-01-01', 'F', '1970-01-01', 5700060, 'Subgerente Regional', '5700028', 'Zona 2', 'Manizales', 'Caldas', 0, 'celia.alzate@sulogistics.com', '$2y$10$omxWTodndMPHAolfYoZjl.SQg03xKTL/n1Rrz7GXXUy8Sp28Nf2ci', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3122778844', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(53105206, 'Marcela', 'Mendoza ', 'Uzurriaga', '1970-01-01', 'F', '1970-01-01', 5700004, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Palmira', 'Valle del Cauca', 16977199, 'marcela.mendoza@sulogistics.com', '$2y$10$cyQ1yJKc9jg.qpjdLnvyfuquZWEHkH2yKKCBFo9uAQDxChHALlaWO', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3154389705', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(53107507, 'Ana Lucía', 'Zuleta', 'Lizarazo', '1970-01-01', 'F', '1970-01-01', 5700048, 'Ejecutivo Comercial', '5700015', 'Zona 4', 'Cartagena', 'Bolívar', 49376310, 'analucia.zuleta@sulogistics.com', '$2y$10$e9AEm6QxWKPXzY0RNNC5BeS5z8HJN.zgFxkXR4m9n1sw82lS8xRmy', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3198099759', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(53112264, 'Rebeca', 'Esguerra', 'Arana', '1970-01-01', 'F', '1970-01-01', 5700010, 'Gerente Regional', '5700079', 'Zona 5', 'Villavicencio', 'Meta', 0, 'rebeca.esguerra@sulogistics.com', '$2y$10$Fbq55frMIEztLfsDa4QbxOq.2tEJZcID54S8bwGjEk1A8Y22vZhi.', 'https://static.wixstatic.com/media/1312b9_3d05dc9c698a42f3930646c1a0b03eb5~mv2.jpg', '3159764087', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(53116639, 'María Elisa', 'Daza', 'Echeverry', '1970-01-01', 'F', '1970-01-01', 5700011, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 39447176, 'mariaelisa.daza@sulogistics.com', '$2y$10$1K6/e1nm3ug/bG0.9kmep.a/2kTsbjj8b9cLIyx0gE46nLbdzx6ei', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3161688006', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(53159848, 'María Ángela', 'Ortiz', 'Upegui', '1970-01-01', 'F', '1970-01-01', 5700066, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Villavicencio', 'Meta', 23691072, 'mariaangela.ortiz@sulogistics.com', '$2y$10$NZoDJ2gCPCPp.x.AEiK7fukO5lvJ7B8I.0ejL1BLPO0ORAODHXioq', 'https://static.wixstatic.com/media/1312b9_3d05dc9c698a42f3930646c1a0b03eb5~mv2.jpg', '3143116755', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(53225966, 'Irene', 'Mazuera', 'Lizarazo', '1970-01-01', 'F', '1970-01-01', 5700055, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 42989473, 'irene.mazuera@sulogistics.com', '$2y$10$dXtvfgcSgZHJKyc/p6DoPewLFkyUs1LZzB3V15T4Vc71JSQIBXoPy', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3147332238', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(53226489, 'María del Pilar', 'Jáuregui', 'Arana', '1970-01-01', 'F', '1970-01-01', 5700038, 'Subgerente Regional', '5700009', 'Zona 1', 'Cúcuta', 'Norte de Santander', 0, 'mariadelpilar.jauregui@sulogistics.com', '$2y$10$nlWdfnIPGIPxJuhsyDAqV.nbRDVx7cxhoIA6s1Wx.ICvSTMmlOiXq', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3113384706', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(53233697, 'Cecilia', 'Umaña', 'Viscaya', '1970-01-01', 'F', '1970-01-01', 5700003, 'Ejecutivo Comercial', '5700060', 'Zona 2', 'Armenia', 'Quindío', 48816520, 'cecilia.umaña@sulogistics.com', '$2y$10$TXiiRlDqFredjkV.5PTiX.wGOHn.86jSBPrRhDFzLvwnwNCdXELuy', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3148043906', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(53254105, 'Tatiana', 'Echavarría', 'Montoya', '1970-01-01', 'F', '1970-01-01', 5700008, 'Subgerente Regional', '5700028', 'Zona 2', 'Medellín', 'Antioquia', 0, 'tatiana.echavarria@sulogistics.com', '$2y$10$vU4W506CAzyxkx65PEVWDuV5tiZL/36cFBo/DSuegHuHfJ6N25Lr2', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3154944966', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(53261332, 'Magdalena', 'Montoya', 'Oquendo', '1970-01-01', 'F', '1970-01-01', 5700077, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Santa Marta', 'Magdalena', 31597847, 'magdalena.montoya@sulogistics.com', '$2y$10$DfhX2e60XODQTm6ur4gzBu5oMA5NSRbjYkXjFMnpwYx65m1N3mhNi', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3203793363', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(53287572, 'Eva', 'Arrieta', 'Samudio', '1970-01-01', 'F', '1970-01-01', 5700021, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 21791732, 'eva.arrieta@sulogistics.com', '$2y$10$d98m8eoAGlfT0m8UAHSRj.zTFze3czqu7uJ3JijUwEK/JMTj8VQtG', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3152889592', '2019-03-25 23:22:37', '2019-03-25 23:22:37'),
(53326355, 'Beatriz', 'Jáuregui', 'Uribe', '1970-01-01', 'F', '1970-01-01', 5700078, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Valledupar', 'Cesar', 40377521, 'beatriz.jauregui@sulogistics.com', '$2y$10$vfaedCSdUjh2gpiB9Mxjhu9NeRfSxZShESCw.lgLm6JIt5imyoyuq', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3208344584', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(53340740, 'Beatriz', 'Echaverría', 'Maya', '1970-01-01', 'F', '1970-01-01', 5700024, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 27551871, 'beatriz.echaverria@sulogistics.com', '$2y$10$ul.5hOgx/iityfdvp8/IgOK3jYKsk3SHmCxajyuktLXrv48weCWOy', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3178654541', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(53353504, 'María Victoria', 'Atehortúa', 'Ulloa', '1970-01-01', 'F', '1970-01-01', 5700019, 'Ejecutivo Comercial', '5700038', 'Zona 1', 'Floridablanca', 'Santander', 47338336, 'mariavictoria.atehortua@sulogistics.com', '$2y$10$7n8k1zG0ofre8/d2xFwfZeS1MC5GFKcyZy1CInF/fXdyrK7WB.wam', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3126466719', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(53393776, 'María Cecilia', 'Maya', 'Echeverría', '1970-01-01', 'F', '1970-01-01', 5700030, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Cali', 'Valle del Cauca', 24915148, 'mariacecilia.maya@sulogistics.com', '$2y$10$dkY8UuKLzXEz4NEKNNkAtea.H0YE6RhfCp8cDNMYQgFxj4IEsrR1q', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3172961723', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(53402505, 'Paloma', 'Artistizábal', 'Loaiza', '1970-01-01', 'F', '1970-01-01', 5700035, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Buenaventura', 'Valle del Cauca', 47420381, 'paloma.artistizabal@sulogistics.com', '$2y$10$iAB/b3MDAr1BA.iS3ywWYO3zrvCB3IS0zw4W8.9tBZAGn0jT1v8Nq', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3112028952', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(53456127, 'María Luisa', 'Upegui', 'Urdinola', '1970-01-01', 'F', '1970-01-01', 5700076, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Villavicencio', 'Meta', 49730216, 'marialuisa.upegui@sulogistics.com', '$2y$10$zZWQ.07z5hRnszf1vclKKOoU/9l/sAdLvko1w3iuup0N3nzyveNS2', 'https://static.wixstatic.com/media/1312b9_3d05dc9c698a42f3930646c1a0b03eb5~mv2.jpg', '3208693162', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(53480961, 'Valeria', 'Anzola', 'Zúñiga', '1970-01-01', 'F', '1970-01-01', 5700045, 'Subgerente Regional', '5700028', 'Zona 2', 'Ibagué', 'Tolima', 0, 'valeria.anzola@sulogistics.com', '$2y$10$1rf6.P/Zftd9pTzi9ARGzOE9jrd.3tJXub2nLPYO0.8RWX4gNfCOK', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3211749082', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(53491229, 'María Jimena', 'Úzuga', 'Alzate', '1970-01-01', 'F', '1970-01-01', 5700005, 'Ejecutivo Comercial', '5700015', 'Zona 4', 'Sincelejo', 'Sucre', 38374492, 'mariajimena.uzuga@sulogistics.com', '$2y$10$yJJlykumYnZgMfiFVszyBe9XNq5w/ozbeADSvkZbsQ1hCJ36SyMmK', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3204764540', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(53506708, 'Claudia', 'Esguerra', 'Loaiza', '1970-01-01', 'F', '1970-01-01', 5700027, 'Ejecutivo Comercial', '5700068', 'Zona 3', 'Pasto', 'Nariño', 23270968, 'claudia.esguerra@sulogistics.com', '$2y$10$whKmYVdVTS.0dK8L1K6Ehu8LYJTNr0dFrtXemlaGEP2chZwn.7ZQ2', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3113007012', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(53510377, 'María Victoria', 'Arana', 'Echaverría', '1970-01-01', 'F', '1970-01-01', 5700046, 'Subgerente Regional', '5700009', 'Zona 1', 'Bogotá', 'Cundinamarca', 0, 'mariavictoria.arana@sulogistics.com', '$2y$10$WGJwcXzCGdmLvoRPeFf72uN8/TKP6SkgGBUFiTPZFeZA8OU9RN8w6', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3153639624', '2019-03-25 23:22:37', '2019-03-25 23:22:37'),
(53548666, 'Sara', 'Landázuri', 'Azcárate', '1970-01-01', 'F', '1970-01-01', 5700051, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Soacha', 'Cundinamarca', 43943534, 'sara.landazuri@sulogistics.com', '$2y$10$WIEXRdVv/RhdUBfr.uPKmeEaCFFi8EwFLW2TADk44nLWOj2HJquc.', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3178125469', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(53567668, 'María Claudia', 'Uribe', 'Otoya', '1970-01-01', 'F', '1970-01-01', 5700059, 'Ejecutivo Comercial', '5700060', 'Zona 2', 'Pereira', 'Risaralda', 19789103, 'mariaclaudia.uribe@sulogistics.com', '$2y$10$DsjZfLIFQIeBPEA2T7QlQO9rMVT0q8qIFqh/YJBFyBE/0YLiFlilS', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3208125323', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(53568970, 'Cecilia', 'Oquendo', 'Lezama', '1970-01-01', 'F', '1970-01-01', 5700047, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Medellín', 'Antioquia', 23454966, 'cecilia.oquendo@sulogistics.com', '$2y$10$vTk7HayazHq994fUGNBvc.yskDS0lmTWetxrHqTtPANWmiwq7wBDW', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3176143304', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(53572739, 'Fátima', 'Dorronsoro', 'Lenis', '1970-01-01', 'F', '1970-01-01', 5700081, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 31995916, 'fatima.dorronsoro@sulogistics.com', '$2y$10$/qN804NV8TRqKaDL4hBOHuOzSLohB5.nRZBmmX1MzEvgkdKN2W18a', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3181151301', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(53602408, 'María Claudia', 'Arizmendi', 'Urdaneta', '1970-01-01', 'F', '1970-01-01', 5700026, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 42101150, 'mariaclaudia.arizmendi@sulogistics.com', '$2y$10$LMMYDODe/LcfKjYmNrhfruCuT3lsNQG3/ulFfmj4A4se/8GB4taz.', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3198573990', '2019-03-25 23:22:37', '2019-03-25 23:22:37'),
(53622318, 'Mariana', 'Loaiza', 'Zuluaga', '1970-01-01', 'F', '1970-01-01', 5700056, 'Subgerente Regional', '5700009', 'Zona 1', 'Bogotá', 'Cundinamarca', 0, 'mariana.loaiza@sulogistics.com', '$2y$10$d/YIq9CG4XIPWevwQMNpU.Z7jQTbyUzyr9W4d6HonBUOAPKw2qk3G', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3117557183', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(53635157, 'Virginia María', 'Iragorri', 'Ibargüen', '1970-01-01', 'F', '1970-01-01', 5700054, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Cali', 'Valle del Cauca', 29398326, 'virginiamaria.iragorri@sulogistics.com', '$2y$10$rwTUm4fn8fnBcnVh0xETy.Bx1nfnGIn2uGP1INFvSyFAfaiFMW2aq', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3105933997', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(53725429, 'María Angélica', 'Argote', 'Argote', '1970-01-01', 'F', '1970-01-01', 5700068, 'Subgerente Regional', '5700058', 'Zona 3', 'Pasto', 'Nariño', 0, 'mariaangelica.argote@sulogistics.com', '$2y$10$/Zi.1SUIZSS.TpkEY5zmReHsyxWQJX2x/fBlW1DIo9gclBJSwOMXq', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3124973066', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(53730117, 'Tatiana', 'Larrahondo', 'Chavarro', '1970-01-01', 'F', '1970-01-01', 5700053, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Medellín', 'Antioquia', 17382981, 'tatiana.larrahondo@sulogistics.com', '$2y$10$ZDJqY/rpl08ZKUx.Ey3QoOj.z0bAoMCM2/xWtJNAGu2swjY0FohPK', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3184174898', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(53766735, 'Carlota', 'Unzueta', 'Obando', '1970-01-01', 'F', '1970-01-01', 5700061, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 34240139, 'carlota.unzueta@sulogistics.com', '$2y$10$Al3CVPOE5IhYBozbIcMcEe.Y3Ykahwv6KcB1DUmcaCoj3qabQlyI6', 'https://static.wixstatic.com/media/1312b9_acc8a54b13a04fb280012c9c5a1ac3f4~mv2.jpg', '3155039436', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(53851476, 'María Inés', 'Gaviria', 'Obando', '1970-01-01', 'F', '1970-01-01', 5700063, 'Gerente Regional', '5700079', 'Zona 4', 'Barranquilla', 'Atlántico', 0, 'mariaines.gaviria@sulogistics.com', '$2y$10$Vfgl3SrAry.3P/J7rDA5QuCuni7F/l7hshbjIoZZkTHKDdZhoSxbG', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3148015286', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(53878343, 'María Claudia', 'Otálora', 'Mendieta', '1970-01-01', 'F', '1970-01-01', 5700069, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Bello', 'Antioquia', 35470963, 'mariaclaudia.otalora@sulogistics.com', '$2y$10$Q6cIInfQPZfj/ELEHERQT.1hHfwg2ynWRZUGp6IRAzknPO9ggFReS', 'https://static.wixstatic.com/media/1312b9_f6d1aca5338747818c7e702b0d8e7d8d~mv2.jpg', '3207782797', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(53885201, 'Ana Lucía', 'Londoño', 'Argote', '1970-01-01', 'F', '1970-01-01', 5700039, 'Subgerente Regional', '5700063', 'Zona 4', 'Barranquilla', 'Atlántico', 0, 'analucia.londoño@sulogistics.com', '$2y$10$yPuZSq7u.L1UJeNKXUPgpOTmkDkrfjdYngz9fF4PQaT0UKMW8S3lC', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3208317826', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(53933885, 'Rosalía', 'Viscaya', 'Ortiz', '1970-01-01', 'F', '1970-01-01', 5700049, 'Ejecutivo Comercial', '5700015', 'Zona 4', 'Cartagena', 'Bolívar', 20503022, 'rosalia.viscaya@sulogistics.com', '$2y$10$ytYB1FTpHFSKCmY228Kg9e6LPn8CNcE.L4tgwQC4ZEk75zZejEYFW', 'https://static.wixstatic.com/media/1312b9_254d192aa0824e3a96ea7f325020f6ba~mv2.jpg', '3113573175', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(53983501, 'Paula', 'Atehortúa', 'Mendoza ', '1970-01-01', 'F', '1970-01-01', 5700029, 'Ejecutivo Comercial', '5700068', 'Zona 3', 'Tumaco', 'Nariño', 35596603, 'paula.atehortua@sulogistics.com', '$2y$10$gEITzWNHzu30vgb87fvQLu6CY.xpUi9ngC3Vma2oPVaPUR/MLZLKS', 'https://static.wixstatic.com/media/1312b9_73df5fd20698467f930cd9414e705351~mv2.jpg', '3176777569', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(94143578, 'Nicolás', 'Espitia', 'Argote', '1970-01-01', 'M', '1970-01-01', 5700057, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Barranquilla', 'Atlántico', 30826130, 'nicolas.espitia@sulogistics.com', '$2y$10$71EycvwsvwNofAPWsGOgUeOdkOrvE3WRayUPMrwsS7j/090Bx0jb2', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3142634211', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(94144649, 'Luis Felipe', 'Úzuga', 'Azcárate', '1970-01-01', 'M', '1970-01-01', 5700022, 'Ejecutivo Comercial', '5700038', 'Zona 1', 'Cúcuta', 'Norte de Santander', 32641318, 'luisfelipe.uzuga@sulogistics.com', '$2y$10$NMXDzAcKZPSedcjleLJ8HuEK4U23nsV7Mc0.1fT6pIc5YruRBkj8q', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3163178743', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(94145893, 'Juan Roberto', 'Ulloa', 'Lezama', '1970-01-01', 'M', '1970-01-01', 5700032, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Medellín', 'Antioquia', 35183567, 'juanroberto.ulloa@sulogistics.com', '$2y$10$vUsmFjrI8203Xy808bov9.akRvulo2wgzcB3cTZ1xOTYVy5CXJaq.', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3144424698', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(94230243, 'Benjamín', 'Echandía', 'Echeverría', '1970-01-01', 'M', '1970-01-01', 5700062, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Villavicencio', 'Meta', 31175144, 'benjamin.echandia@sulogistics.com', '$2y$10$MiqH4imCEsA6BGaW8cBL0ebRtLOhjzRiu0dOgumvvGThwra0EmFTa', 'https://static.wixstatic.com/media/1312b9_25ddd3d95fac45ab863d1b57b717dc58~mv2.jpg', '3136141040', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(94231700, 'Félix', 'Arrieta', 'Alzate', '1970-01-01', 'M', '1970-01-01', 5700074, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Villavicencio', 'Meta', 15883848, 'felix.arrieta@sulogistics.com', '$2y$10$v9yGwdXFsBHGfw1.6mctZOZ8.aNw98MPIe2s0yeKYihhYjqvwA.Rm', 'https://static.wixstatic.com/media/1312b9_25ddd3d95fac45ab863d1b57b717dc58~mv2.jpg', '3116555749', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(94246373, 'Gregorio', 'Echeverría', 'Ezguerra', '1970-01-01', 'M', '1970-01-01', 5700002, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Apartadó', 'Antioquia', 31826604, 'gregorio.echeverria@sulogistics.com', '$2y$10$kaXkq3bTImTM5GvFdZ2NkOTd16UXwusCsOlba9HDQLdc2NRiiTunC', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3206628755', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(94250200, 'Alberto', 'Zea', 'Londoño', '1970-01-01', 'M', '1970-01-01', 5700052, 'Ejecutivo Comercial', '5700045', 'Zona 2', 'Ibagué', 'Tolima', 26224343, 'alberto.zea@sulogistics.com', '$2y$10$YLWzVzQ5Q93sk6HIuxAhpOAoEfsxcL0o7ufdNz.ywVHyO/Cf3aZHy', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3211941524', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(94253448, 'José María', 'Galarza', 'Arrieta', '1970-01-01', 'M', '1970-01-01', 5700082, 'Ejecutivo Comercial', '5700015', 'Zona 4', 'Montería', 'Córdoba', 27490626, 'josemaria.galarza@sulogistics.com', '$2y$10$1TPApmvFxzEbws6X6L8Hx.eZaf.Z9eNzd6LrFShgk7ba.CEfW54Qi', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3149309669', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(94259424, 'José', 'Ulloa', 'Otálora', '1970-01-01', 'M', '1970-01-01', 5700075, 'Ejecutivo Comercial', '5700060', 'Zona 2', 'Manizales', 'Caldas', 33817472, 'jose.ulloa@sulogistics.com', '$2y$10$94Ow3FdUVOmLy1L8lKEwEuSSM5wWGKYZp0QakhyYzySNSnum6unri', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3114545090', '2019-03-25 23:22:41', '2019-03-25 23:22:41'),
(94278700, 'Elías', 'Unzueta', 'Maya', '1970-01-01', 'M', '1970-01-01', 5700001, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 46756057, 'elias.unzueta@sulogistics.com', '$2y$10$oKQcN48yLYUMxqJKap7FJODwfCX8BIz/FeATk33rw7uSvL2Zvays2', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3132229991', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(94292699, 'Álvaro', 'Urdaneta', 'Daza', '1970-01-01', 'M', '1970-01-01', 5700065, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Santa Marta', 'Magdalena', 48248869, 'alvaro.urdaneta@sulogistics.com', '$2y$10$1GM9fN.vuDbbTVvq6Cau9.xMskSStNh5FOOm/g/2fMkXQxzyKUjHe', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3113336499', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(94309423, 'Eduardo', 'Echandía', 'Anzola', '1970-01-01', 'M', '1970-01-01', 5700034, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Cali', 'Valle del Cauca', 44537276, 'eduardo.echandia@sulogistics.com', '$2y$10$qTYDb.gfPijjh92X1b.7lOu9QXzy3XHw0rgyaGLmpT6zB.R8s7T46', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3162878486', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(94331430, 'Hernando', 'Cortázar', 'Ezguerra', '1970-01-01', 'M', '1970-01-01', 5700031, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Envigado', 'Antioquia', 30459554, 'hernandortazar@sulogistics.com', '$2y$10$/HJKSZfLfylGfQbp6piYF.kHSclvZ6woZoYyaTxJuU2iaabio0HJC', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3161552213', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(94335177, 'Eduardo', 'Arteta', 'Ulloa', '1970-01-01', 'M', '1970-01-01', 5700070, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 42123182, 'eduardo.arteta@sulogistics.com', '$2y$10$q1IUvjdt2YfLEl8DsCPTvOLjnsmMe6uNpHUOQavtihcLq8ktQaYYy', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3206351393', '2019-03-25 23:22:37', '2019-03-25 23:22:37'),
(94346290, 'Fabián', 'Cortázar', 'Loaiza', '1970-01-01', 'M', '1970-01-01', 5700028, 'Gerente Regional', '5700079', 'Zona 2', 'Medellín', 'Antioquia', 0, 'fabianrtazar@sulogistics.com', '$2y$10$aG9CI1UrMGpQ8dmUeCfrceqjyzLLlV1tl0dCx.ImfS2OXkWxvlPRm', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3205575045', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(94411530, 'Luis Alfonso', 'Chavarríaga', 'Upegui', '1970-01-01', 'M', '1970-01-01', 5700023, 'Ejecutivo Comercial', '5700068', 'Zona 3', 'Pasto', 'Nariño', 48390316, 'luisalfonso.chavarriaga@sulogistics.com', '$2y$10$RmhWzhN9GlJ.oPoyYuxPs.wr7/eLT/ShcigcXoEhubF8prvsr4NwW', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3153367063', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(94419554, 'Antonio', 'Chavarríaga', 'Erazo', '1970-01-01', 'M', '1970-01-01', 5700033, 'Subgerente Regional', '5700058', 'Zona 3', 'Cali', 'Valle del Cauca', 0, 'antonio.chavarriaga@sulogistics.com', '$2y$10$IhO1wG.QacT9L2SJvjmFNusDQLOkcCv/7clLbkLhBboAaTPK3Ks12', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3217597748', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(94424204, 'Rubén', 'Esguerra', 'Molano', '1970-01-01', 'M', '1970-01-01', 5700018, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 36987152, 'ruben.esguerra@sulogistics.com', '$2y$10$hlsnrE83SM6.NAh2WEznn.u/jtRcboMJu0yytBm/OhyFZbJiKEpFy', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3191564512', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(94429224, 'Carlos', 'Zea', 'Ochoa', '1970-01-01', 'M', '1970-01-01', 5700073, 'Ejecutivo Comercial', '5700038', 'Zona 1', 'Bucaramanga', 'Santander', 43908613, 'carlos.zea@sulogistics.com', '$2y$10$QAZfakw2AbnA48HSJd3Gw.eGMQ0OTHG8e0Xl7YDAJYRuGUC2ozrt.', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3157889472', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(94464559, 'Damián', 'Daza', 'Arizabaleta', '1970-01-01', 'M', '1970-01-01', 5700072, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Yopal', 'Casanare', 25953890, 'damian.daza@sulogistics.com', '$2y$10$w0d1m9uEL/sQ.xqIogme.O1wRcafUEfDONY3WsBwQQ2e2coJ0Zom.', 'https://static.wixstatic.com/media/1312b9_25ddd3d95fac45ab863d1b57b717dc58~mv2.jpg', '3203374473', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(94465311, 'José Miguel', 'Arteaga', 'Olózaga', '1970-01-01', 'M', '1970-01-01', 5700007, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Barranquilla', 'Atlántico', 40184669, 'josemiguel.arteaga@sulogistics.com', '$2y$10$67yN4fREysyzHjKkiok68.H6bKEodD5ozqKhDg.D8W.a9dMeaksyW', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3137056859', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(94536366, 'Esteban', 'Mendiola', 'Cortázar', '1970-01-01', 'M', '1970-01-01', 5700037, 'Ejecutivo Comercial', '5700068', 'Zona 3', 'Tumaco', 'Nariño', 44987651, 'esteban.mendiola@sulogistics.com', '$2y$10$FUavcq9dbu1b8JkZPqC2.O5pNww6rIy/bVJN4AN9114jd8k.gx.yy', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3181614155', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(94542886, 'Juan Fernando', 'Arteaga', 'Espitia', '1970-01-01', 'M', '1970-01-01', 5700036, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Tuluá', 'Valle del Cauca', 45223635, 'juanfernando.arteaga@sulogistics.com', '$2y$10$xXPXHw0C4GhyIStwyd1E.Ovs6.kv0mtcD1FwvdyuD0viz65bzG4ZS', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3168879789', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(94556601, 'Simón', 'Zea', 'Olaya', '1970-01-01', 'M', '1970-01-01', 5700050, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 24952618, 'simon.zea@sulogistics.com', '$2y$10$DP/gjJxW/ompcstv0F.jyuZAQiQerbB9YBfWWltmZdKapEd5tU2NO', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3102275817', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(94569315, 'Gonzalo', 'Obando', 'Zambrano', '1970-01-01', 'M', '1970-01-01', 5700044, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Barranquilla', 'Atlántico', 39075926, 'gonzalo.obando@sulogistics.com', '$2y$10$x8NF/6JfvoXKwCRK1BbHqOeUtzp0PQZ7kmeIAoWr43/2.Spmdxtg.', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3161573879', '2019-03-25 23:22:44', '2019-03-25 23:22:44'),
(94570156, 'Luis Ernesto', 'Saldarriaga', 'Solórzano', '1970-01-01', 'M', '1970-01-01', 5700015, 'Subgerente Regional', '5700063', 'Zona 4', 'Cartagena', 'Bolívar', 0, 'luisernesto.saldarriaga@sulogistics.com', '$2y$10$g7FeQIw51y6WtO0HxFdjFea4.pKGya1sMzZArLsQ/k6GjXAT1jUtm', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3119073358', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(94615579, 'Luis Enrique', 'Lara', 'Olaya', '1970-01-01', 'M', '1970-01-01', 5700067, 'Ejecutivo Comercial', '5700015', 'Zona 4', 'Sincelejo', 'Sucre', 48491418, 'luisenrique.lara@sulogistics.com', '$2y$10$U6zwVA/G9OGE4kPSPGXID.86jF/kcUP2cYYU65qf6kOTC.wuTqoKW', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3201417130', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(94684368, 'Félix', 'Dorronsoro', 'Londoño', '1970-01-01', 'M', '1970-01-01', 5700041, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Soacha', 'Cundinamarca', 24595413, 'felix.dorronsoro@sulogistics.com', '$2y$10$0ztjOUJdYWx0BonzoJ/lReZ.9ZCQVei4oqeymwkZMX7OVRlIxds2u', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3186248373', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(94728539, 'Joaquín', 'Sarria', 'Otoya', '1970-01-01', 'M', '1970-01-01', 5700009, 'Gerente Regional', '5700079', 'Zona 1', 'Bogotá', 'Cundinamarca', 0, 'joaquin.sarria@sulogistics.com', '$2y$10$bc3H9ROdfp6nylk4.6RwCedwm03Bckp63pQLNnJWfnA5CypQC5/ay', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3107366047', '2019-03-25 23:22:37', '2019-03-25 23:22:37'),
(94740245, 'Elías', 'Úzuga', 'Gardeazábal', '1970-01-01', 'M', '1970-01-01', 5700013, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 44492034, 'elias.uzuga@sulogistics.com', '$2y$10$JeIMtCfIb/YovTXzi8mkVeana9Zv/CLh7.1HlFWEMGQqGitM29Qla', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3175181777', '2019-03-25 23:22:39', '2019-03-25 23:22:39'),
(94766653, 'Ricardo', 'Zambrano', 'Chavarríaga', '1970-01-01', 'M', '1970-01-01', 5700025, 'Ejecutivo Comercial', '5700068', 'Zona 3', 'Tumaco', 'Nariño', 41692365, 'ricardo.zambrano@sulogistics.com', '$2y$10$uk8qVTycJ5K7tUw12kFUd.3OFpW1mzofziT/hoOi/AJX2BVYntFUS', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3199422556', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(94779921, 'Agustín', 'Echaverría', 'Londoño', '1970-01-01', 'M', '1970-01-01', 5700006, 'Ejecutivo Comercial', '5700008', 'Zona 2', 'Apartadó', 'Antioquia', 25641890, 'agustin.echaverria@sulogistics.com', '$2y$10$1DMerpO/pBE/0ufJOPJaeO/H57H9NEog3G37dYmdACH77j2Bqxmai', 'https://static.wixstatic.com/media/1312b9_32220e1436f14afbbc5781da6905b22d~mv2.jpg', '3175733850', '2019-03-25 23:22:40', '2019-03-25 23:22:40'),
(94786635, 'Jorge Iván', 'Garavito', 'Sarasti', '1970-01-01', 'M', '1970-01-01', 5700042, 'Ejecutivo Comercial', '5700046', 'Zona 1', 'Bogotá', 'Cundinamarca', 40204590, 'jorgeivan.garavito@sulogistics.com', '$2y$10$dCWp6/37V4OONYEcb4C/cukwMljy1IsLeNmikTyPiv0OuguRQimFi', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3194835343', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(94827364, 'Gregorio', 'Mazuera', 'Gardeazábal', '1970-01-01', 'M', '1970-01-01', 5700012, 'Ejecutivo Comercial', '5700033', 'Zona 3', 'Palmira', 'Valle del Cauca', 49952888, 'gregorio.mazuera@sulogistics.com', '$2y$10$SA4u3Twu2wK9O12PvFqRQutrXH0lBUWn8b1xvbGjpwIqGwTOaBGXK', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3109322663', '2019-03-25 23:22:43', '2019-03-25 23:22:43'),
(94862202, 'Carlos', 'Marulanda', 'Solórzano', '1970-01-01', 'M', '1970-01-01', 5700043, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 27901150, 'carlos.marulanda@sulogistics.com', '$2y$10$4egdcgGp326oSSRtMeO57uor3M/j3hwr03MW3bA404FvfGn1RyZGO', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3148506612', '2019-03-25 23:22:38', '2019-03-25 23:22:38'),
(94873179, 'Sebastián', 'Uribarri', 'Echandía', '1970-01-01', 'M', '1970-01-01', 5700079, 'Gerente Comercial', '0', 'Colombia', 'Bogotá', 'Cundinamarca', 0, 'sebastian.uribarri@sulogistics.com', '$2y$10$wyx45QBszGYDugs28OaGPetnafEzHi4E.6G.CKmb0uXPe3ANxqF9q', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3204768731', '2019-03-25 23:22:37', '2019-03-25 23:22:37'),
(94894754, 'Emilio', 'Ortiz', 'Otálora', '1970-01-01', 'M', '1970-01-01', 5700080, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Villavicencio', 'Meta', 32554516, 'emilio.ortiz@sulogistics.com', '$2y$10$4xg4l57jVXwxqvK.7AG3fO5k.ZY9ofUzGbNezWmUfaHAhbb.l1VO2', 'https://static.wixstatic.com/media/1312b9_25ddd3d95fac45ab863d1b57b717dc58~mv2.jpg', '3108671713', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(94908330, 'Fermín', 'Lenis', 'Ortiz', '1970-01-01', 'M', '1970-01-01', 5700064, 'Ejecutivo Comercial', '5700010', 'Zona 5', 'Yopal', 'Casanare', 22131338, 'fermin.lenis@sulogistics.com', '$2y$10$disFpRyoyc8Gfoob9xghLeogECIo7ACqJcolHxf7aol24P4Wl/f6q', 'https://static.wixstatic.com/media/1312b9_25ddd3d95fac45ab863d1b57b717dc58~mv2.jpg', '3154801583', '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(94916844, 'Miguel Antonio', 'Uzurriaga', 'Sarria', '1970-01-01', 'M', '1970-01-01', 5700058, 'Gerente Regional', '5700079', 'Zona 3', 'Cali', 'Valle del Cauca', 0, 'miguelantonio.uzurriaga@sulogistics.com', '$2y$10$dVi2F7rt2UHJEeWwQIo33eDH0Somtx3xN6rY/cpybgJDNbs5skuxq', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3139321190', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(94939827, 'Carlos Alberto', 'Upegui', 'Otálora', '1970-01-01', 'M', '1970-01-01', 5700071, 'Ejecutivo Comercial', '5700068', 'Zona 3', 'Pasto', 'Nariño', 25935804, 'carlosalberto.upegui@sulogistics.com', '$2y$10$OaKAx64TimVVx3uG0uuV0elEzqHdd4T0RFJn7nLixiWiB/IFGOYVG', 'https://static.wixstatic.com/media/1312b9_653aa11a4fd840be806ddfbeee7f66cd~mv2.jpg', '3146953932', '2019-03-25 23:22:42', '2019-03-25 23:22:42'),
(94946702, 'Simón', 'Samudio', 'Arana', '1970-01-01', 'M', '1970-01-01', 5700014, 'Ejecutivo Comercial', '5700039', 'Zona 4', 'Riohacha', 'La Guajira', 27620959, 'simon.samudio@sulogistics.com', '$2y$10$WfBlAHpIDyuf.Ok9Dq5BcutoiYaoYj8enprxBn6ND7N96slFjY/2C', 'https://static.wixstatic.com/media/1312b9_666fdf8619df4e179adeabac79ba68e1~mv2.jpg', '3141122252', '2019-03-25 23:22:45', '2019-03-25 23:22:45'),
(94974613, 'Juan Fernando', 'Oquendo', 'Uzurriaga', '1970-01-01', 'M', '1970-01-01', 5700040, 'Ejecutivo Comercial', '5700056', 'Zona 1', 'Bogotá', 'Cundinamarca', 33811319, 'juanfernando.oquendo@sulogistics.com', '$2y$10$cEkrDvF9SjH/3tSZeGa4t.1rGpsLVVKaVbGm0t0kHTbUzYUZ7ESq2', 'https://static.wixstatic.com/media/1312b9_476b35b48308400289c392a8633f638f~mv2.jpg', '3121709920', '2019-03-25 23:22:38', '2019-03-25 23:22:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_24_150512_create_logistics_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sebastián', 'sebastian.uribarri@sulogistics.com', NULL, '$2y$10$SVwH9Vz93FIceNZ0WdP11eG7xWE.9qwcTOgnbF3FkAVzcXMK9R9ya', NULL, '2019-03-25 23:22:46', '2019-03-25 23:22:46'),
(2, 'Joaquín', 'joaquin.sarria@sulogistics.com', NULL, '$2y$10$veQK2PWQNx1R47nw21qs3.i9dlUY8/JGR1xn63zmY2Gl9qelo4evW', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(3, 'María Victoria', 'mariavictoria.arana@sulogistics.com', NULL, '$2y$10$8mt.7QdoFdvHMpeSaPNVWekBp4SmgCeO4m/3WSR1gmutlhMYyH5g.', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(4, 'María Claudia', 'mariaclaudia.arizmendi@sulogistics.com', NULL, '$2y$10$SFm24hy/hG9a1dPwrI6N0e6f0m7zUBdrXSw5fGHrckUhV4X9rfbjK', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(5, 'Eva', 'eva.arrieta@sulogistics.com', NULL, '$2y$10$GuXyKE6kMYlQQI.dGxkT9.m00tCun5JGCsswL1uJhqIQPnHN0m6mO', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(6, 'Eduardo', 'eduardo.arteta@sulogistics.com', NULL, '$2y$10$nwSLEpGphSVr7XzA4EKg3.ZII6SV2j6wgs9uavP4XIdBKZdVHXN8u', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(7, 'Dolores', 'dolores.chavarro@sulogistics.com', NULL, '$2y$10$Uu86nP0m9sfck8T7btb.Uu0NamSdFtJ6K0AkoYkLv2z3nHBMal8KC', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(8, 'María Elisa', 'mariaelisa.daza@sulogistics.com', NULL, '$2y$10$LCXSmdnMJeVjdtEvCbcXEOppK0gInnAzUtDYQYEJZh8twIhW4UDCe', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(9, 'Fátima', 'fatima.dorronsoro@sulogistics.com', NULL, '$2y$10$UPueYZwA1rum5VtI8BfBtO1tcJWbXYfWdEc0h2Hy.fq9QT.NyhcC2', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(10, 'Beatriz', 'beatriz.echaverria@sulogistics.com', NULL, '$2y$10$lAczfizlhpsuNLHOzUI/y.Q7Qj37bezZF1nRdhRNYLSJVjRw3oraW', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(11, 'Rubén', 'ruben.esguerra@sulogistics.com', NULL, '$2y$10$itavaPvWBXuT8VTTHxbGCuGg7xlmP1gv7qRpbLHn6/m8k5sE3t6EK', NULL, '2019-03-25 23:22:47', '2019-03-25 23:22:47'),
(12, 'Jorge Iván', 'jorgeivan.garavito@sulogistics.com', NULL, '$2y$10$apCq4s/o69XXhYXjqkBopezFvXg4uy8rBwcsBdFvhY/BhOr9ogMjy', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(13, 'Mariana', 'mariana.loaiza@sulogistics.com', NULL, '$2y$10$Az98Tz84hRtL6GqeI4uSzOulmQ.ckzLI./I6IXOlO72JKC.SxMK.W', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(14, 'Carlos', 'carlos.marulanda@sulogistics.com', NULL, '$2y$10$6mBclwQbRCOMtLF.Pah0muU8ItNXOthN6yihPJQ56RHqE4mpWIQza', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(15, 'Irene', 'irene.mazuera@sulogistics.com', NULL, '$2y$10$vVDjMOn8Jjymm78S5Hzr3ecceWAT1GnoHwUflRWJEdin11ZJRCbFq', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(16, 'Juan Fernando', 'juanfernando.oquendo@sulogistics.com', NULL, '$2y$10$9NDXId72mdTZvkFDLEGi9ukSYrisxGAO2uSEG7Jgfk/Ly5NgfKRgi', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(17, 'Elías', 'elias.unzueta@sulogistics.com', NULL, '$2y$10$WLFgs378DX6Mb9fvaIDVVO/0OiDw/YynFSec2zHsg/kILyYb8/HPa', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(18, 'Carlota', 'carlota.unzueta@sulogistics.com', NULL, '$2y$10$5USLzrs3X.ysrmsCMfXAx.JxmqNHiWpoEYJ9rACjfLm4JlP76x0Re', NULL, '2019-03-25 23:22:48', '2019-03-25 23:22:48'),
(19, 'Elías', 'elias.uzuga@sulogistics.com', NULL, '$2y$10$XfdiA.hhZN58VJSRKxLV9.FldJLUC7HgEOUpGnkNjF3wHBNmGnF7W', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(20, 'Simón', 'simon.zea@sulogistics.com', NULL, '$2y$10$A63fYgj9KIF1ZNJmvL9G.eiXvFlWGkNC.zfG50M6OHPeVnTZQSbHS', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(21, 'Félix', 'felix.dorronsoro@sulogistics.com', NULL, '$2y$10$.60sNH3VT4ci65aJRGL/I.qPLIicyIywe7Pw90WHsZ.a2FlCl8sfm', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(22, 'Sara', 'sara.landazuri@sulogistics.com', NULL, '$2y$10$C4JD3vdq25fGyewRgav.7Oh/h4GcNhV.JI52134ZsVJ1JepqxH3Q.', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(23, 'María del Pilar', 'mariadelpilar.jauregui@sulogistics.com', NULL, '$2y$10$MOJFGRCrUl76aZzgfoKRn.EQA4hlywJKgsyc0OibbC9t4DC8snxNW', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(24, 'Luis Felipe', 'luisfelipe.uzuga@sulogistics.com', NULL, '$2y$10$p52pkVSZ4TGN/qiGL68gAOL7gi9dJdvYWnVRR9yVLBajm9DnfNtWC', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(25, 'Carlos', 'carlos.zea@sulogistics.com', NULL, '$2y$10$yTPciRbheRF0DutI3inH3.1u4e5TUi0sZO1zD6SsX1v0VlvULYm/6', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(26, 'María Victoria', 'mariavictoria.atehortua@sulogistics.com', NULL, '$2y$10$E56aHhr4wmUASlI0kDm9xe89uRj5OCUOcR6ZjFn0NbVlVc4V6dGpS', NULL, '2019-03-25 23:22:49', '2019-03-25 23:22:49'),
(27, 'Fabián', 'fabianrtazar@sulogistics.com', NULL, '$2y$10$nF.nA6YnwQ/TV/Sh33ZZnuhqVCr49pg2Tu83W6Ys8orikRCF53Rcu', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(28, 'Agustín', 'agustin.echaverria@sulogistics.com', NULL, '$2y$10$1IneHC.7tcEGp9W78P.V4OlHkHMrLdghQEDqYgej84be/eoij.1Bq', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(29, 'Gregorio', 'gregorio.echeverria@sulogistics.com', NULL, '$2y$10$QH7DmlxtW5.VO5t0909qe.9/5wWMYEuTCDSUoZKvEFbFtG58ZD9ZG', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(30, 'María Claudia', 'mariaclaudia.otalora@sulogistics.com', NULL, '$2y$10$dVELDozVbY6fjOmaA/8Eqe5q.fp5YSJPWBYE1uWp8a3mVI3ZEEUz.', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(31, 'Hernando', 'hernandortazar@sulogistics.com', NULL, '$2y$10$AsgIkx5/ACS2nNqeOh6wouLJe67oIKl8vIiabmxDVBObJQ3sGet3i', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(32, 'Tatiana', 'tatiana.echavarria@sulogistics.com', NULL, '$2y$10$F7ga9rPvXiuBV9OhCSu6.uUygyaSoA8dVia5FgUsp.DKUpV8vyPEi', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(33, 'Tatiana', 'tatiana.larrahondo@sulogistics.com', NULL, '$2y$10$Nb5jz9h0YqOwttRlHdAtROr5fWlS3Oytjy3i3FfV4jgBln1eK88uG', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(34, 'Cecilia', 'cecilia.oquendo@sulogistics.com', NULL, '$2y$10$kAzAGkVRpvdHPpwXnijyDetPUhWRijdCKsDZf0HF874.75gSyoflG', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(35, 'Juan Roberto', 'juanroberto.ulloa@sulogistics.com', NULL, '$2y$10$ZA/RECxRmnLZGoCMnelnZ.Awk2fYY/dmZg6Lt4nMTuGEdgznxpmoO', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(36, 'Celia', 'celia.alzate@sulogistics.com', NULL, '$2y$10$JpKibhAodDy6ml9jcqkaTeYRfl2xiEYhMx8S91juIDkjtNRVW0nTC', NULL, '2019-03-25 23:22:50', '2019-03-25 23:22:50'),
(37, 'José', 'jose.ulloa@sulogistics.com', NULL, '$2y$10$hYoaziBsA6NzNjaZ9/ktR.G6/BCulpEbZfr/eGSWctqaG8j43JcRa', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(38, 'Cecilia', 'cecilia.umaña@sulogistics.com', NULL, '$2y$10$l8v2nqTHML8fGrtCzp4aiu6t4zwNXET6XhzSeLiXu2joxx.93OjF.', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(39, 'María Claudia', 'mariaclaudia.uribe@sulogistics.com', NULL, '$2y$10$u2VZ0cQugFm75kAQzFa9juvA10PiqoKn.xHiKw7UW2pPTx07YMO/O', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(40, 'Valeria', 'valeria.anzola@sulogistics.com', NULL, '$2y$10$DFLQIefiICvVo9gvxqrOEeYFpwwMUUjUtU2exEJ6EO8i0NRdeQ17q', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(41, 'Alberto', 'alberto.zea@sulogistics.com', NULL, '$2y$10$NktxhnjITrB4c2aVefz.UO3TstGvEx8DXDc0Dox6gYNXmZBMZhSgm', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(42, 'Magdalena', 'magdalena.zuleta@sulogistics.com', NULL, '$2y$10$HNTdcfWASrRYG6ZTYsKwCeS9ayAWlWwvvZJsxfsZenW4/ZB0deZ9y', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(43, 'Miguel Antonio', 'miguelantonio.uzurriaga@sulogistics.com', NULL, '$2y$10$qsEu8FntWANNU1pt1KBdhey7.S0m3KD9Eh0BoxW82AMp0tjDuezw2', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(44, 'María Angélica', 'mariaangelica.argote@sulogistics.com', NULL, '$2y$10$jro1pRBPVb29NeI0ZCEoBOlE19hpYBfga33YmRHK5.8hWF98OxGr6', NULL, '2019-03-25 23:22:51', '2019-03-25 23:22:51'),
(45, 'Luis Alfonso', 'luisalfonso.chavarriaga@sulogistics.com', NULL, '$2y$10$NBxnu9TKgYEs67hfq2Rn1u8kbQE71..cMYplzXKgUlU3neBDiVhEG', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(46, 'Claudia', 'claudia.esguerra@sulogistics.com', NULL, '$2y$10$jozgVxHl.wDhAt1x6hISw.IjGxXhb7/v9NH3ZaoIfgSE8nshI2u5m', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(47, 'Carlos Alberto', 'carlosalberto.upegui@sulogistics.com', NULL, '$2y$10$H4kYrhnXC7Sxn0EvMBWKsu1tD7LmuRwPBH2nDIIRCRZaYCtg63KIu', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(48, 'Paula', 'paula.atehortua@sulogistics.com', NULL, '$2y$10$X2nz0dkM7fgDeY07q7hFjOPFQQWTnk41vYwdRGci8ZDtqBO6RCISC', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(49, 'Esteban', 'esteban.mendiola@sulogistics.com', NULL, '$2y$10$/ZsC3NdVa.Nn5Tbswp2AsO8AuKfjqUEvx6o/.6q3199AFVr6QpX3y', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(50, 'Ricardo', 'ricardo.zambrano@sulogistics.com', NULL, '$2y$10$UOXS3ouB22EDn1dznBid.e2a7.prthsSUrqGAJha.Vhm4c1ETGkLq', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(51, 'Antonio', 'antonio.chavarriaga@sulogistics.com', NULL, '$2y$10$vdIUNXR/LSY51z2zoeNVWuz/.f1Uph73RBKKtUNEOysiVmdtx5A42', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(52, 'Eduardo', 'eduardo.echandia@sulogistics.com', NULL, '$2y$10$a1A9XS9.NZ67mAAIUqIZt.j34Ry9VMXHdMDv3/Y50k1twJlNcKKZG', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(53, 'Virginia María', 'virginiamaria.iragorri@sulogistics.com', NULL, '$2y$10$u6M22FKpV8PCM8H7qgCWhe/ET4344RE7VEa2.jU15XlBmVWJ7aKxq', NULL, '2019-03-25 23:22:52', '2019-03-25 23:22:52'),
(54, 'María Cecilia', 'mariacecilia.maya@sulogistics.com', NULL, '$2y$10$rD0ncAsvn1VBEjbB5NZyVO8raIm7/oLRJpTrwHANpNiPmhvtMuW1y', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(55, 'Paloma', 'paloma.artistizabal@sulogistics.com', NULL, '$2y$10$rpAZduh9X1IVUy1VDB0oSuBCQ28NxRrjquKGXzY2WRGGF72iACx3y', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(56, 'Gregorio', 'gregorio.mazuera@sulogistics.com', NULL, '$2y$10$1yxADBWaIkA4kXoGeTyPvuGHUiTUnZseqKhE074IOJwlJj9IIOuA2', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(57, 'Marcela', 'marcela.mendoza@sulogistics.com', NULL, '$2y$10$ui.NVOjADhqimWn16rhksulhGArrt4FQXTFT.8O4xhmhT7XrshKnW', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(58, 'Juan Fernando', 'juanfernando.arteaga@sulogistics.com', NULL, '$2y$10$NNNAOYt8oOoBIGhTlcYTmu54jaiZXkNyV3Ux/sh.Qptaa55smkp5y', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(59, 'María Inés', 'mariaines.gaviria@sulogistics.com', NULL, '$2y$10$CFW8JQ28u3UOOGMp3A1oUuckMcLA.v7kdG9EmhUaiEB5dEIk8MStS', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(60, 'Ana Lucía', 'analucia.londoño@sulogistics.com', NULL, '$2y$10$Bntqza.xqPXNnpF2SgwCZOYg3H4XQ7s5CckXbA15HUBrZ2vUIqi9K', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(61, 'Gonzalo', 'gonzalo.obando@sulogistics.com', NULL, '$2y$10$HEuvPg6pF4eZ/PzNRi.1keLKapjPidLOmWQmk5HgYLFaO16FWhqJO', NULL, '2019-03-25 23:22:53', '2019-03-25 23:22:53'),
(62, 'José Miguel', 'josemiguel.arteaga@sulogistics.com', NULL, '$2y$10$MepZQvNDGxhetOO6v1YhweLQZprjnqHD/BSjBLHV.IVTNWPVdQhmm', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(63, 'Nicolás', 'nicolas.espitia@sulogistics.com', NULL, '$2y$10$DNnlXXIBLdrTxNopISjuE.Gx0Xm9608bN8FFF590V8SFVaN196zn.', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(64, 'María del Socorro', 'mariadelsocorro.iragorri@sulogistics.com', NULL, '$2y$10$5qRaRpuH3zz5PFNcGuD1Uu86pLUdhe2l4/R0.VAeiUaWSJPv3QfnW', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(65, 'Magdalena', 'magdalena.montoya@sulogistics.com', NULL, '$2y$10$kQEDEqx3jDP3wY4pp/hPVe3oqBes6oNjSAvNWBEay3kvo3sei4BkO', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(66, 'Álvaro', 'alvaro.urdaneta@sulogistics.com', NULL, '$2y$10$2xbxr1vmMIWjFwpVbTulEu80Hcqj476GzCY6gROGItDai7Me8t6bi', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(67, 'Beatriz', 'beatriz.jauregui@sulogistics.com', NULL, '$2y$10$xnYeinafieXWSMAHfNEzyutoIJ4qxcbgX9mDJKGdqJvAYuMNPYsFe', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(68, 'Simón', 'simon.samudio@sulogistics.com', NULL, '$2y$10$NOb4vEhUjZRPJbZm.KTbhu/o8ya8ByQfbKSoIUzCEp4CAz.LEVRgm', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(69, 'Luis Ernesto', 'luisernesto.saldarriaga@sulogistics.com', NULL, '$2y$10$wrdm0j2UmneHneOTHKVMi.FEot2K./oJ.on9E2Rfve3m9uIWczcWq', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(70, 'Rosalía', 'rosalia.viscaya@sulogistics.com', NULL, '$2y$10$z9H3J4TjucnKRuyxuOKljet6FEMa49jc6AmluRbgdQgtn/5tlaDFC', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(71, 'Ana Lucía', 'analucia.zuleta@sulogistics.com', NULL, '$2y$10$4VmaZMYiLpO/1qq3DqJ3aOx510DicubTXrLX/NJYuT.nr3KNUMuPS', NULL, '2019-03-25 23:22:54', '2019-03-25 23:22:54'),
(72, 'José María', 'josemaria.galarza@sulogistics.com', NULL, '$2y$10$dxklWGNlVP1sPQFyp.ZrQe3PAoct/9s3IDik6UgIJB3T0ON9wQta.', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(73, 'Luis Enrique', 'luisenrique.lara@sulogistics.com', NULL, '$2y$10$b.Acc1dbJi8PtkNYzDnhleEZ8.n5YwotuZEjdZRhEtJFyAbikU/xi', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(74, 'María Jimena', 'mariajimena.uzuga@sulogistics.com', NULL, '$2y$10$lEw1MO1zbT5cZpbuGJ5yU.GwmIfk4GwS.GuU0vLaPJlLD80mdA1kO', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(75, 'Rebeca', 'rebeca.esguerra@sulogistics.com', NULL, '$2y$10$qRy1P39CnH9FdCbouL6w0u1NWBelLJVodcmHcKFUTXw9.2sY6aEnK', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(76, 'Damián', 'damian.daza@sulogistics.com', NULL, '$2y$10$VJJDlteIERK1KSSUvGSjkeESeAtZA7p21zseR6.Ul6h9.ISyQOTt.', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(77, 'Fermín', 'fermin.lenis@sulogistics.com', NULL, '$2y$10$UTlsGo53FOFgTVjVZwDqZeZb9u2SMCXgRElf5zBzpIycagKHSailu', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(78, 'Félix', 'felix.arrieta@sulogistics.com', NULL, '$2y$10$Mk6yB.wHxSOt8UJ4u6z6JeSO/z1Kbg77whKrLfD.qoPFY43i8cYvG', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(79, 'Benjamín', 'benjamin.echandia@sulogistics.com', NULL, '$2y$10$DInG1kenjYcwxcCTzuiD6ePu8drXNX7bfw8KQRcFS70J6e1KEeay6', NULL, '2019-03-25 23:22:55', '2019-03-25 23:22:55'),
(80, 'Emilio', 'emilio.ortiz@sulogistics.com', NULL, '$2y$10$prmPfVOujYRzg8CNR/QxnuHILXecOisa9ysN9jHH0QIVM9HNHePTa', NULL, '2019-03-25 23:22:56', '2019-03-25 23:22:56'),
(81, 'María Ángela', 'mariaangela.ortiz@sulogistics.com', NULL, '$2y$10$J8KheXwF2oHhWP3iNP7EIOKCbXJ.kenGosr169g9pBg24wFcmnJYW', NULL, '2019-03-25 23:22:56', '2019-03-25 23:22:56'),
(82, 'María Luisa', 'marialuisa.upegui@sulogistics.com', NULL, '$2y$10$fv8hm026thc5gbFv/449XeW.V4JSo0JSqQnekNzDwdNs6Tn3fqOBq', NULL, '2019-03-25 23:22:56', '2019-03-25 23:22:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logistics`
--
ALTER TABLE `logistics`
  ADD PRIMARY KEY (`cedula`),
  ADD UNIQUE KEY `logistics_email_unique` (`email`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
