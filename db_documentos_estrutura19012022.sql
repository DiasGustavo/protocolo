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
-- Table structure for table `tbl_arquivo`
--

DROP TABLE IF EXISTS `tbl_arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_arquivo` (
  `id_arquivo` bigint(20) NOT NULL AUTO_INCREMENT,
  `caminho` varchar(1024) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `protocolo_cod_pro` bigint(20) DEFAULT NULL,
  `protocolo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_arquivo`),
  KEY `FK_o5cmilgjrkyg68ci8xm8o7tm3` (`protocolo_id`),
  KEY `FK_kpesnmr8v0l44twu2od55d3w2` (`protocolo_cod_pro`),
  CONSTRAINT `FK_kpesnmr8v0l44twu2od55d3w2` FOREIGN KEY (`protocolo_cod_pro`) REFERENCES `tbl_protocolo` (`cod_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_o5cmilgjrkyg68ci8xm8o7tm3` FOREIGN KEY (`protocolo_id`) REFERENCES `tbl_protocolo` (`cod_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_atos`
--

DROP TABLE IF EXISTS `tbl_atos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_atos` (
  `cod_atos` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`cod_atos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_cadastra_documento`
--

DROP TABLE IF EXISTS `tbl_cadastra_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cadastra_documento` (
  `cod_cad` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_doc` bigint(20) DEFAULT NULL,
  `cod_fun` bigint(20) DEFAULT NULL,
  `dt_cadastro` date NOT NULL,
  PRIMARY KEY (`cod_cad`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_checklist`
--

DROP TABLE IF EXISTS `tbl_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist` (
  `cod_checklist` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `fk_atos` bigint(20) DEFAULT NULL,
  `fk_parecer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cod_checklist`),
  KEY `FK_1l0ngdbcujo1uptjtjd96d0pi` (`fk_atos`),
  KEY `FK_brgye3jq515l477gucr52rrrg` (`fk_parecer`),
  CONSTRAINT `FK_1l0ngdbcujo1uptjtjd96d0pi` FOREIGN KEY (`fk_atos`) REFERENCES `tbl_atos` (`cod_atos`),
  CONSTRAINT `FK_brgye3jq515l477gucr52rrrg` FOREIGN KEY (`fk_parecer`) REFERENCES `tbl_parecer` (`cod_parecer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_checklist_nota`
--

DROP TABLE IF EXISTS `tbl_checklist_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist_nota` (
  `cod_checklist` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `fk_atos` bigint(20) DEFAULT NULL,
  `fk_nota` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cod_checklist`),
  KEY `FK_b48mm42h8xuwinas21yhuhpv3` (`fk_atos`),
  KEY `FK_le3arv8v1fpie9niw001728hx` (`fk_nota`),
  CONSTRAINT `FK_b48mm42h8xuwinas21yhuhpv3` FOREIGN KEY (`fk_atos`) REFERENCES `tbl_atos` (`cod_atos`),
  CONSTRAINT `FK_le3arv8v1fpie9niw001728hx` FOREIGN KEY (`fk_nota`) REFERENCES `tbl_nota_tecnica` (`cod_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_controle_registro`
--

DROP TABLE IF EXISTS `tbl_controle_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_controle_registro` (
  `cod_controle` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_controle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_documento`
--

DROP TABLE IF EXISTS `tbl_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_documento` (
  `cod_doc` bigint(20) NOT NULL AUTO_INCREMENT,
  `aditivo` varchar(70) DEFAULT NULL,
  `contrato` varchar(20) DEFAULT NULL,
  `dt_entrada` date NOT NULL,
  `dt_homologacao` date DEFAULT NULL,
  `dt_saida` date DEFAULT NULL,
  `doc_arquivo` varchar(1024) DEFAULT NULL,
  `encaminhamento` varchar(50) DEFAULT NULL,
  `fiscal_contrato` varchar(200) DEFAULT NULL,
  `medicao` varchar(5) DEFAULT NULL,
  `objeto` varchar(1024) NOT NULL,
  `observacao` varchar(1024) DEFAULT NULL,
  `proc_licitatorio` varchar(100) DEFAULT NULL,
  `processo` varchar(10) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `valor` decimal(9,2) NOT NULL,
  `dt_vigencia_fim` date DEFAULT NULL,
  `dt_vigencia_inicio` date DEFAULT NULL,
  `empresa_fk` bigint(20) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  `fk_secretaria` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_doc`),
  KEY `FK_6l50tgsrgucslc2c450ramv26` (`empresa_fk`),
  KEY `FK_7tmtucgrq5130s5t6dbxlliir` (`fk_funcionario`),
  KEY `FK_eip2ku7deg3x9hx8otcw2i9n` (`fk_secretaria`),
  CONSTRAINT `FK_6l50tgsrgucslc2c450ramv26` FOREIGN KEY (`empresa_fk`) REFERENCES `tbl_empresa` (`cod_empresa`),
  CONSTRAINT `FK_7tmtucgrq5130s5t6dbxlliir` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`),
  CONSTRAINT `FK_eip2ku7deg3x9hx8otcw2i9n` FOREIGN KEY (`fk_secretaria`) REFERENCES `tbl_secretaria` (`cod_sec`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_empresa`
--

DROP TABLE IF EXISTS `tbl_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empresa` (
  `cod_empresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `rua` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `razao` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_endereco`
--

DROP TABLE IF EXISTS `tbl_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_endereco` (
  `cod_endereco` bigint(20) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(50) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `rua` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_funcionario`
--

DROP TABLE IF EXISTS `tbl_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionario` (
  `cod_fun` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `funcao` varchar(15) NOT NULL,
  `login` varchar(50) NOT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `telefone` varchar(13) DEFAULT NULL,
  `orgao_fk` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_fun`),
  KEY `FK_427vk1wqwjs2wbnn77575pjlp` (`orgao_fk`),
  CONSTRAINT `FK_427vk1wqwjs2wbnn77575pjlp` FOREIGN KEY (`orgao_fk`) REFERENCES `tbl_orgao` (`cod_orgao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_licitacao`
--

DROP TABLE IF EXISTS `tbl_licitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_licitacao` (
  `cod_doc` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_assinatura_contrato` date DEFAULT NULL,
  `dt_cadastro` date NOT NULL,
  `dt_modificacao` date NOT NULL,
  `dt_vencimento` date NOT NULL,
  `objeto` varchar(1024) NOT NULL,
  `prazo_execucao` varchar(10) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `valor` decimal(9,2) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  `fk_modalidade_licitacao` bigint(20) NOT NULL,
  `fk_tipo_licitacao` bigint(20) NOT NULL,
  `fk_empresa` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_doc`),
  KEY `FK_mqwgy0tt7c2svgg2v7x350bn9` (`fk_funcionario`),
  KEY `FK_m3y82ydhdsflsc8n2uj21u09i` (`fk_modalidade_licitacao`),
  KEY `FK_pi3yr6jgkp19oay55sgf92ovo` (`fk_tipo_licitacao`),
  KEY `FK_nwyn6nm08gu7gtfvop86wjlnq` (`fk_empresa`),
  CONSTRAINT `FK_m3y82ydhdsflsc8n2uj21u09i` FOREIGN KEY (`fk_modalidade_licitacao`) REFERENCES `tbl_modalidade_licitacao` (`cod_modalidade`),
  CONSTRAINT `FK_mqwgy0tt7c2svgg2v7x350bn9` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`),
  CONSTRAINT `FK_nwyn6nm08gu7gtfvop86wjlnq` FOREIGN KEY (`fk_empresa`) REFERENCES `tbl_empresa` (`cod_empresa`),
  CONSTRAINT `FK_pi3yr6jgkp19oay55sgf92ovo` FOREIGN KEY (`fk_tipo_licitacao`) REFERENCES `tbl_tipo_licitacao` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_modalidade_licitacao`
--

DROP TABLE IF EXISTS `tbl_modalidade_licitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modalidade_licitacao` (
  `cod_modalidade` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` date NOT NULL,
  `dt_modificacao` date NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_modalidade`),
  KEY `FK_aufwgbjpxu070r0xuh71bybik` (`fk_funcionario`),
  CONSTRAINT `FK_aufwgbjpxu070r0xuh71bybik` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_nota_empenho`
--

DROP TABLE IF EXISTS `tbl_nota_empenho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nota_empenho` (
  `cod_nota` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `observacao` varchar(250) DEFAULT NULL,
  `valor` decimal(9,2) NOT NULL,
  `fk_documento` bigint(20) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_nota`),
  KEY `FK_tcurit0w93038prnoef4yared` (`fk_documento`),
  KEY `FK_ou1nhkngoifldf4qp8jf8hkyl` (`fk_funcionario`),
  CONSTRAINT `FK_ou1nhkngoifldf4qp8jf8hkyl` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`),
  CONSTRAINT `FK_tcurit0w93038prnoef4yared` FOREIGN KEY (`fk_documento`) REFERENCES `tbl_documento` (`cod_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_nota_tecnica`
--

DROP TABLE IF EXISTS `tbl_nota_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nota_tecnica` (
  `cod_nota` bigint(20) NOT NULL AUTO_INCREMENT,
  `conclusao` varchar(8192) DEFAULT NULL,
  `dt_entrada` date NOT NULL,
  `numero` varchar(10) NOT NULL,
  `status` varchar(250) NOT NULL,
  `objeto` varchar(50) NOT NULL,
  `fk_documento` bigint(20) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_nota`),
  KEY `FK_sgnn1uqp9o78vflyftrtyndha` (`fk_documento`),
  KEY `FK_hi0f10h99aorhumivma2pvd54` (`fk_funcionario`),
  CONSTRAINT `FK_hi0f10h99aorhumivma2pvd54` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`),
  CONSTRAINT `FK_sgnn1uqp9o78vflyftrtyndha` FOREIGN KEY (`fk_documento`) REFERENCES `tbl_documento` (`cod_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_orgao`
--

DROP TABLE IF EXISTS `tbl_orgao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orgao` (
  `cod_orgao` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(2048) NOT NULL,
  `client_secret` varchar(2048) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `dt_vigencia` date NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `registro` varchar(32) NOT NULL,
  `repositorio` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `telefone` varchar(13) DEFAULT NULL,
  `token_acesso` varchar(2048) NOT NULL,
  `endereco_fk` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_orgao`),
  KEY `FK_t03ge3tynvnqknpa5hmasotur` (`endereco_fk`),
  CONSTRAINT `FK_t03ge3tynvnqknpa5hmasotur` FOREIGN KEY (`endereco_fk`) REFERENCES `tbl_endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_parecer`
--

DROP TABLE IF EXISTS `tbl_parecer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_parecer` (
  `cod_parecer` bigint(20) NOT NULL AUTO_INCREMENT,
  `conclusao` varchar(8192) DEFAULT NULL,
  `dt_entrada` date NOT NULL,
  `numero` varchar(10) NOT NULL,
  `status` varchar(250) NOT NULL,
  `objeto` varchar(50) NOT NULL,
  `fk_documento` bigint(20) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_parecer`),
  KEY `FK_ingljjbg8k29r1ilu26komn2x` (`fk_documento`),
  KEY `FK_a0qeroecif4lhu7vbkiaxbpf5` (`fk_funcionario`),
  CONSTRAINT `FK_a0qeroecif4lhu7vbkiaxbpf5` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`),
  CONSTRAINT `FK_ingljjbg8k29r1ilu26komn2x` FOREIGN KEY (`fk_documento`) REFERENCES `tbl_documento` (`cod_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_protocolo`
--

DROP TABLE IF EXISTS `tbl_protocolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_protocolo` (
  `cod_pro` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_entrada` date NOT NULL,
  `dt_saida` date DEFAULT NULL,
  `descricao` varchar(1024) NOT NULL,
  `observacao` varchar(1024) DEFAULT NULL,
  `processo` varchar(10) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  `fk_secretaria` bigint(20) NOT NULL,
  `protocolo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod_pro`),
  KEY `FK_atjppju0s4f8yxjsu50udaihc` (`fk_funcionario`),
  KEY `FK_jnlr37w4wo3la6riic4xe79ff` (`fk_secretaria`),
  CONSTRAINT `FK_atjppju0s4f8yxjsu50udaihc` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`),
  CONSTRAINT `FK_jnlr37w4wo3la6riic4xe79ff` FOREIGN KEY (`fk_secretaria`) REFERENCES `tbl_secretaria` (`cod_sec`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_registro`
--

DROP TABLE IF EXISTS `tbl_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_registro` (
  `cod_reg` bigint(20) NOT NULL AUTO_INCREMENT,
  `ct_financeira` varchar(15) NOT NULL,
  `dt_entrada` date NOT NULL,
  `desconto` decimal(9,2) NOT NULL,
  `historico` varchar(100) NOT NULL,
  `juros` decimal(9,2) NOT NULL,
  `multa` decimal(9,2) NOT NULL,
  `operacao` varchar(15) NOT NULL,
  `referente` varchar(100) NOT NULL,
  `vl_principal` decimal(9,2) NOT NULL,
  `vl_total` decimal(9,2) NOT NULL,
  `cliente` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_reg`),
  KEY `FK_6vnmapgj6mwu5di5hsi52dqcf` (`cliente`),
  CONSTRAINT `FK_6vnmapgj6mwu5di5hsi52dqcf` FOREIGN KEY (`cliente`) REFERENCES `tbl_empresa` (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_secretaria`
--

DROP TABLE IF EXISTS `tbl_secretaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_secretaria` (
  `cod_sec` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco_fk` bigint(20) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  `orgao_fk` bigint(20) NOT NULL,
  `codigo` varchar(3) NOT NULL,
  PRIMARY KEY (`cod_sec`),
  KEY `FK_4o1u7qm4x6slu6emrxnq0gxh` (`endereco_fk`),
  KEY `FK_hits9hwflxci65c35jyhulh08` (`fk_funcionario`),
  KEY `FK_6a5kjgy281n5kfy90su55hwdd` (`orgao_fk`),
  CONSTRAINT `FK_4o1u7qm4x6slu6emrxnq0gxh` FOREIGN KEY (`endereco_fk`) REFERENCES `tbl_endereco` (`cod_endereco`),
  CONSTRAINT `FK_6a5kjgy281n5kfy90su55hwdd` FOREIGN KEY (`orgao_fk`) REFERENCES `tbl_orgao` (`cod_orgao`),
  CONSTRAINT `FK_hits9hwflxci65c35jyhulh08` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_tipo_licitacao`
--

DROP TABLE IF EXISTS `tbl_tipo_licitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_licitacao` (
  `cod_tipo` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` date NOT NULL,
  `dt_modificacao` date NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `fk_funcionario` bigint(20) NOT NULL,
  PRIMARY KEY (`cod_tipo`),
  KEY `FK_74tql53915eprfqdnoe29cphf` (`fk_funcionario`),
  CONSTRAINT `FK_74tql53915eprfqdnoe29cphf` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`cod_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2022-01-19 12:13:05
