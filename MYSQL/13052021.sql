-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.62 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sem4
CREATE DATABASE IF NOT EXISTS `sem4` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sem4`;

-- Dumping structure for table sem4.account_exp9
CREATE TABLE IF NOT EXISTS `account_exp9` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.account_exp9: ~2 rows (approximately)
/*!40000 ALTER TABLE `account_exp9` DISABLE KEYS */;
INSERT INTO `account_exp9` (`username`, `password`) VALUES
	('anish', 'anish123'),
	('xyz', 'xyz123');
/*!40000 ALTER TABLE `account_exp9` ENABLE KEYS */;

-- Dumping structure for procedure sem4.c
DELIMITER //
CREATE PROCEDURE `c`(IN ph int,IN cid int)
BEGIN       
declare name varchar(20);                                                                                                          
    select cust_name into name from customer_m where cust_id=cid;                                                                 
    if name is null then                                        
 select 'Name is not there';                                                                                     
    ELSE                                                                                                                     
      update customer_m set cust_phone=ph where cust_id=cid;                                                                                          
    END IF;         
END//
DELIMITER ;

-- Dumping structure for procedure sem4.curdemo
DELIMITER //
CREATE PROCEDURE `curdemo`(id int)
begin
declare name varchar(255);
declare cur1 cursor for select stu_name from student where stu_id=id;
open cur1;
fetch cur1 into name;
select name;
close cur1;
end//
DELIMITER ;

-- Dumping structure for table sem4.customer_m
CREATE TABLE IF NOT EXISTS `customer_m` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.customer_m: ~2 rows (approximately)
/*!40000 ALTER TABLE `customer_m` DISABLE KEYS */;
INSERT INTO `customer_m` (`cust_id`, `cust_name`, `cust_phone`) VALUES
	(201, 'raja', 98567),
	(202, 'ravi', NULL);
/*!40000 ALTER TABLE `customer_m` ENABLE KEYS */;

-- Dumping structure for table sem4.exp2
CREATE TABLE IF NOT EXISTS `exp2` (
  `CUSTOMER_ID` varchar(20) DEFAULT NULL,
  `LOAN_NO` varchar(20) DEFAULT NULL,
  `AMOUNT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.exp2: ~6 rows (approximately)
/*!40000 ALTER TABLE `exp2` DISABLE KEYS */;
INSERT INTO `exp2` (`CUSTOMER_ID`, `LOAN_NO`, `AMOUNT`) VALUES
	('c_01', 'L_11', '900'),
	('c_01', 'L_23', '2000'),
	('c_03', 'L_93', '500'),
	('c_05', 'L_17', '1000'),
	('c_03', 'L_16', '1300'),
	('c_05', 'L_14', '1500');
/*!40000 ALTER TABLE `exp2` ENABLE KEYS */;

-- Dumping structure for table sem4.exp21
CREATE TABLE IF NOT EXISTS `exp21` (
  `BRANCH_NAME` varchar(20) DEFAULT NULL,
  `DEPOSITOR` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.exp21: ~5 rows (approximately)
/*!40000 ALTER TABLE `exp21` DISABLE KEYS */;
INSERT INTO `exp21` (`BRANCH_NAME`, `DEPOSITOR`) VALUES
	('Brighton', '1'),
	('Downtown', '1'),
	('Mianus', '2'),
	('Redwood', '1'),
	('Roundhill', '1');
/*!40000 ALTER TABLE `exp21` ENABLE KEYS */;

-- Dumping structure for table sem4.product_m
CREATE TABLE IF NOT EXISTS `product_m` (
  `product_name` varchar(25) NOT NULL,
  `product_price` decimal(4,2) DEFAULT NULL,
  `quantity_on_hand` int(5) DEFAULT NULL,
  `last_stock_date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.product_m: ~6 rows (approximately)
/*!40000 ALTER TABLE `product_m` DISABLE KEYS */;
INSERT INTO `product_m` (`product_name`, `product_price`, `quantity_on_hand`, `last_stock_date`) VALUES
	('Product1', 99.00, 1, '15-JAN-03'),
	('Product2', 75.00, 1000, '15-JAN-02'),
	('Product3', 50.00, 100, '15-JAN-03'),
	('Product4', 25.00, 10000, '14-JAN-03'),
	('Product5', 9.95, 1234, '15-JAN-04'),
	('Product6', 45.00, 1, '31-DEC-08');
/*!40000 ALTER TABLE `product_m` ENABLE KEYS */;

-- Dumping structure for table sem4.prod_m
CREATE TABLE IF NOT EXISTS `prod_m` (
  `product_name` varchar(25) NOT NULL,
  `product_price` decimal(4,2) DEFAULT NULL,
  `quantity_on_hand` int(5) DEFAULT NULL,
  `last_stock_date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.prod_m: ~6 rows (approximately)
/*!40000 ALTER TABLE `prod_m` DISABLE KEYS */;
INSERT INTO `prod_m` (`product_name`, `product_price`, `quantity_on_hand`, `last_stock_date`) VALUES
	('Product1', 99.00, 1, '15-JAN-03'),
	('Product2', 75.00, 1000, '15-JAN-02'),
	('Product3', 50.00, 100, '15-JAN-03'),
	('Product4', 25.00, 10000, '14-JAN-03'),
	('Product5', 9.95, 1234, '15-JAN-04'),
	('Product6', 45.00, 1, '31-DEC-08');
/*!40000 ALTER TABLE `prod_m` ENABLE KEYS */;

-- Dumping structure for table sem4.student
CREATE TABLE IF NOT EXISTS `student` (
  `stu_id` int(11) DEFAULT NULL,
  `stu_name` varchar(10) DEFAULT NULL,
  `stu_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.student: ~4 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`stu_id`, `stu_name`, `stu_class`) VALUES
	(1, 'david', 10),
	(2, 'shah', 20),
	(3, 'mike', 30),
	(3, 'maze', 40);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping structure for table sem4.student_m
CREATE TABLE IF NOT EXISTS `student_m` (
  `regno` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tamil` int(11) DEFAULT NULL,
  `english` int(11) DEFAULT NULL,
  `maths` int(11) DEFAULT NULL,
  `science` int(11) DEFAULT NULL,
  `social` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `average` int(11) DEFAULT NULL,
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sem4.student_m: ~1 rows (approximately)
/*!40000 ALTER TABLE `student_m` DISABLE KEYS */;
INSERT INTO `student_m` (`regno`, `name`, `tamil`, `english`, `maths`, `science`, `social`, `total`, `average`) VALUES
	(101, 'raja', 90, 95, 100, 100, 99, 484, 97);
/*!40000 ALTER TABLE `student_m` ENABLE KEYS */;

-- Dumping structure for trigger sem4.avg1
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER avg1 BEFORE INSERT ON student_m FOR EACH ROW                                                          
BEGIN
SET new.total=new.tamil+new.english+new.maths+new.science+new.social;
SET new.average=new.total/5;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
