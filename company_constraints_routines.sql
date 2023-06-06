-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: company_constraints
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `employees_salary_view`
--

DROP TABLE IF EXISTS `employees_salary_view`;
/*!50001 DROP VIEW IF EXISTS `employees_salary_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_salary_view` AS SELECT 
 1 AS `Name`,
 1 AS `sex`,
 1 AS `Salary`,
 1 AS `Dpt_Number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_salary_view3`
--

DROP TABLE IF EXISTS `employees_salary_view3`;
/*!50001 DROP VIEW IF EXISTS `employees_salary_view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_salary_view3` AS SELECT 
 1 AS `Name`,
 1 AS `Dependent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_salary_27000_view`
--

DROP TABLE IF EXISTS `employees_salary_27000_view`;
/*!50001 DROP VIEW IF EXISTS `employees_salary_27000_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_salary_27000_view` AS SELECT 
 1 AS `Name`,
 1 AS `Salary`,
 1 AS `Dpt_Number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_salary_view2`
--

DROP TABLE IF EXISTS `employees_salary_view2`;
/*!50001 DROP VIEW IF EXISTS `employees_salary_view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_salary_view2` AS SELECT 
 1 AS `Name`,
 1 AS `Salary`,
 1 AS `Dpt_Number`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employees_salary_view`
--

/*!50001 DROP VIEW IF EXISTS `employees_salary_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_salary_view` AS select concat(`employee`.`Fname`,' ',`employee`.`Minit`,' ',`employee`.`Lname`) AS `Name`,`employee`.`sex` AS `sex`,`employee`.`Salary` AS `Salary`,`employee`.`Dno` AS `Dpt_Number` from `employee` where (`employee`.`sex` = 'M') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_salary_view3`
--

/*!50001 DROP VIEW IF EXISTS `employees_salary_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_salary_view3` AS select concat(`e`.`Fname`,' ',`e`.`Minit`,' ',`e`.`Lname`) AS `Name`,`d`.`Dependent_name` AS `Dependent` from (`employee` `e` join `dependent` `d` on((`e`.`Ssn` = `d`.`Essn`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_salary_27000_view`
--

/*!50001 DROP VIEW IF EXISTS `employees_salary_27000_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_salary_27000_view` AS select concat(`employee`.`Fname`,' ',`employee`.`Minit`,' ',`employee`.`Lname`) AS `Name`,`employee`.`Salary` AS `Salary`,`employee`.`Dno` AS `Dpt_Number` from `employee` where (`employee`.`Salary` > 26999) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_salary_view2`
--

/*!50001 DROP VIEW IF EXISTS `employees_salary_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_salary_view2` AS select concat(`employee`.`Fname`,' ',`employee`.`Minit`,' ',`employee`.`Lname`) AS `Name`,`employee`.`Salary` AS `Salary`,`employee`.`Dno` AS `Dpt_Number` from (`employee` join `dependent` on((`employee`.`Ssn` = `dependent`.`Essn`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06  9:20:32
