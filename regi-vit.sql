-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: regivit
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividades` (
  `cod_act` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de la actividad ',
  `descripcion` varchar(45) NOT NULL COMMENT 'tipo de actividad que realizaba ',
  `FK_codExp` int(11) NOT NULL,
  PRIMARY KEY (`cod_act`),
  KEY `FK_experiencia_idx` (`FK_codExp`),
  CONSTRAINT `FK_experiencia` FOREIGN KEY (`FK_codExp`) REFERENCES `experiencia` (`cod_Exp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus` (
  `idcampus` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Numero de Identificacion del Campus ',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre del Campus ',
  PRIMARY KEY (`idcampus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencia`
--

DROP TABLE IF EXISTS `competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competencia` (
  `cod_comp` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de atributo personal ',
  `Decripcion` varchar(45) NOT NULL COMMENT 'atributos personales ',
  `id_dat_generales` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_comp`),
  KEY `fk_dat_generales_idx` (`id_dat_generales`),
  CONSTRAINT `fk_dat_generales` FOREIGN KEY (`id_dat_generales`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencia`
--

LOCK TABLES `competencia` WRITE;
/*!40000 ALTER TABLE `competencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conocimientos`
--

DROP TABLE IF EXISTS `conocimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conocimientos` (
  `id` varchar(15) NOT NULL COMMENT 'Identificacion de la persona ',
  `descripcion` varchar(50) NOT NULL COMMENT 'Descripcion de los conocimietnos de la persona ',
  `id_datosGenerales` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `datosGnerales _idx` (`id_datosGenerales`),
  CONSTRAINT `datosGnerales ` FOREIGN KEY (`id_datosGenerales`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conocimientos`
--

LOCK TABLES `conocimientos` WRITE;
/*!40000 ALTER TABLE `conocimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `conocimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_general`
--

DROP TABLE IF EXISTS `datos_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_general` (
  `id` varchar(15) NOT NULL COMMENT 'Número de Identidad de la persona.',
  `primer_nombre` varchar(15) NOT NULL COMMENT 'Primer nombre de la persona.',
  `segundo_nombre` varchar(15) DEFAULT NULL COMMENT 'Segundo nombre de la persona.',
  `primer_apellido` varchar(15) NOT NULL COMMENT 'Primer apellido de la persona',
  `segundo_apellido` varchar(15) DEFAULT NULL COMMENT 'segundo apellido de la persona',
  `apellido_casado` varchar(15) DEFAULT NULL COMMENT 'Apellido del cónyuge.',
  `Dirección_Domicilio` varchar(45) NOT NULL COMMENT 'Direccion de Domicilio de la persona',
  `correo_electronico` varchar(20) NOT NULL COMMENT 'Correo electronico de la persona ',
  `nacionalidad` varchar(15) NOT NULL COMMENT 'nacionalidad de la persona ',
  `numero_ihss` varchar(20) DEFAULT NULL COMMENT 'Numero de seguro social de la persona',
  `numero_rap` varchar(20) DEFAULT NULL COMMENT 'numero de regimen de aportaciones privadas de la persona ',
  `numero_colegio` varchar(20) NOT NULL COMMENT 'numero de coegio profesional de la persona ',
  `lugar_nacimiento` varchar(40) NOT NULL COMMENT 'lugar de nacimiento de la persona',
  `fecha_nacimiento` date NOT NULL COMMENT 'fecha de nacimiento de la persona ',
  `participar_pastoral` enum('Si','No') NOT NULL COMMENT 'Desea participar en las actividades de pastoral',
  `familiares_laboran` enum('Si','No') NOT NULL COMMENT 'Tiene familiares que laboran en la universidad',
  `lugar_llenado` varchar(15) NOT NULL COMMENT 'lugar de llenando del formulario',
  `fecha_llenado` date NOT NULL COMMENT 'fecha de llenado del formulario ',
  `sueldo_min` double NOT NULL COMMENT 'Suledo minimo que aceptaria',
  `movimiento_catolico` varchar(15) DEFAULT NULL COMMENT 'movimiento catolico en la que activa ',
  `firma` varchar(999) NOT NULL COMMENT 'firma de la persona ',
  `puesto` varchar(45) NOT NULL COMMENT 'Puesto al que aplica ',
  `tipo_sangre` varchar(5) NOT NULL,
  `FK_estadocivil` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_estadocivil_idx` (`FK_estadocivil`),
  KEY `fk_idUsuario_idx` (`fk_id_usuario`),
  CONSTRAINT `FK_estadocivil` FOREIGN KEY (`FK_estadocivil`) REFERENCES `estado_civil` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idUsuario` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_general`
--

LOCK TABLES `datos_general` WRITE;
/*!40000 ALTER TABLE `datos_general` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependientes`
--

DROP TABLE IF EXISTS `dependientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependientes` (
  `codigo_dependiente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo del dependiente',
  `Nombre` varchar(45) NOT NULL COMMENT 'nombre del dependiente ',
  `parentesco` varchar(15) NOT NULL COMMENT 'parentesco del dependiente ',
  `edad` int(11) NOT NULL COMMENT 'edad del dependiente',
  `Direccion` varchar(65) NOT NULL COMMENT 'Direccion del dependiente ',
  `numero_id` varchar(15) NOT NULL,
  PRIMARY KEY (`codigo_dependiente`),
  KEY `generales_id_idx` (`numero_id`),
  CONSTRAINT `generales_id` FOREIGN KEY (`numero_id`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependientes`
--

LOCK TABLES `dependientes` WRITE;
/*!40000 ALTER TABLE `dependientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_entregados`
--

DROP TABLE IF EXISTS `documentos_entregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_entregados` (
  `iddocumentos_entregados` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id del documento entregado ',
  `url` varchar(45) NOT NULL COMMENT 'Direccion url del archivo escaneado ',
  `id_usuarios` int(11) NOT NULL,
  PRIMARY KEY (`iddocumentos_entregados`),
  KEY `fk_idUsuario_idx` (`id_usuarios`),
  CONSTRAINT `Idusuarios_fk` FOREIGN KEY (`id_usuarios`) REFERENCES `usuario` (`cod_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_entregados`
--

LOCK TABLES `documentos_entregados` WRITE;
/*!40000 ALTER TABLE `documentos_entregados` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos_entregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educacion` (
  `cod` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo nivel de educacion ',
  `anios` varchar(45) NOT NULL COMMENT 'años de la educacion ',
  `nombre_inst` varchar(45) NOT NULL COMMENT 'Nombre del instituto ',
  `titulo_obtenidol` varchar(45) NOT NULL COMMENT 'Titulo obtenido ',
  `fk_id_nivel_edu` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `fk_niveledu_idx` (`fk_id_nivel_edu`),
  CONSTRAINT `fk_niveledu` FOREIGN KEY (`fk_id_nivel_edu`) REFERENCES `nivel_educativo` (`cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id del estado civil ',
  `Descripcion` varchar(15) NOT NULL COMMENT 'Descripcion del estado civil de la persona ',
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` VALUES (4,'Soltero'),(5,'Casado'),(6,'Viudo'),(7,'Union Libre');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiencia` (
  `cod_Exp` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de experiencia ',
  `Empresa` varchar(45) NOT NULL COMMENT 'Nombre de la empresa ',
  `puesto` varchar(45) NOT NULL COMMENT 'Puesto en el que laboro ',
  `anios_exp` int(11) NOT NULL COMMENT 'años de experiencia ',
  `numero_identidad` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_Exp`),
  KEY `datosGnerales_id_fk_idx` (`numero_identidad`),
  CONSTRAINT `datosGnerales_id_fk` FOREIGN KEY (`numero_identidad`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia`
--

LOCK TABLES `experiencia` WRITE;
/*!40000 ALTER TABLE `experiencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultad` (
  `idfacultad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id de facultad ',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre de la facultad ',
  `id_campus` int(11) NOT NULL,
  PRIMARY KEY (`idfacultad`),
  KEY `campus_facultad_idx` (`id_campus`),
  CONSTRAINT `campus_facultad` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`idcampus`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha` (
  `id` varchar(15) NOT NULL COMMENT 'Numero de Identidad del docente ',
  `licencia_conducir` varchar(15) DEFAULT NULL COMMENT 'Numero de licencia de conducir del docente ',
  `carnet_trabajo` varchar(15) NOT NULL COMMENT 'numero de carnet de trabajo del docente ',
  `fecha_ingreso` date NOT NULL COMMENT 'fecha de ingreso del docente ',
  `no_cuenta_bamer` varchar(15) NOT NULL COMMENT 'Numero de cuenta Bamer del docente ',
  `campus_laboral` varchar(15) NOT NULL COMMENT 'campus en el que labora ',
  `posee_automovil` enum('Si','No') NOT NULL COMMENT 'Posee automovil',
  `marca` varchar(15) DEFAULT NULL COMMENT 'marca del automovl',
  `modelo` varchar(15) DEFAULT NULL COMMENT 'modelo del automovil',
  `ano_del_auto` date DEFAULT NULL COMMENT ' año del automovil',
  `nombre_conyuge` varchar(45) DEFAULT NULL COMMENT 'Nombre del conyugue del docente ',
  `emergencia` varchar(20) NOT NULL COMMENT 'nombre de la persona a quien avisar en caso de emergencia ',
  `telefono_emer` varchar(15) NOT NULL COMMENT 'numero de la persona a quien llamar en caso de emergencia',
  `fecha_formulario` date NOT NULL COMMENT 'fecha del llenado del formulario ',
  `Puesto_ac` varchar(45) NOT NULL COMMENT 'Puesto actual ',
  `fk_id_datos_generales` varchar(15) NOT NULL,
  KEY `FK_Id_idx` (`id`),
  KEY `fk_datos_generales_idx` (`fk_id_datos_generales`),
  CONSTRAINT `fk_datos_generales` FOREIGN KEY (`fk_id_datos_generales`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidades`
--

DROP TABLE IF EXISTS `habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habilidades` (
  `id` varchar(15) NOT NULL COMMENT 'Numero de identificacion de la persona ',
  `descripcion` varchar(45) DEFAULT NULL COMMENT 'decripcion del tipo de habilidad de la persona ',
  `datosgenerales_ID` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `datsGnerales_idx` (`datosgenerales_ID`),
  CONSTRAINT `datsGnerales` FOREIGN KEY (`datosgenerales_ID`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidades`
--

LOCK TABLES `habilidades` WRITE;
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_educativo`
--

DROP TABLE IF EXISTS `nivel_educativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_educativo` (
  `cod` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripcion del nivel educativo ',
  `fk_datos_G` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `datosG_idx` (`fk_datos_G`),
  CONSTRAINT `datosG` FOREIGN KEY (`fk_datos_G`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_educativo`
--

LOCK TABLES `nivel_educativo` WRITE;
/*!40000 ALTER TABLE `nivel_educativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_educativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombre_parroco`
--

DROP TABLE IF EXISTS `nombre_parroco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nombre_parroco` (
  `id_parroco` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo de parroco',
  `nombre_parroco` varchar(45) NOT NULL COMMENT 'Nombre del parroco ',
  `id_parroquia` int(11) NOT NULL,
  PRIMARY KEY (`id_parroco`),
  KEY `fk_parroquia_idx` (`id_parroquia`),
  CONSTRAINT `fk_parroquia` FOREIGN KEY (`id_parroquia`) REFERENCES `parroquia` (`idparroquia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombre_parroco`
--

LOCK TABLES `nombre_parroco` WRITE;
/*!40000 ALTER TABLE `nombre_parroco` DISABLE KEYS */;
/*!40000 ALTER TABLE `nombre_parroco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nueva_ip`
--

DROP TABLE IF EXISTS `nueva_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nueva_ip` (
  `idnueva_ip` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `id_campus` int(11) NOT NULL,
  PRIMARY KEY (`idnueva_ip`),
  KEY `fk_campus_idx` (`id_campus`),
  CONSTRAINT `fk_campus` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`idcampus`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nueva_ip`
--

LOCK TABLES `nueva_ip` WRITE;
/*!40000 ALTER TABLE `nueva_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `nueva_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parroquia`
--

DROP TABLE IF EXISTS `parroquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parroquia` (
  `idparroquia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo de parroquia ',
  `descripcion` varchar(45) NOT NULL COMMENT 'Nombre de parroquia ',
  `id_camp` int(11) NOT NULL,
  PRIMARY KEY (`idparroquia`),
  KEY `campus_fk_idx` (`id_camp`),
  CONSTRAINT `campus_fk` FOREIGN KEY (`id_camp`) REFERENCES `campus` (`idcampus`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parroquia`
--

LOCK TABLES `parroquia` WRITE;
/*!40000 ALTER TABLE `parroquia` DISABLE KEYS */;
/*!40000 ALTER TABLE `parroquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencias`
--

DROP TABLE IF EXISTS `referencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencias` (
  `cod_referencia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo de la referencia ',
  `Nombre` varchar(45) NOT NULL COMMENT 'Nombre de la persona como referencia ',
  `Direccion` varchar(65) NOT NULL COMMENT 'Direccion de la referncia ',
  `relacion` varchar(45) NOT NULL COMMENT 'Relacion con las refernecias ',
  `telefono` varchar(15) NOT NULL COMMENT 'Numero de telefono con la referncia ',
  `fk_id_datos` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_referencia`),
  KEY `datosGneralesFk_idx` (`fk_id_datos`),
  CONSTRAINT `datosGneralesFk` FOREIGN KEY (`fk_id_datos`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencias`
--

LOCK TABLES `referencias` WRITE;
/*!40000 ALTER TABLE `referencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono` (
  `cod` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo telefono ',
  `numero` varchar(15) NOT NULL COMMENT 'Numero de telefono de la persona ',
  `cod_tel` int(11) NOT NULL,
  `FK_id` varchar(15) NOT NULL,
  `FK_cod_tel` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod_UNIQUE` (`cod`),
  KEY `FK_id_idx` (`FK_id`),
  KEY `Fk_cod_tel_idx` (`FK_cod_tel`),
  CONSTRAINT `FK_id` FOREIGN KEY (`FK_id`) REFERENCES `datos_general` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_cod_tel` FOREIGN KEY (`FK_cod_tel`) REFERENCES `tipo_tel` (`cod_tel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_tel`
--

DROP TABLE IF EXISTS `tipo_tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_tel` (
  `cod_tel` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo del telefono ',
  `descripcion` varchar(15) NOT NULL COMMENT 'descripcion del tipo de telefono ',
  PRIMARY KEY (`cod_tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_tel`
--

LOCK TABLES `tipo_tel` WRITE;
/*!40000 ALTER TABLE `tipo_tel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `idtipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`idtipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo de usuario',
  `primer_nom` varchar(20) NOT NULL COMMENT 'Nombre del usuario ',
  `segundo_nom` varchar(20) DEFAULT NULL COMMENT 'apellido de usuario ',
  `primer_apellido` varchar(20) NOT NULL,
  `segundo_apellido` varchar(20) DEFAULT NULL,
  `correo` varchar(45) NOT NULL COMMENT 'correo  del usuario ',
  `contrasenia` varchar(30) NOT NULL COMMENT 'contraseña del usuario',
  `estado` enum('Activo','Inactivo') NOT NULL COMMENT 'estado del usuario ',
  `id_tipo_Usuario` int(11) NOT NULL COMMENT 'tipo de usuario ',
  `numero_identidad` varchar(13) CHARACTER SET dec8 NOT NULL,
  `fk_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`cod_usuario`),
  KEY `fk_tipoUsuario_idx` (`fk_tipo_usuario`),
  CONSTRAINT `fk_tipoUsuario` FOREIGN KEY (`fk_tipo_usuario`) REFERENCES `tipo_usuario` (`idtipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_campus`
--

DROP TABLE IF EXISTS `usuario_campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_campus` (
  `cod_campus` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`cod_campus`,`id_usuario`),
  KEY `fkUsuarios_idx` (`id_usuario`),
  CONSTRAINT `fkCampus` FOREIGN KEY (`cod_campus`) REFERENCES `campus` (`idcampus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_campus`
--

LOCK TABLES `usuario_campus` WRITE;
/*!40000 ALTER TABLE `usuario_campus` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_facultad`
--

DROP TABLE IF EXISTS `usuario_facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_facultad` (
  `id_usuario` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_facultad`),
  KEY `fk_facultas_idx` (`id_facultad`),
  CONSTRAINT `fk_facultas` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`idfacultad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_facultad`
--

LOCK TABLES `usuario_facultad` WRITE;
/*!40000 ALTER TABLE `usuario_facultad` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_facultad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-06  2:52:29
