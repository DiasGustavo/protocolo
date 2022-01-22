-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_documentos
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Dumping data for table `tbl_arquivo`
--

LOCK TABLES `tbl_arquivo` WRITE;
/*!40000 ALTER TABLE `tbl_arquivo` DISABLE KEYS */;
INSERT INTO `tbl_arquivo` VALUES (3,'C:\\Users\\Gustavo\\uploads\\arquivos\\227-664-1-PB.pdf','227-664-1-PB.pdf',3,3),(4,'C:\\Users\\Gustavo\\uploads\\arquivos\\4.292.pdf','4.292.pdf',2,NULL),(5,'C:\\Users\\Gustavo\\uploads\\arquivos\\Gmail - Aviso de acionamento do chamado de campo nº 9555.pdf','Gmail - Aviso de acionamento do chamado de campo nº 9555.pdf',4,4),(6,'C:\\Users\\Gustavo\\uploads\\arquivos\\229532-1641597692.pdf','229532-1641597692.pdf',5,5),(7,'C:\\Users\\Gustavo\\uploads\\arquivos\\229531-1641597539.pdf','229531-1641597539.pdf',6,6),(8,'C:\\Users\\Gustavo\\uploads\\arquivos\\Gmail - Aviso de acionamento do chamado de campo nº 9555.pdf','Gmail - Aviso de acionamento do chamado de campo nº 9555.pdf',7,7),(9,'C:\\Users\\Gustavo\\uploads\\arquivos\\Relacao_Lotes_2021_420100_4.pdf','Relacao_Lotes_2021_420100_4.pdf',8,8),(10,'C:\\Users\\Gustavo\\uploads\\arquivos\\SM86BEDRPRTYNLJ9QX2BTXGBO6I2R5AW84MED0BL6O6D3MJ16HXAD72C4AYB7ALUPLB1JF1FU4BOXMVY1642.pdf','SM86BEDRPRTYNLJ9QX2BTXGBO6I2R5AW84MED0BL6O6D3MJ16HXAD72C4AYB7ALUPLB1JF1FU4BOXMVY1642.pdf',9,9),(11,'C:\\Users\\Gustavo\\uploads\\arquivos\\download.pdf','download.pdf',10,10),(12,'C:\\Users\\Gustavo\\uploads\\arquivos\\Documento_ 753343 Publicado em_ 31_12_2021 Edição Diária_ 15090.pdf','Documento_ 753343 Publicado em_ 31_12_2021 Edição Diária_ 15090.pdf',11,11),(13,'C:\\Users\\Gustavo\\uploads\\arquivos\\Gmail - Aviso de acionamento do chamado de campo nº 9555.pdf','Gmail - Aviso de acionamento do chamado de campo nº 9555.pdf',12,12),(14,'C:\\Users\\Gustavo\\uploads\\arquivos\\Bloco II_Arquitetura e Organização de Computadores.pdf','Bloco II_Arquitetura e Organização de Computadores.pdf',13,13),(15,'C:\\Users\\Gustavo\\uploads\\arquivos\\Relacao_Lotes_2021_420100_2.pdf','Relacao_Lotes_2021_420100_2.pdf',14,14),(16,'C:\\Users\\Gustavo\\uploads\\arquivos\\229531-1641597539.pdf','229531-1641597539.pdf',15,15),(17,'C:\\Users\\Gustavo\\uploads\\arquivos\\SM86BEDRPRTYNLJ9QX2BTXGBO6I2R5AW84MED0BL6O6D3MJ16HXAD72C4AYB7ALUPLB1JF1FU4BOXMVY1642.pdf','SM86BEDRPRTYNLJ9QX2BTXGBO6I2R5AW84MED0BL6O6D3MJ16HXAD72C4AYB7ALUPLB1JF1FU4BOXMVY1642.pdf',16,16);
/*!40000 ALTER TABLE `tbl_arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_atos`
--

LOCK TABLES `tbl_atos` WRITE;
/*!40000 ALTER TABLE `tbl_atos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_atos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_cadastra_documento`
--

LOCK TABLES `tbl_cadastra_documento` WRITE;
/*!40000 ALTER TABLE `tbl_cadastra_documento` DISABLE KEYS */;
INSERT INTO `tbl_cadastra_documento` VALUES (1,6,1,'2020-05-16'),(2,7,1,'2020-05-16'),(3,8,1,'2020-05-16'),(4,9,1,'2020-05-16'),(5,10,1,'2020-05-16'),(6,11,1,'2020-07-28'),(7,12,1,'2020-08-12'),(8,13,1,'2020-08-12'),(9,14,1,'2020-08-13'),(10,15,1,'2020-08-13'),(11,16,1,'2020-08-13'),(12,17,1,'2020-08-13'),(13,18,1,'2020-08-13'),(14,19,1,'2020-08-13'),(15,20,1,'2020-08-13'),(16,21,1,'2020-08-13'),(17,22,1,'2020-08-13'),(18,23,1,'2020-08-15'),(19,24,1,'2020-08-15'),(20,25,2,'2020-12-30');
/*!40000 ALTER TABLE `tbl_cadastra_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_checklist`
--

LOCK TABLES `tbl_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_checklist_nota`
--

LOCK TABLES `tbl_checklist_nota` WRITE;
/*!40000 ALTER TABLE `tbl_checklist_nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_checklist_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_controle_registro`
--

LOCK TABLES `tbl_controle_registro` WRITE;
/*!40000 ALTER TABLE `tbl_controle_registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_controle_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_documento`
--

LOCK TABLES `tbl_documento` WRITE;
/*!40000 ALTER TABLE `tbl_documento` DISABLE KEYS */;
INSERT INTO `tbl_documento` VALUES (3,'','','2020-05-16',NULL,NULL,NULL,'','','','teste','','','123','em análise',12.00,NULL,NULL,1,1,1),(7,'','','2020-05-16',NULL,NULL,NULL,'','','','teste','','','5454','em análise',123.00,NULL,NULL,1,1,1),(8,'','','2020-05-16',NULL,NULL,NULL,'','','','teste','','','567','em análise',21.00,NULL,NULL,1,1,1),(9,'','','2020-05-16',NULL,NULL,NULL,'','','','teste','','','234','em análise',21.00,NULL,NULL,1,1,1),(10,'','','2020-05-16',NULL,NULL,NULL,'','','','teste','','','89','em análise',21.00,NULL,NULL,1,1,1),(11,'','','2020-05-27',NULL,NULL,NULL,'','','','teste','','','32323','analisado',1.00,NULL,NULL,1,1,1),(22,'','','2020-08-13','2020-08-13',NULL,NULL,'','','','teste','','','1212','em análise',1.00,'2020-08-31','2020-08-14',1,1,1),(23,'','','2020-08-15','2020-08-15',NULL,NULL,'','','','teste','','','44','em análise',1.00,'2020-08-31','2020-08-16',1,1,1),(24,'','','2020-08-15','2020-08-15',NULL,NULL,'','','','teste','','','34','em análise',2.00,'2020-08-31','2020-08-16',1,1,1),(25,'','','2020-08-26','2020-08-26',NULL,'C:\\Users\\Gustavo\\uploads\\arquivos\\silo.tips_cisco-ccna-icnd-guia-oficial-de-certificaao-routing-e-switching-wendell-odom-cciee-n-1624.pdf','','','','teste','','','123123','analisado',1.00,'2020-08-31','2020-08-27',1,2,1);
/*!40000 ALTER TABLE `tbl_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_empresa`
--

LOCK TABLES `tbl_empresa` WRITE;
/*!40000 ALTER TABLE `tbl_empresa` DISABLE KEYS */;
INSERT INTO `tbl_empresa` VALUES (1,'99.762.961/0001-09','theophales@gmail.com','Empresa Padrão');
/*!40000 ALTER TABLE `tbl_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_endereco`
--

LOCK TABLES `tbl_endereco` WRITE;
/*!40000 ALTER TABLE `tbl_endereco` DISABLE KEYS */;
INSERT INTO `tbl_endereco` VALUES (1,'centro','58700-000','Patos','Paraíba','1','Epitácio Pessoa');
/*!40000 ALTER TABLE `tbl_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_funcionario`
--

LOCK TABLES `tbl_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_funcionario` DISABLE KEYS */;
INSERT INTO `tbl_funcionario` VALUES (1,'administrador@gmail.com','administrador','administrador','123','administrador','200820e3227815ed1756a6b531e7e0d2',NULL,1),(2,'dantas.jr@gmail.com','servidor','dantas','3243','Dantas Junior','200820e3227815ed1756a6b531e7e0d2','',1);
/*!40000 ALTER TABLE `tbl_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_licitacao`
--

LOCK TABLES `tbl_licitacao` WRITE;
/*!40000 ALTER TABLE `tbl_licitacao` DISABLE KEYS */;
INSERT INTO `tbl_licitacao` VALUES (1,'2020-07-28','2020-07-28','2020-07-28','2020-12-31','Aquisição de ferramentas','360','Ativa',1000.00,1,1,1,1);
/*!40000 ALTER TABLE `tbl_licitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_modalidade_licitacao`
--

LOCK TABLES `tbl_modalidade_licitacao` WRITE;
/*!40000 ALTER TABLE `tbl_modalidade_licitacao` DISABLE KEYS */;
INSERT INTO `tbl_modalidade_licitacao` VALUES (1,'2020-07-21','2020-07-21','Concorrência','Aplicar',1),(2,'2020-07-28','2020-07-28','Tomada de preços','Aplicar',1),(3,'2020-07-28','2020-07-28','Convite','Aplicar',1);
/*!40000 ALTER TABLE `tbl_modalidade_licitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_nota_empenho`
--

LOCK TABLES `tbl_nota_empenho` WRITE;
/*!40000 ALTER TABLE `tbl_nota_empenho` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nota_empenho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_nota_tecnica`
--

LOCK TABLES `tbl_nota_tecnica` WRITE;
/*!40000 ALTER TABLE `tbl_nota_tecnica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nota_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_orgao`
--

LOCK TABLES `tbl_orgao` WRITE;
/*!40000 ALTER TABLE `tbl_orgao` DISABLE KEYS */;
INSERT INTO `tbl_orgao` VALUES (1,'520982118656-a5m5n3enr7u73of2aa9g0gchpriduvnt.apps.googleusercontent.com','zm-kZzpP6igDt05bLlPRqVRx','15.030.194/0001-45','2022-12-30','controle.interno.java@gmail.com','Padrão','e6ff13d31bf32c6bbee1a97d983db550','D:\\\\PROCESSOS_CONTROLE','A',NULL,'1//0h-mhrt2gq0IxCgYIARAAGBESNwF-L9IryREvwmOS5r8kbf-7yQemPTJF7Oo-ivRVgEG_ab7_M-EADo0wUszp-v_6JlwKK4a3eiY',1);
/*!40000 ALTER TABLE `tbl_orgao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_parecer`
--

LOCK TABLES `tbl_parecer` WRITE;
/*!40000 ALTER TABLE `tbl_parecer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_parecer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_protocolo`
--

LOCK TABLES `tbl_protocolo` WRITE;
/*!40000 ALTER TABLE `tbl_protocolo` DISABLE KEYS */;
INSERT INTO `tbl_protocolo` VALUES (2,'2021-04-22','2021-04-21','tteste','sem considerações','4','analisado',1,1,NULL),(3,'2021-04-22',NULL,'tetee','','5','em análise',1,1,NULL),(4,'2022-01-14',NULL,'pedido de férias','','4','em análise',1,1,NULL),(5,'2022-01-17',NULL,'fdfda','','4','em análise',1,1,NULL),(6,'2022-01-17',NULL,'teste','','44','em análise',1,1,NULL),(7,'2022-01-18',NULL,'teste','','44','em análise',1,1,NULL),(8,'2022-01-18',NULL,'teste','','55','em análise',1,1,NULL),(9,'2022-01-18',NULL,'teste','','66','em análise',1,1,NULL),(10,'2022-01-18',NULL,'teste','','777','em análise',1,1,NULL),(11,'2022-01-18',NULL,'teste','','545','em análise',1,1,NULL),(12,'2022-01-18',NULL,'teste','','645','em análise',1,1,NULL),(13,'2022-01-18',NULL,'teste','','123','em análise',1,1,NULL),(14,'2022-01-18',NULL,'teste','','56','em análise',1,1,NULL),(15,'2022-01-18',NULL,'teste','','565','em análise',1,1,'100115'),(16,'2022-01-18',NULL,'teste','','78878','em análise',1,1,'202200116');
/*!40000 ALTER TABLE `tbl_protocolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_registro`
--

LOCK TABLES `tbl_registro` WRITE;
/*!40000 ALTER TABLE `tbl_registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_secretaria`
--

LOCK TABLES `tbl_secretaria` WRITE;
/*!40000 ALTER TABLE `tbl_secretaria` DISABLE KEYS */;
INSERT INTO `tbl_secretaria` VALUES (1,'saude.patos.pb@gmail.com','Saúde',1,1,1,'001');
/*!40000 ALTER TABLE `tbl_secretaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipo_licitacao`
--

LOCK TABLES `tbl_tipo_licitacao` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_licitacao` DISABLE KEYS */;
INSERT INTO `tbl_tipo_licitacao` VALUES (1,'2020-07-21','2020-07-21','Menor preço','Aplicar',1),(2,'2020-07-28','2020-07-28','Melhor Técnica','Aplicar',1),(3,'2020-07-28','2020-07-28','Técnica e preço','Aplicar',1);
/*!40000 ALTER TABLE `tbl_tipo_licitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_documentos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 12:13:37
