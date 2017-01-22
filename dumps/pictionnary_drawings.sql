CREATE DATABASE  IF NOT EXISTS `pictionnary` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pictionnary`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pictionnary
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `drawings`
--

DROP TABLE IF EXISTS `drawings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drawings` (
  `id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `commands` blob NOT NULL,
  `picture` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drawings`
--

LOCK TABLES `drawings` WRITE;
/*!40000 ALTER TABLE `drawings` DISABLE KEYS */;
INSERT INTO `drawings` VALUES (NULL,'test@gmail.com','[{\"command\":\"start\",\"x\":108,\"y\":103,\"size\":8,\"color\":\"#000000\"},{\"command\":\"start\",\"x\":256,\"y\":104,\"size\":8,\"color\":\"#000000\"},{\"command\":\"start\",\"x\":78,\"y\":153,\"size\":8,\"color\":\"#000000\"},{\"command\":\"draw\",\"x\":79,\"y\":156,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":79,\"y\":157,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":85,\"y\":157,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":95,\"y\":159,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":105,\"y\":164,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":111,\"y\":164,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":117,\"y\":164,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":128,\"y\":168,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":142,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":151,\"y\":174,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":160,\"y\":174,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":171,\"y\":174,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":178,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":189,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":203,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":214,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":222,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":229,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":231,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":232,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":234,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":235,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":236,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":237,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":240,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":241,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":242,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":246,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":247,\"y\":171,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":247,\"y\":172,\"color\":\"#000000\",\"size\":8},{\"command\":\"draw\",\"x\":248,\"y\":172,\"color\":\"#000000\",\"size\":8}]','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAGQCAYAAACAvzbMAAAUQ0lEQVR4Xu3dS4ikVxkG4IligoLg/UYGIxNcKGZEjIqKGzUBwYW48LJxAhECCSiiK4OZyOBGiQoRBAMZN14W4kIREnTlBTUoRtFFSHAgwQteIihKFI3fGWq0mXRPV731V/U5fz0Fh56Z+r9T53/ON/1Wd90uO+ZCgAABAgQCgcuCGiUECBAgQOCYANEEBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAA0QMECBAgEAkIkIhNEQECBAgIED1AgAABApGAAInYFBEgQICAANEDBAgQIBAJCJCITREBAgQICBA9QIAAAQKRgACJ2BQRIECAgADRAwQIECAQCQiQiE0RAQIECAgQPUCAAAECkYAAidgUESBAgIAAGaMHTtYyr61x5WK5j9TX+2rcP8byrZIAgTkKCJC+d/VULe/WGsdrPF7jisVyH6uvbe8ernGmxtm+T8PqOhNwh6SzDRl1OQKk3527p5Z23ZLLu7eOu37JYx22uwLukOzu3m/kzAXIRljXnnSV8LhwY0JkbfZZT9D6461LnqFeWhJq1w8TIP11QLuXeHe4rBv8OiuUm3eZOyTz3t8jOzsBcmT0B97wg3XNiXBZD1Xd1WGtsnkKuEMyz33t4qwESBfb8L9FtAc3f1zj8nBZ/6y69mytn4f1yuYn4A7J/Pa0mzMSIN1sxfmF3FjjzhoXnm216uras7NuqXHXqoWOn6WAOySz3NZ+TkqA9LMXbSWna9y25pJuX8yz5jTKZyDgDskMNrHnUxAgfe2OAOlrP0ZfjX4afQc7X78A6WuD3GPsaz9GX40AGX0HO1+/AOlrg/zOuq/9GH017pCMvoOdr1+A9LdBnjXT356MuqIp7pC8pk7ee66N2gEbXrcA2TBwMP2pqvFCwgBOyb4C7pBojI0JCJCN0a41sVcOr8WneI+AOyTaYWMCAmRjtGtPvEqIeO+itblnPcEqvXQBQk/NuiWmOTkBMo3jpmZp9x69nfumdHdrXm+muFv7vZWzFSBbYV77Rq6pGdqDmT5Qam3KnZ7AHZKd3v7pT16ATG9qRgK9C+z3gVLtPdi8h1rvO9fZ+gRIZxtiOQQIEBhFQICMslPWSYAAgc4EBEhnG2I5BAgQGEVAgIyyU9ZJgACBzgQESGcbYjkECBAYRUCAjLJT1kmAAIHOBARIZxtiOQQIEBhFQICMslPWSYAAgc4EBEhnG2I5BAgQGEVAgIyyU9ZJgACBzgQESGcbYjkECBAYRUCAjLJT1kmAAIHOBARIZxtiOQQIEBhFQICMslPWSYAAgc4EBEhnG2I5BAgQGEVAgIyyU9ZJgACBzgQESGcbYjkECBAYRUCAjLJT1kmAAIHOBARIZxtiOQQIEBhFQICMslPWSYAAgc4EBEhnG2I5BAgQGEVAgIyyU9ZJgACBzgQESGcbYjkECBAYRUCAjLJT1kmAAIHOBARIZxtiOQQIEBhFQICMslPWSYAAgc4EBEhnG2I5BAgQGEVAgIyyU9ZJgACBzgQESGcbYjkECBAYRUCAjLJT1kmAAIHOBARIZxtiOQQIEBhFQICstlMn6/Bra1y5KHukvt5X4/7VpnE0AQIExhcQIMvt4ak67NYax2s8XuOKRdlj9bUZPlzjTI2zy03nKAIECIwvIEAO38N76pDrDj/s/BH31rh+yWMdRoAAgaEFBMilt2+V8LgwkxAZ+r+ExRMgsKyAADlY6lRddfeykBcdd0P9/WxYq4wAAQJDCAiQg7fpwbrqxBq7+I+q/VuNn9X4Yo1v1Xh0jfmUEiBAoCsBAbL/dlxT/9yeXXX5xLv1QM3304uGUJkY2XQECGxHQIDs73xj/fOdNS4822qTu/H3mvwnNVq4tGdyndvkjZmbAAECUwkIkP0lT9c/3zYV8orzfK6Ov2XFGocTIEBg6wICpL8AaSv6RY2bavxg6x3hBgkQILCkgADZH2qbv8K61FZ9ra68Q5As2c0OI0BgqwICZH/u9iB6e7D7yVvdjYNvTJB0shGWQYDA/wUEyMHd8Ju66oUDN8ufau2/rdEeoD9d49zA52LpBAh0KCBADt6UU3VV+kLCDrf62LdrUR+s8cseF2dNBAiMJyBALr1n/6mr52b0/Tqnr9b4So0/jNeyVkyAQC8Cc/vmOLVr+7XPi6eetKP5vr4IkxYoLgQIEFhJQIBcmuvTi1/7rIQ64MHtLerbW698s8bHa/g114CbaMkEti0gQC4tflVd/ettb0oHt9feB+wLNdo7C7f38nIhQIDAEwQEyOFN8eE65JOHHzbbI84tgqSFSRt/ne2ZOjECBFYSECDLce16iOxV+s6eQDmqn07aT4btEyJfWuNlNZ693DZOclR7YkV7/7L2FOn2UcYP1fj9Yvxuz5//OMmtPXGSdu4fqPGOGi+q8ZRDbudfdX17Snp7vOuzNc5taF2m3UEBAbL8prf/uO+r8eYj+Ka1/Cq3e2R77OTPNX5U4/M1vrGFm/9S3cZ7tnA7c72JT9SJfXSuJ+e8tisgQKb3fmZN+aqLRrunvAuXdm/3e4tA+eHia7tXvu6lvaCzvb3Mh2o8Y93J1J9/ssTbORBYV0CArCu4XH0LlbfVaL96aG+Tso23iV9uZY7aVQE/iezqzk943gJkQswVpnr94t70O1eocSiBqQVeUhOem3pS8+2OgAA52r0WJEfrv+u3froAbt91BOefCwiQ3G7KyhYk7UHoV0w5qbkIHCLw3br+TZQIpAICJJXbTF37GN2bNzO1WQk8QaC9Y/NzuBBIBQRIKre5uqtq6qN6jcPmzsrMvQr4HtDrzgywLs0zwCatuMR31fFttBeauRA4TMD3gMOEXH+ggOaZb3M8t07t3YswecN8T9OZrSHgV1hr4Cmd32dd2NP9BV5e//yZGm8BRGCPgAfRtcNaAn4CWYtvuOKrasWna7RnfZ2o8aThzsCCpxRoveBpvFOK7thcAmTHNvyi031l/f26xWjv8eWyWwJeSLhb+z352QqQyUmHnfDpe8KkhUr7acVlvgIfqVP71HxPz5ltQ0CAbEN5zNu48NPJ+2v5V495ClZ9gIDw0BqTCAiQSRhnP0l7EP5jNdqrlp9V4/LOzvgvtZ47atxVo31Ox6Yu7UV3z1+MF+z5c3s86WSN9q7BT6ux7ceWHq3bbJ8i+e8ax2s8r8bezwnxmSCb6ogdn1eA7HgDhKffvnm+tsbrFl/feNE3rHDaqOzLVfXeqFIRAQJrCQiQtfgU7xFony9xU41X13hqjfaYyiYu7bULv6rxQI0zNc5t4kbMSYDA4QIC5HAjRxAgQIDAPgICRFsQIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCQgQCI2RQQIECAgQPQAAQIECEQCAiRiU0SAAAECAkQPECBAgEAkIEAiNkUECBAgIED0AAECBAhEAgIkYlNEgAABAgJEDxAgQIBAJCBAIjZFBAgQICBA9AABAgQIRAICJGJTRIAAAQICRA8QIECAQCTwX7Oi9pHUmqOvAAAAAElFTkSuQmCC');
/*!40000 ALTER TABLE `drawings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-22 14:03:22
