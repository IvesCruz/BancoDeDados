
Skip to content
This repository

    Pull requests
    Issues
    Gist

    @IvesCruz

1
0

    0

IvesCruz/BancosDeDados
Code
Issues 0
Pull requests 0
Projects 0
Wiki
Pulse
Graphs
Settings
BancosDeDados/Empresa.sql
22858fa 27 minutes ago
@IvesCruz IvesCruz Atividade
234 lines (202 sloc) 8.27 KB

Skip to content
This repository

    Pull requests
    Issues
    Gist

    @IvesCruz

1
0

    0

IvesCruz/Banco
Code
Issues 0
Pull requests 0
Projects 0
Wiki
Pulse
Graphs
Settings
Banco/Empresa.sql
bc1043d 2 hours ago
@IvesCruz IvesCruz Banco
200 lines (178 sloc) 7.89 KB
-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `adesao`
--

DROP TABLE IF EXISTS `adesao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adesao` (
  `id_adesao` int(8) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_servicos` int(11) DEFAULT NULL,
  `id_plano` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_adesao`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_servicos` (`id_servicos`),
  KEY `id_plano` (`id_plano`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `adesao_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `adesao_ibfk_2` FOREIGN KEY (`id_servicos`) REFERENCES `servicos` (`id_servicos`),
  CONSTRAINT `adesao_ibfk_3` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id_plano`),
  CONSTRAINT `adesao_ibfk_4` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `celular`
--

DROP TABLE IF EXISTS `celular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celular` (
  `id_celular` int(8) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_celular`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `celular_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(8) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `cli_sexo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_cpf` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_telefone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contato_vendedor`
--

DROP TABLE IF EXISTS `contato_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato_vendedor` (
  `id_contato` int(8) NOT NULL AUTO_INCREMENT,
  `id_vendedor` int(11) DEFAULT NULL,
  `celu_vendedor` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_vendrdor` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_contato`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `contato_vendedor_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `endereco_cliente`
--

DROP TABLE IF EXISTS `endereco_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco_cliente` (
  `id_endereco` int(8) NOT NULL AUTO_INCREMENT,
  `cli_cep` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `endereco_cliente_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fatura`
--

DROP TABLE IF EXISTS `fatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fatura` (
  `id_fatura` int(8) NOT NULL AUTO_INCREMENT,
  `id_adesao` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_servicos` int(11) DEFAULT NULL,
  `id_plano` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  PRIMARY KEY (`id_fatura`),
  KEY `id_adesao` (`id_adesao`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_servicos` (`id_servicos`),
  KEY `id_plano` (`id_plano`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `fatura_ibfk_1` FOREIGN KEY (`id_adesao`) REFERENCES `adesao` (`id_adesao`),
  CONSTRAINT `fatura_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fatura_ibfk_3` FOREIGN KEY (`id_servicos`) REFERENCES `servicos` (`id_servicos`),
  CONSTRAINT `fatura_ibfk_4` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id_plano`),
  CONSTRAINT `fatura_ibfk_5` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plano`
--

DROP TABLE IF EXISTS `plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plano` (
  `id_plano` int(8) NOT NULL AUTO_INCREMENT,
  `descri_serv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mud_valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicos` (
  `id_servicos` int(8) NOT NULL AUTO_INCREMENT,
  `descri_serv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id_servicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `id_vendedor` int(8) NOT NULL AUTO_INCREMENT,
  `nome_vendedor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpf_vendedor` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rg_vendedor` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-15 12:15:56

    Contact GitHub API Training Shop Blog About 

    © 2016 GitHub, Inc. Terms Privacy Security Status Help 


    Contact GitHub API Training Shop Blog About 

    © 2016 GitHub, Inc. Terms Privacy Security Status Help 


