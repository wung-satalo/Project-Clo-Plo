-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 12 มี.ค. 2025 เมื่อ 11:23 PM
-- เวอร์ชันของเซิร์ฟเวอร์: 8.0.41-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloplo`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `cognitive`
--

CREATE TABLE `cognitive` (
  `id` int NOT NULL,
  `R` varchar(255) NOT NULL,
  `U` varchar(255) NOT NULL,
  `Ap` varchar(255) NOT NULL,
  `An` varchar(255) NOT NULL,
  `E` varchar(255) NOT NULL,
  `C` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `cognitive`
--

INSERT INTO `cognitive` (`id`, `R`, `U`, `Ap`, `An`, `E`, `C`) VALUES
(1, 'ระบุ', 'อธิบาย', 'ใช้', 'จำแนก', 'ตัดสิน', 'ออกแบบ'),
(2, 'ระลึก', 'แปล', 'แทน', 'แยกแยะ', 'เลือก', 'สร้าง'),
(3, 'บอก', 'ถอดความ', 'เปลี่ยนแปลง', 'เปรียบเทียบ', 'เรียงลำดับ', 'เสนอสิ่งใหม่'),
(4, 'ท่อง', 'ยกตัวอย่าง', 'แก้ปัญหา', 'จัดประเภท', 'จัดอันดับ', 'ประดิษฐ์'),
(5, 'ให้รายการ', 'วาด', 'เสนอ', 'จุดเน้น', 'ประเมิน', 'วางแผน'),
(6, 'ทำซ้ำ', 'ภาพประกอบ', 'แก้ไข', 'บอกความ', 'ป้องกัน', 'เสนอ'),
(7, 'จำ', 'จัดหมู่', 'ประยุกต์', 'แตกต่าง', 'โต้แย้ง', 'จัดตั้ง'),
(8, 'ให้ความหมาย', 'ย่อความ', 'เตรียมดำเนินการ', 'คาดการณ์', 'วิพากษ์วิจารณ์', 'ริเริ่ม'),
(9, 'นิยาม', 'สรุป', 'เลือกใช้', 'หาความสัมพันธ์', 'กำหนด', 'ทำนาย'),
(10, 'เล่า', 'ตีความ', 'สาธิต', 'หาเหตุผลและผล', '', 'แต่ง'),
(11, 'ชี้', 'แสดงแผนผัง', 'จัดการ', 'วิเคราะห์', '', ''),
(12, 'บอกนิยาม', 'บอกใจความสำคัญ', 'ประยุกต์ใช้', 'วิเคราะห์ออกแบบ', '', ''),
(13, 'บ่ง', 'อภิปราย', 'เขียน', 'คิด', '', ''),
(14, 'จับคู่', 'เปรียบเทียบ', 'แสดง', 'คิดวิเคราะห์', '', ''),
(15, 'บรรยาย', '', 'จัด', '', '', ''),
(16, 'จำลอง', '', 'จัดชั้น', '', '', ''),
(17, '', '', 'แสดงออก', '', '', '');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `CognitiveDomain`
--

CREATE TABLE `CognitiveDomain` (
  `word_id` int NOT NULL,
  `Bloomlevel` varchar(255) NOT NULL,
  `WordsBloom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `CognitiveDomain`
--

INSERT INTO `CognitiveDomain` (`word_id`, `Bloomlevel`, `WordsBloom`) VALUES
(1, 'Remember', 'ระบุ,ระลึก,บอก,ท่อง,ให้รายการ,ทำซ้ำ,จำ,ให้ความหมาย,นิยาม,เล่า,ชี้,บอกนิยาม,บ่ง,จับคู่,บรรยาย,จำลอง'),
(2, 'Understand', 'อธิบาย,แปล,ถอดความ,ยกตัวอย่าง,วาด,ภาพประกอบ,จัดหมู่,ย่อความ,นิยาม,สรุป,ตีความ,แสดงแผนผัง,บอกใจความสำคัญ,อภิปราย,เปรียบเทียบ'),
(3, 'Apply', 'ใช้,แทน,เปลี่ยนแปลง,แก้ปัญหา,เสนอ,แก้ไข,ประยุกต์,เตรียมดำเนินการ,เลือกใช้,สาธิต,จัดการ,ประยุกต์ใช้,เขียน,แสดง,จัด,จัดชั้น,แสดงออก'),
(4, 'Analyze', 'จำแนก,แยกแยะ,เปรียบเทียบ,จัดประเภท,จุดเน้น,บอกความ,แตกต่าง,คาดการณ์,หาความสัมพันธ์,หาเหตุและผล,วิเคราะห์,วิเคราะห์ออกแบบ,คิด,คิดวิเคราะห์'),
(5, 'Evaluate', 'ตัดสิน,เลือก,เรียงลำดับ,จัดอันดับ,ประเมิน,ป้องกัน,โต้แย้ง,วิพากษ์วิจารณ์,กำหนด'),
(6, 'Create', 'ออกแบบ,สร้าง,เสนอสิ่งใหม่,ประดิษฐ์,วางแผน,เสนอ,จัดตั้ง,ริเริ่ม,ทำนาย');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `conjunction`
--

CREATE TABLE `conjunction` (
  `id` int NOT NULL,
  `word_con` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `conjunction`
--

INSERT INTO `conjunction` (`id`, `word_con`) VALUES
(1, 'และ'),
(2, 'หรือ'),
(3, 'ได้'),
(4, 'แต่'),
(5, 'จึง'),
(6, 'เพราะ'),
(7, 'ของ'),
(8, 'มี'),
(9, 'ใน'),
(10, 'ที่'),
(12, 'การ'),
(13, 'เพื่อ'),
(14, 'กับ'),
(15, 'โดย'),
(16, 'ทาง');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `google_id` varchar(150) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `google_id`, `faculty`, `major`, `university`) VALUES
(540, '(มคอ. 2) วิทยาศาสตรบัณฑิต พ.ศ. 2565', '103191121162269598250', 'วิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 'มหาวิทยาลัยศิลปากร'),
(541, '(มคอ. 2) วิทยาศาสตรบัณฑิต พ.ศ. 2565', '103191121162269598250', 'วิทยาศาสตร์', 'เทคโนโลยีสารสนเทศ', 'มหาวิทยาลัยศิลปากร');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `learning_outcomes`
--

CREATE TABLE `learning_outcomes` (
  `id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `program_learning_outcomes_number` int DEFAULT NULL,
  `program_learning_outcome_text` text,
  `cognitive_domain` enum('Null','R','U','Ap','An','E','C') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `psychomotor_domain` enum('Null','S') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `affective_domain` enum('Null','At') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_type` enum('general','specific') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `learning_outcomes`
--

INSERT INTO `learning_outcomes` (`id`, `course_id`, `program_learning_outcomes_number`, `program_learning_outcome_text`, `cognitive_domain`, `psychomotor_domain`, `affective_domain`, `created_at`, `order_type`) VALUES
(294, 540, 1, 'อธิบายความหมายและคุณค่าของศิลปะและการสร้างสรรค์ได้', 'U', 'Null', 'Null', '2024-03-16 09:34:22', 'general'),
(295, 540, 2, 'อภิปรายความหมายของความหลากหลายทางวัฒนธรรมได้ ', 'U', 'Null', 'Null', '2024-03-16 09:34:37', 'general'),
(296, 540, 3, 'ระบุความรู้เบื้องต้นเกี่ยวกับการประกอบธุรกิจและทักษะพื้นฐานที่จำเป็นต่อการเป็นผู้ประกอบการได้', 'U', 'Null', 'Null', '2024-03-16 09:35:21', 'general'),
(297, 540, 4, 'มีทักษะการใช้ภาษา และสื่อสารได้ตรงตามวัตถุประสงค์ในบริบทการสื่อสารที่หลากหลาย', 'Ap', 'Null', 'Null', '2024-03-16 09:35:43', 'general'),
(298, 540, 5, 'เลือกใช้เทคโนโลยีสารสนเทศและการสื่อสารได้ตรงตามวัตถุประสงค์ ตลอดจนรู้เท่าทันสื่อและสารสนเทศ', 'Ap', 'Null', 'Null', '2024-03-16 09:35:56', 'general'),
(299, 540, 6, 'แสวงหาความรู้ได้ด้วยตนเอง และนำความรู้ไปใช้ในการพัฒนาตนเองและการดำเนินชีวิต', 'Ap', 'Null', 'At', '2024-03-16 09:36:10', 'general'),
(300, 540, 7, 'แสดงออกซึ่งทักษะความสัมพันธ์ระหว่างบุคคล สามารถทำงานร่วมกับผู้อื่นได้ มีระเบียบวินัย ตรงต่อเวลา ซื่อสัตย์สุจริต มีความรับผิดชอบต่อตนเอง  สังคม และสิ่งแวดล้อม', 'Ap', 'Null', 'At', '2024-03-16 09:36:24', 'general'),
(301, 540, 8, 'ใช้ความคิดสร้างสรรค์ในการสร้างผลงานหรือดำเนินโครงการได้', 'Ap', 'Null', 'Null', '2024-03-16 09:36:38', 'general'),
(302, 540, 9, 'คิดวิเคราะห์ วางแผน อย่างเป็นระบบ เพื่อแก้ไขปัญหาหรือเพื่อออกแบบนวัตกรรมได้', 'An', 'Null', 'Null', '2024-03-16 09:36:55', 'general'),
(303, 540, 10, 'อธิบายหลักการทำงานและแนวคิดของระบบและเทคโนโลยีทางด้านคอมพิวเตอร์ สารสนเทศและการสื่อสาร', 'U', 'Null', 'Null', '2024-03-16 09:37:13', 'specific'),
(304, 540, 11, 'จัดการระบบไฟล์ข้อมูลและระบบฐานข้อมูลตามบริบทของปัญหา', 'Ap', 'Null', 'Null', '2024-03-16 09:37:30', 'specific'),
(305, 540, 12, 'ประยุกต์ใช้อัลกอริทึมและโปรแกรมในการแก้ปัญหาทางด้านคอมพิวเตอร์ภายใต้สภาวะแวดล้อมที่กำหนด', 'Ap', 'Null', 'Null', '2024-03-16 09:37:44', 'specific'),
(306, 540, 13, 'กำหนดขอบเขตการทำงาน ติดตั้งพร้อมตั้งค่าการใช้งานระบบคอมพิวเตอร์และเครือข่าย', 'Ap', 'Null', 'Null', '2024-03-16 09:37:58', 'specific'),
(307, 540, 14, 'ประยุกต์ใช้ความรู้ในการแก้ปัญหาด้านการรักษาความมั่นคงปลอดภัยของข้อมูลของระบบคอมพิวเตอร์ภายใต้กฎหมายโดยยึดหลักจริยธรรมของการใช้ข้อมูลและสารสนเทศ', 'Ap', 'Null', 'At', '2024-03-16 09:38:14', 'specific'),
(308, 540, 15, 'ปฏิบัติงานภายใต้รูปแบบของการทำงานเป็นทีมเพื่อบรรลุเป้าหมายในการดำเนินงานร่วมกัน', 'Null', 'Null', 'At', '2024-03-16 09:38:25', 'specific'),
(309, 540, 16, 'พูดและเขียนทั้งภาษาไทยและภาษาอังกฤษ เพื่อสื่อสารทำความเข้าใจในด้านวิทยาการคอมพิวเตอร์', 'Ap', 'Null', 'Null', '2024-03-16 09:38:39', 'specific'),
(310, 540, 17, 'ติดตามข่าวสาร ข้อมูลและความก้าวหน้าทางเทคโนโลยีที่เกี่ยวข้องกับงานด้านวิทยาการคอมพิวเตอร์', 'Ap', 'Null', 'Null', '2024-03-16 09:38:51', 'specific'),
(311, 540, 18, 'วิเคราะห์ ออกแบบและพัฒนา\nระบบคอมพิวเตอร์เพื่อแก้ไข\nปัญหาให้ตรงตามความต้องการ\nของผู้ใช้และบูรณาการตามบริบท\nของสังคม', 'An', 'Null', 'At', '2024-03-16 09:39:06', 'specific'),
(312, 541, 1, 'อธิบายความหมายและคุณค่าของศิลปะและการสร้างสรรค์ได้', 'U', 'Null', 'Null', '2024-03-16 09:42:01', 'general'),
(313, 541, 2, 'อภิปรายความหมายของความหลากหลายทางวัฒนธรรมได้ ', 'U', 'Null', 'Null', '2024-03-16 09:42:12', 'general'),
(314, 541, 3, 'ระบุความรู้เบื้องต้นเกี่ยวกับการประกอบธุรกิจและทักษะพื้นฐานที่จำเป็นต่อการเป็นผู้ประกอบการได้', 'U', 'Null', 'Null', '2024-03-16 09:42:23', 'general'),
(315, 541, 4, 'มีทักษะการใช้ภาษา และสื่อสารได้ตรงตามวัตถุประสงค์ในบริบทการสื่อสารที่หลากหลาย', 'Ap', 'Null', 'Null', '2024-03-16 09:42:34', 'general'),
(316, 541, 5, 'เลือกใช้เทคโนโลยีสารสนเทศและการสื่อสารได้ตรงตามวัตถุประสงค์ ตลอดจนรู้เท่าทันสื่อและสารสนเทศ', 'Ap', 'Null', 'Null', '2024-03-16 09:42:46', 'general'),
(317, 541, 6, 'แสวงหาความรู้ได้ด้วยตนเอง และนำความรู้ไปใช้ในการพัฒนาตนเองและการดำเนินชีวิต', 'Ap', 'Null', 'At', '2024-03-16 09:43:00', 'general'),
(318, 541, 7, 'แสดงออกซึ่งทักษะความสัมพันธ์ระหว่างบุคคล สามารถทำงานร่วมกับผู้อื่นได้ มีระเบียบวินัย ตรงต่อเวลา ซื่อสัตย์สุจริต มีความรับผิดชอบต่อตนเอง  สังคม และสิ่งแวดล้อม', 'Ap', 'Null', 'At', '2024-03-16 09:43:13', 'general'),
(319, 541, 8, 'ใช้ความคิดสร้างสรรค์ในการสร้างผลงานหรือดำเนินโครงการได้', 'Ap', 'Null', 'Null', '2024-03-16 09:43:26', 'general'),
(320, 541, 9, 'คิดวิเคราะห์ วางแผน อย่างเป็นระบบ เพื่อแก้ไขปัญหาหรือเพื่อออกแบบนวัตกรรมได้', 'An', 'Null', 'Null', '2024-03-16 09:43:37', 'general'),
(321, 541, 10, 'อธิบายหลักการและองค์ประกอบของเทคโนโลยีสารสนเทศได้', 'U', 'Null', 'Null', '2024-03-16 09:43:51', 'specific'),
(322, 541, 11, 'อธิบายสาระสำคัญของจริยธรรมและกฎหมายทางด้านเทคโนโลยีสารสนเทศ', 'U', 'Null', 'At', '2024-03-16 09:44:03', 'specific'),
(323, 541, 12, 'ออกแบบ ติดตั้ง และจัดการระบบฐานข้อมูลได้', 'Ap', 'Null', 'Null', '2024-03-16 09:44:17', 'specific'),
(324, 541, 13, 'ประยุกต์ใช้หลักการของเครือข่ายคอมพิวเตอร์และกลไกสำหรับรักษาความปลอดภัยของระบบสารสนเทศได้', 'Ap', 'Null', 'At', '2024-03-16 09:44:32', 'specific'),
(325, 541, 14, 'พัฒนาระบบเว็บแอปพลิเคชันให้เหมาะสมกับงานทางธุรกิจได้', 'Ap', 'Null', 'Null', '2024-03-16 09:44:48', 'specific'),
(326, 541, 15, 'จัดเตรียมสภาวะแวดล้อมที่เหมาะสมต่อการพัฒนาระบบสารสนเทศได้', 'Ap', 'Null', 'Null', '2024-03-16 09:45:01', 'specific'),
(327, 541, 16, 'ติดตั้ง ทดสอบ และบำรุงรักษา ระบบสารสนเทศที่พัฒนาขึ้นได้', 'Ap', 'S', 'Null', '2024-03-16 09:45:21', 'specific'),
(328, 541, 17, 'เก็บรวบรวมข้อมูล จัดการข้อมูล วิเคราะห์ข้อมูล และนำเสนอข้อมูลในรูปแบบที่หลากหลายได้', 'Ap', 'Null', 'At', '2024-03-16 09:45:44', 'specific'),
(329, 541, 18, 'พัฒนาโปรแกรมประยุกต์ได้\n\n', 'Ap', 'Null', 'Null', '2024-03-16 09:45:57', 'specific'),
(330, 541, 19, 'รวบรวม สืบค้น ทดลองประยุกต์ใช้ความรู้และเทคโนโลยีใหม่ได้ด้วยตนเอง และสามารถทำงานเป็นทีม', 'Ap', 'Null', 'At', '2024-03-16 09:46:10', 'specific'),
(331, 541, 20, 'วิเคราะห์และออกแบบระบบงานด้านเทคโนโลยีสารสนเทศได้', 'An', 'Null', 'Null', '2024-03-16 09:46:23', 'specific'),
(332, 541, 21, 'วิเคราะห์ วางแผน หรือพัฒนาระบบงานที่มีการบูรณาการความรู้ในสาขาเทคโนโลยีสารสนเทศที่สามารถใช้งานได้', 'An', 'Null', 'Null', '2024-03-16 09:46:34', 'specific');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `synonym`
--

CREATE TABLE `synonym` (
  `id` int NOT NULL,
  `word_a` varchar(255) NOT NULL,
  `word_b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `synonym`
--

INSERT INTO `synonym` (`id`, `word_a`, `word_b`) VALUES
(1, 'สารสนเทศ', 'ศิลปะ'),
(2, 'INFORMATION', 'ศิลป์'),
(3, 'information', 'ศิลป'),
(4, 'Information', 'art'),
(5, 'สารนิเทศ ', 'arts'),
(6, 'สนเทศ', 'ART'),
(7, '', 'Art'),
(8, '', 'Arts');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `synonyms`
--

CREATE TABLE `synonyms` (
  `word_id` int NOT NULL,
  `synonym` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `synonyms`
--

INSERT INTO `synonyms` (`word_id`, `synonym`) VALUES
(1, 'happy,joyful,content,pleased,มีความสุข,สุข'),
(2, 'sad,unhappy,mournful,melancholy,เศร้า,เสียใจ'),
(3, 'เทคโนโลยีสารสนเทศ,INFORMATIONTECHNOLOGY'),
(4, 'สารสนเทศ,สนเทศ,สารนิเทศ,INFORMATION,information'),
(5, 'แอปพลิเคชัน,Application,application,app'),
(6, 'โครงสร้างข้อมูล,data structure,Data structure');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `google_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- dump ตาราง `users`
--

INSERT INTO `users` (`id`, `google_id`, `name`, `email`, `profile_image`) VALUES
(1, '103191121162269598250', 'นม กล้วย', 'earthzacap000@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJbwFuTFDK_BkQonU2U2PUC8ximWxg-gG9Xai7hz4w6qfQ=s96-c'),
(2, '117490264458309792333', 'Suriya Wongaiyara', 'wongaiyara_s@silpakorn.edu', 'https://lh3.googleusercontent.com/a/ACg8ocLIHSZaq_7tRhjSm-U64ZcYz-O7Y-vD1Ol3gYr8fCNb=s96-c'),
(3, '104421886508807481891', 'Suriya Wongaiyara', 'wongaiyara_s@old.silpakorn.edu', 'https://lh3.googleusercontent.com/a/ACg8ocJZF5xW3fUm257Kk-8xqZgslHPcK_vq0CDN7Zp7j0JwlQ=s96-c');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `word_warning`
--

CREATE TABLE `word_warning` (
  `id` int NOT NULL,
  `maybe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `word_warning`
--

INSERT INTO `word_warning` (`id`, `maybe`) VALUES
(1, 'สามารถ');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `word_wort`
--

CREATE TABLE `word_wort` (
  `id` int NOT NULL,
  `word` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- dump ตาราง `word_wort`
--

INSERT INTO `word_wort` (`id`, `word`) VALUES
(1, 'อย่างมีประสิทธิภาพ'),
(2, 'อย่างเหมาะสม'),
(3, 'อย่างเป็นระบบ'),
(4, 'อย่างสร้างสรรค์'),
(5, 'อย่างมืออาชีพ'),
(6, 'ศาสตร์ที่เกี่ยวข้อง'),
(7, 'สาขาที่เกี่ยวข้อง'),
(8, 'รู้จัก'),
(9, 'เข้าใจ'),
(10, 'ตระหนัก'),
(11, 'เห็นคุณค่า'),
(12, 'ซาบซึ้ง'),
(13, 'มีความรู้ความเข้าใจ'),
(14, 'มีทักษะ'),
(15, 'มีคุณธรรมและจริยธรรม'),
(16, 'มีความคิดสร้างสรรค์'),
(17, 'มีจิตอาสา'),
(18, 'มีจิตวิญญาณของ'),
(19, 'แสดงออกซึ่งทักษะ'),
(20, 'แสดงความคิดสร้างสรรค์'),
(21, 'เสดงความมีคุณธรรมจริยธรรม'),
(22, 'แสดงออกซึ่งความมีจิตอาสา');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cognitive`
--
ALTER TABLE `cognitive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CognitiveDomain`
--
ALTER TABLE `CognitiveDomain`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `conjunction`
--
ALTER TABLE `conjunction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_outcomes`
--
ALTER TABLE `learning_outcomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `synonym`
--
ALTER TABLE `synonym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `synonyms`
--
ALTER TABLE `synonyms`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `google_id` (`google_id`);

--
-- Indexes for table `word_warning`
--
ALTER TABLE `word_warning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word_wort`
--
ALTER TABLE `word_wort`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cognitive`
--
ALTER TABLE `cognitive`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `conjunction`
--
ALTER TABLE `conjunction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `learning_outcomes`
--
ALTER TABLE `learning_outcomes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `synonym`
--
ALTER TABLE `synonym`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `synonyms`
--
ALTER TABLE `synonyms`
  MODIFY `word_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `word_warning`
--
ALTER TABLE `word_warning`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `word_wort`
--
ALTER TABLE `word_wort`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `learning_outcomes`
--
ALTER TABLE `learning_outcomes`
  ADD CONSTRAINT `learning_outcomes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
