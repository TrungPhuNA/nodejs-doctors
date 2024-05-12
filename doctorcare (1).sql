-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 06, 2024 at 04:38 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `introductionHTML` text,
  `introductionMarkdown` text,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `address`, `phone`, `introductionHTML`, `introductionMarkdown`, `description`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'FreeD.O.M. Clinic', '1056 SW 1st Ave, Ocala, FL 34471, United States', '+1 352-421-5510', '<p>WE PROVIDE FREE DENTAL, OPTICAL AND MEDICAL CARE. We are sponsored by the Marion County Hospital District to provide care for the uninsured and underinsured in Marion County. Our mission is to bring health, hope and healing to people in need.</p>', 'WE PROVIDE FREE DENTAL, OPTICAL AND MEDICAL CARE. We are sponsored by the Marion County Hospital District to provide care for the uninsured and underinsured in Marion County. Our mission is to bring health, hope and healing to people in need.', 'COVID-19 and EXERCISE - Ben Marciano (CEO of Zone Health & Fitness) interviews Dr. Don Bovell (FreeD.O.M. Clinic USA).', 'usa-az.jpg', '2020-11-13 19:44:36', '2020-11-13 20:44:20', NULL),
(2, 'Mayo Clinic Health System', '32 N Main St, Sherburn, MN 56171, United States', '', '<p>Questions about Patient Online Services?\nIf you have questions or are experiencing issues accessing your patient portal, contact Mayo Clinic Customer Assistance at 1-877-858-0398 weekdays from 7 a.m. to 7 p.m. CDT.</p>\n<p>Contact Us Online\nDo you have a question about our services or another topic?</p>\n<p>Use our online form to submit a question.\nUse Patient Online Services to securely contact your medical provider.\nCall or Visit Us\nWe have locations in Iowa, Minnesota and Wisconsin. Get phone numbers, addresses, maps and directions for each with our Find a Location page.</p>\n<p>Stay in Touch\nBe a Facebook fan.\nFollow us on Twitter.\nFollow our Pinterest boards.\nWatch us on YouTube.\nVisit our blog.</p>', 'Questions about Patient Online Services?\nIf you have questions or are experiencing issues accessing your patient portal, contact Mayo Clinic Customer Assistance at 1-877-858-0398 weekdays from 7 a.m. to 7 p.m. CDT.\n\nContact Us Online\nDo you have a question about our services or another topic?\n\nUse our online form to submit a question.\nUse Patient Online Services to securely contact your medical provider.\nCall or Visit Us\nWe have locations in Iowa, Minnesota and Wisconsin. Get phone numbers, addresses, maps and directions for each with our Find a Location page.\n\nStay in Touch\nBe a Facebook fan.\nFollow us on Twitter.\nFollow our Pinterest boards.\nWatch us on YouTube.\nVisit our blog.', 'Request an Appointment\r\nThe safety of our patients and staff is always our top priority. We are taking extra precautions across all sites to protect those who still need our care most during this time, in adherence with state and federal executive orders. Patients requesting appointments will be assessed to determine the care option to best meet their need, including video and in-person appointments.\r\n\r\nThere are several ways to request an appointment:', 'mayo-clinic-health-system.jpg', '2020-11-13 19:44:36', '2020-11-13 20:46:01', NULL),
(3, 'USA Campbell Clinics', ', West Hollywood, CA 90046, United States', NULL, NULL, NULL, NULL, 'campbell-clinic.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Stanton Road Clinic', '575 Stanton Rd, Mobile, AL 36617, United States', NULL, NULL, NULL, NULL, 'cleveland-clinic-usa.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Health & Wellness Clinic USA', '304, Coral Gables, FL 33134, United States', NULL, NULL, NULL, NULL, 'clinic-Ft-McCoy.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `timeBooking` varchar(255) DEFAULT NULL,
  `dateBooking` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `doctorId`, `timeBooking`, `dateBooking`, `name`, `phone`, `content`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(2, 2, '08:00 - 09:00', '15/11/2020', 'Alex', '0321456789', 'very good!', 1, '2020-11-15 08:25:42', '2020-11-15 08:25:56', NULL),
(3, 2, '10:00 - 11:00', '15/11/2020', 'Kane', '0321848484', 'excellent service. I love it', 1, '2020-11-15 08:28:51', '2020-11-15 08:28:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_users`
--

CREATE TABLE `doctor_users` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `clinicId` int(11) NOT NULL,
  `specializationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_users`
--

INSERT INTO `doctor_users` (`id`, `doctorId`, `clinicId`, `specializationId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, 1, 1, '2020-11-13 19:46:18', '2024-04-21 23:13:18', NULL),
(2, 3, 3, 3, '2020-11-13 20:19:56', '2024-04-21 23:13:29', NULL),
(3, 4, 2, 7, '2020-11-13 20:20:15', '2024-04-21 23:13:41', NULL),
(4, 5, 5, 4, '2020-11-13 20:20:26', '2024-04-21 23:13:53', NULL),
(5, 6, 2, 1, '2020-11-13 20:20:38', '2024-04-21 23:14:05', NULL),
(6, 7, 3, 1, '2020-11-13 20:20:53', '2024-04-21 23:14:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extrainfos`
--

CREATE TABLE `extrainfos` (
  `id` int(11) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `historyBreath` text,
  `placeId` int(11) DEFAULT NULL,
  `oldForms` text,
  `sendForms` text,
  `moreInfo` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extrainfos`
--

INSERT INTO `extrainfos` (`id`, `patientId`, `historyBreath`, `placeId`, `oldForms`, `sendForms`, `moreInfo`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 10, '', 1, NULL, NULL, '', '2024-04-21 23:30:58', '2024-04-21 23:30:58', NULL),
(2, 11, '12121', NULL, NULL, NULL, 'adada', '2024-04-21 23:36:54', '2024-04-21 23:36:54', NULL),
(3, 12, '', 1, NULL, NULL, '', '2024-04-21 23:40:16', '2024-04-21 23:40:16', NULL),
(4, 13, '', 1, NULL, NULL, '', '2024-05-04 16:03:52', '2024-05-04 16:03:52', NULL),
(5, 14, '', 1, NULL, NULL, '', '2024-05-04 16:05:40', '2024-05-04 16:05:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dateBooking` varchar(255) DEFAULT NULL,
  `timeBooking` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `address` text,
  `description` text,
  `isSentForms` tinyint(1) NOT NULL DEFAULT '0',
  `isTakeCare` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `doctorId`, `statusId`, `name`, `phone`, `dateBooking`, `timeBooking`, `email`, `gender`, `year`, `address`, `description`, `isSentForms`, `isTakeCare`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(4, 2, 1, 'Alex', '0321456789', '15/11/2020', '08:00 - 09:00', 'alex@gmail.com', 'male', '1998', 'usa', 'aaaaaaaaaaaaaaaaaa', 1, 0, '2020-11-14 20:20:18', '2020-11-14 20:22:14', NULL),
(5, 2, 1, 'Kane', '0321848484', '15/11/2020', '10:00 - 11:00', 'kane@gmail.com', 'male', '1997', 'usa', '', 0, 0, '2020-11-15 08:27:25', '2020-11-15 08:27:40', NULL),
(6, 2, 4, 'Phan Phú', '0909111222', '22/04/2024', '10:00 - 11:00', 'phupt.humg.94@gmail.com', 'male', '20', 'Hà Nội', '', 0, 0, '2024-04-21 23:24:15', '2024-04-21 23:24:15', NULL),
(7, 2, 4, 'TrungPhuNA', '0986420994', '22/04/2024', '16:00 - 17:00', 'doantotnghiep@gmail.com', 'male', '11', 'Ha Nội', '', 1, 0, '2024-04-21 23:24:56', '2024-04-21 23:49:07', NULL),
(8, 2, 4, 'TrungPhuNA', '0986420994', '22/04/2024', '14:00 - 15:00', 'doantotnghiep@gmail.com', 'male', '20', 'Ha Nội', 'Mô tả', 0, 0, '2024-04-21 23:28:21', '2024-04-21 23:28:21', NULL),
(9, 2, 4, 'TrungPhuNA', '0986420994', '22/04/2024', '11:00 - 12:00', 'doantotnghiep@gmail.com', 'male', '10', 'Ha Nội', '111', 0, 0, '2024-04-21 23:29:51', '2024-04-21 23:29:51', NULL),
(10, 2, 4, 'TrungPhuNA', '0986420994', '22/04/2024', '10:00 - 11:00', 'doantotnghiep@gmail.com', 'male', '20', 'Ha Nội', '', 0, 0, '2024-04-21 23:30:58', '2024-04-21 23:30:58', NULL),
(11, 2, 4, 'TrungPhuNA', '0986420994', '22/04/2024', '10:00 - 11:00', 'phupt.humg.94@gmail.com', 'male', '20', 'Ha Nội', 'Chưa', 0, 0, '2024-04-21 23:36:54', '2024-04-21 23:36:54', NULL),
(12, 2, 4, 'TrungPhuNA', '0986420994', '22/04/2024', '13:00 - 14:00', 'doantotnghiep@gmail.com', 'male', '20', 'Ha Nội', '', 0, 0, '2024-04-21 23:40:16', '2024-04-21 23:40:16', NULL),
(13, 2, 1, 'Phú', '0986420994', '05/05/2024', '08:00 - 09:00', 'doantotnghiep@gmail.com', 'male', '20', 'Ha Nội', '212121', 0, 0, '2024-05-04 16:03:52', '2024-05-04 16:04:54', NULL),
(14, 2, 1, 'Phú đặt', '0986420994', '05/05/2024', '15:00 - 16:00', 'phudat@gmail.com', 'male', '30', 'Thôn thuận yên - Xã Quỳnh ngọc - Quỳnh Lưu - Nghệ An', 'Chờ xác thực', 0, 0, '2024-05-04 16:05:40', '2024-05-04 16:06:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'New York City', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Los Angeles County', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'Chicago', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Childress, Texas', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Norton, Kan.', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contentMarkdown` text,
  `contentHTML` text,
  `forDoctorId` int(11) DEFAULT NULL,
  `forSpecializationId` int(11) DEFAULT NULL,
  `forClinicId` int(11) DEFAULT NULL,
  `writerId` int(11) NOT NULL,
  `confirmByDoctor` tinyint(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `contentMarkdown`, `contentHTML`, `forDoctorId`, `forSpecializationId`, `forClinicId`, `writerId`, `confirmByDoctor`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'THE SPECIALIST : Otolaryngology', '####What is Otolaryngology?\n\nOtolaryngology is a medical specialty which is focused on the ears, nose, and throat. It is also called otolaryngology-head and neck surgery because specialists are trained in both medicine and surgery. An otolaryngologist is often called an ear, nose, and throat doctor, or an ENT for short.\n\nThis medical specialty dates back to the 19th century, when doctors recognized that the head and neck contained a series of interconnected systems. Doctors developed techniques and tools for examining and treating problems of the head and neck, eventually forming a medical specialty. According to the American Academy of Otolaryngology, it is the oldest medical specialty in the United States.\n\nOtolaryngologists differ from many physicians in that they are qualified to perform many types of surgery on the delicate and complex tissues of the head and neck.\n\nWhat do Otolaryngologists Treat?\n\n-   **Ear:** Otolaryngologists are trained in the medical and surgical treatment of hearing loss, ear infections, balance disorders, ear noise (tinnitus), nerve pain, and facial and cranial nerve disorders. They also manage congenital (birth) disorders of the outer and inner ear.\n-   **Nose**: Care of the nasal cavity and sinuses is one of the primary skills of otolaryngologists. Otolaryngologists diagnose, manage and treat allergies, sinusitis, smell disorders, polyps, and nasal obstruction due to a deviated septum. They can also correct the appearance of the nose (rhinoplasty surgery).\n-   **Throat**: Otolaryngologists have expertise in managing diseases of the larynx (voice box) and the upper aero-digestive tract or esophagus, including voice and swallowing disorders.\n-   **Head and Neck**: In the head and neck area, otolaryngologists are trained to treat infectious diseases, both benign and malignant (cancerous) tumors, facial trauma, and deformities of the face. They perform both cosmetic plastic and reconstructive surgery.\n\nHow are Otolaryngologist-Head and Neck Surgeons Trained?\n\nAn otolaryngologist is ready to start practicing after completing up to 15 years of college and post-graduate training. To receive certification from the American Board of Otolaryngology, individuals must first complete college, medical school, and at least five years of specialty training. Next, the physician must pass the American Board of Otolaryngology examination. Some then pursue a one- or two-year fellowship for more training in a subspecialty area. All full-time faculty at Columbia have completed fellowship training in their areas of expertise.', '<h4 id=\"whatisotolaryngology\">What is Otolaryngology?</h4>\n<p>Otolaryngology is a medical specialty which is focused on the ears, nose, and throat. It is also called otolaryngology-head and neck surgery because specialists are trained in both medicine and surgery. An otolaryngologist is often called an ear, nose, and throat doctor, or an ENT for short.</p>\n<p>This medical specialty dates back to the 19th century, when doctors recognized that the head and neck contained a series of interconnected systems. Doctors developed techniques and tools for examining and treating problems of the head and neck, eventually forming a medical specialty. According to the American Academy of Otolaryngology, it is the oldest medical specialty in the United States.</p>\n<p>Otolaryngologists differ from many physicians in that they are qualified to perform many types of surgery on the delicate and complex tissues of the head and neck.</p>\n<p>What do Otolaryngologists Treat?</p>\n<ul>\n<li><strong>Ear:</strong> Otolaryngologists are trained in the medical and surgical treatment of hearing loss, ear infections, balance disorders, ear noise (tinnitus), nerve pain, and facial and cranial nerve disorders. They also manage congenital (birth) disorders of the outer and inner ear.</li>\n<li><strong>Nose</strong>: Care of the nasal cavity and sinuses is one of the primary skills of otolaryngologists. Otolaryngologists diagnose, manage and treat allergies, sinusitis, smell disorders, polyps, and nasal obstruction due to a deviated septum. They can also correct the appearance of the nose (rhinoplasty surgery).</li>\n<li><strong>Throat</strong>: Otolaryngologists have expertise in managing diseases of the larynx (voice box) and the upper aero-digestive tract or esophagus, including voice and swallowing disorders.</li>\n<li><strong>Head and Neck</strong>: In the head and neck area, otolaryngologists are trained to treat infectious diseases, both benign and malignant (cancerous) tumors, facial trauma, and deformities of the face. They perform both cosmetic plastic and reconstructive surgery.</li>\n</ul>\n<p>How are Otolaryngologist-Head and Neck Surgeons Trained?</p>\n<p>An otolaryngologist is ready to start practicing after completing up to 15 years of college and post-graduate training. To receive certification from the American Board of Otolaryngology, individuals must first complete college, medical school, and at least five years of specialty training. Next, the physician must pass the American Board of Otolaryngology examination. Some then pursue a one- or two-year fellowship for more training in a subspecialty area. All full-time faculty at Columbia have completed fellowship training in their areas of expertise.</p>', -1, 1, -1, 1, NULL, NULL, '2020-11-13 20:29:11', '2020-11-13 20:35:21', NULL),
(2, 'THE SPECIALIST : Neurosurgery', 'Neurosurgery is concerned with  **diseases, injuries or malformations**  of the central and peripheral nervous system - especially their surgical treatment. The diseases of the nervous system that fall within the neurosurgeons\' area of expertise can differ fundamentally: They affect either the spinal column or the head and brain, which all belong to the central nervous system - the CNS. The peripheral nervous system describes the nerve pathways that run through all regions of the body from the spinal cord. This is precisely why we distinguish two areas in neurosurgery:\n\n1.  **Neurosurgical spinal surgery:**  Here the most common diagnoses requiring surgery are tumors in the spinal cord and spinal cord contusions. Herniated discs are also among them.\n2.  **Head and brain surgery:**  Diseases or injuries that are most frequently treated here are cerebral haemorrhages, tumors or vascular obstructions in the brain. It also includes all types of craniocerebral injuries - and not least the hydrocephalus.\n\nBy the way: functional  **disorders of the nervous system**  are also often a case for neurosurgeons, such as movement disorders, epilepsy or unfathomable pain.', '<p>Neurosurgery is concerned with  <strong>diseases, injuries or malformations</strong>  of the central and peripheral nervous system - especially their surgical treatment. The diseases of the nervous system that fall within the neurosurgeons\' area of expertise can differ fundamentally: They affect either the spinal column or the head and brain, which all belong to the central nervous system - the CNS. The peripheral nervous system describes the nerve pathways that run through all regions of the body from the spinal cord. This is precisely why we distinguish two areas in neurosurgery:</p>\n<ol>\n<li><strong>Neurosurgical spinal surgery:</strong>  Here the most common diagnoses requiring surgery are tumors in the spinal cord and spinal cord contusions. Herniated discs are also among them.</li>\n<li><strong>Head and brain surgery:</strong>  Diseases or injuries that are most frequently treated here are cerebral haemorrhages, tumors or vascular obstructions in the brain. It also includes all types of craniocerebral injuries - and not least the hydrocephalus.</li>\n</ol>\n<p>By the way: functional  <strong>disorders of the nervous system</strong>  are also often a case for neurosurgeons, such as movement disorders, epilepsy or unfathomable pain.</p>', -1, 2, -1, 1, NULL, NULL, '2020-11-13 20:36:34', '2020-11-13 20:39:00', NULL),
(3, 'THE SPECIALIST : Surgery', 'What are the surgical specialties?\n\nThe American College of Surgeons recognizes 14 surgical specialties: cardiothoracic surgery, colon and rectal surgery, general surgery, gynecology and obstetrics, gynecologic oncology, neurological surgery, ophthalmic surgery, oral and maxillofacial surgery, orthopaedic surgery, otorhinolaryngology, pediatric surgery, plastic and maxillofacial surgery, urology, and vascular surgery. The information that follows presents information on the various surgical specialties. The material was adapted from definitions put forth by the nationally recognized authority on the topic, the  [American Board of Medical Specialties (ABMS)](http://www.abms.org/ \"American Board of Medical Specialties (ABMS)\"), and its approved surgical specialty boards.\n\nGeneral Surgery\n\nA general surgeon is a specialist who is trained to manage a broad spectrum of surgical conditions affecting almost any area of the body. The surgeon establishes the diagnosis and provides the preoperative, operative, and post-operative care to patients and is often responsible for the comprehensive management of the trauma victim and the critically ill patient. During at least a five-year educational period after obtaining a medical degree, the surgeon acquires knowledge and technical skills in managing medical conditions that relate to the head and neck, breast, skin, and soft tissues, abdominal wall, extremities, and the gastrointestinal, vascular, and endocrine systems.', '<p>What are the surgical specialties?</p>\n<p>The American College of Surgeons recognizes 14 surgical specialties: cardiothoracic surgery, colon and rectal surgery, general surgery, gynecology and obstetrics, gynecologic oncology, neurological surgery, ophthalmic surgery, oral and maxillofacial surgery, orthopaedic surgery, otorhinolaryngology, pediatric surgery, plastic and maxillofacial surgery, urology, and vascular surgery. The information that follows presents information on the various surgical specialties. The material was adapted from definitions put forth by the nationally recognized authority on the topic, the  <a href=\"http://www.abms.org/\" title=\"American Board of Medical Specialties (ABMS)\">American Board of Medical Specialties (ABMS)</a>, and its approved surgical specialty boards.</p>\n<p>General Surgery</p>\n<p>A general surgeon is a specialist who is trained to manage a broad spectrum of surgical conditions affecting almost any area of the body. The surgeon establishes the diagnosis and provides the preoperative, operative, and post-operative care to patients and is often responsible for the comprehensive management of the trauma victim and the critically ill patient. During at least a five-year educational period after obtaining a medical degree, the surgeon acquires knowledge and technical skills in managing medical conditions that relate to the head and neck, breast, skin, and soft tissues, abdominal wall, extremities, and the gastrointestinal, vascular, and endocrine systems.</p>', -1, 3, -1, 1, NULL, NULL, '2020-11-13 20:38:04', '2020-11-13 20:38:43', NULL),
(4, 'Doctor: Hary Pham', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 4, -1, -1, 1, NULL, NULL, '2020-11-13 20:58:42', '2020-11-13 20:59:36', NULL),
(5, 'Doctor: Evan', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 2, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:19', '2020-11-13 21:00:19', NULL);
INSERT INTO `posts` (`id`, `title`, `contentMarkdown`, `contentHTML`, `forDoctorId`, `forSpecializationId`, `forClinicId`, `writerId`, `confirmByDoctor`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(6, 'Doctor: Ben', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 3, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:37', '2020-11-13 21:00:37', NULL),
(7, 'Doctor Clever', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 5, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:52', '2020-11-13 21:00:52', NULL),
(8, 'Doctor: Sam', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 6, -1, -1, 1, NULL, NULL, '2020-11-13 21:01:09', '2020-11-13 21:01:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'ADMIN', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'DOCTOR', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'SUPPORTER', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `maxBooking` varchar(255) DEFAULT NULL,
  `sumBooking` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `doctorId`, `date`, `time`, `maxBooking`, `sumBooking`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, '22/04/2024', '09:00 - 10:00', '2', '0', '2024-04-21 23:23:18', '2024-04-21 23:23:18', NULL),
(2, 2, '22/04/2024', '10:00 - 11:00', '2', '2', '2024-04-21 23:23:18', '2024-04-21 23:36:54', NULL),
(3, 2, '22/04/2024', '13:00 - 14:00', '2', '1', '2024-04-21 23:23:18', '2024-04-21 23:40:16', NULL),
(4, 2, '22/04/2024', '14:00 - 15:00', '2', '0', '2024-04-21 23:23:18', '2024-04-21 23:23:18', NULL),
(5, 2, '22/04/2024', '11:00 - 12:00', '2', '0', '2024-04-21 23:23:18', '2024-04-21 23:23:18', NULL),
(6, 2, '22/04/2024', '08:00 - 09:00', '2', '0', '2024-04-21 23:23:18', '2024-04-21 23:23:18', NULL),
(7, 2, '22/04/2024', '15:00 - 16:00', '2', '0', '2024-04-21 23:23:18', '2024-04-21 23:23:18', NULL),
(8, 2, '22/04/2024', '16:00 - 17:00', '2', '0', '2024-04-21 23:23:18', '2024-04-21 23:23:18', NULL),
(9, 2, '04/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(10, 2, '04/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(11, 2, '04/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(12, 2, '04/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(13, 2, '04/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(14, 2, '04/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(15, 2, '04/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(16, 2, '04/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(17, 2, '05/05/2024', '08:00 - 09:00', '2', '2', '2024-05-04 16:03:20', '2024-05-04 16:04:54', NULL),
(18, 2, '05/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(19, 2, '05/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(20, 2, '05/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(21, 2, '05/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(22, 2, '05/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(23, 2, '05/05/2024', '15:00 - 16:00', '2', '2', '2024-05-04 16:03:20', '2024-05-04 16:06:06', NULL),
(24, 2, '05/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(25, 2, '06/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(26, 2, '06/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(27, 2, '06/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(28, 2, '06/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(29, 2, '06/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(30, 2, '06/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(31, 2, '06/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(32, 2, '06/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(33, 3, '04/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(34, 3, '04/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(35, 3, '04/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(36, 3, '04/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(37, 3, '04/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(38, 3, '04/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(39, 3, '04/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(40, 3, '04/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(41, 3, '05/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(42, 3, '05/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(43, 3, '05/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(44, 3, '05/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(45, 3, '05/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(46, 3, '05/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(47, 3, '05/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(48, 3, '05/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(49, 3, '06/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(50, 3, '06/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(51, 3, '06/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(52, 3, '06/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(53, 3, '06/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(54, 3, '06/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(55, 3, '06/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(56, 3, '06/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(57, 4, '04/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(58, 4, '04/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(59, 4, '04/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(60, 4, '04/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(61, 4, '04/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(62, 4, '04/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(63, 4, '04/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(64, 4, '04/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(65, 4, '05/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(66, 4, '05/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(67, 4, '05/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(68, 4, '05/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(69, 4, '05/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(70, 4, '05/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(71, 4, '05/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(72, 4, '05/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(73, 4, '06/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(74, 4, '06/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(75, 4, '06/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(76, 4, '06/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(77, 4, '06/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(78, 4, '06/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(79, 4, '06/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(80, 4, '06/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(81, 5, '04/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(82, 5, '04/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(83, 5, '04/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(84, 5, '04/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(85, 5, '04/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(86, 5, '04/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(87, 5, '04/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(88, 5, '04/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(89, 5, '05/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(90, 5, '05/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(91, 5, '05/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(92, 5, '05/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(93, 5, '05/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(94, 5, '05/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(95, 5, '05/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(96, 5, '05/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(97, 5, '06/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(98, 5, '06/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(99, 5, '06/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(100, 5, '06/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(101, 5, '06/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(102, 5, '06/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(103, 5, '06/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(104, 5, '06/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(105, 6, '04/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(106, 6, '04/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(107, 6, '04/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(108, 6, '04/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(109, 6, '04/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(110, 6, '04/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(111, 6, '04/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(112, 6, '04/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(113, 6, '05/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(114, 6, '05/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(115, 6, '05/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(116, 6, '05/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(117, 6, '05/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(118, 6, '05/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(119, 6, '05/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(120, 6, '05/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(121, 6, '06/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(122, 6, '06/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(123, 6, '06/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(124, 6, '06/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(125, 6, '06/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(126, 6, '06/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(127, 6, '06/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(128, 6, '06/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(129, 7, '04/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(130, 7, '04/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(131, 7, '04/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(132, 7, '04/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(133, 7, '04/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(134, 7, '04/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(135, 7, '04/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(136, 7, '04/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(137, 7, '05/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(138, 7, '05/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(139, 7, '05/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(140, 7, '05/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(141, 7, '05/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(142, 7, '05/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(143, 7, '05/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(144, 7, '05/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(145, 7, '06/05/2024', '08:00 - 09:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(146, 7, '06/05/2024', '09:00 - 10:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(147, 7, '06/05/2024', '10:00 - 11:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(148, 7, '06/05/2024', '11:00 - 12:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(149, 7, '06/05/2024', '13:00 - 14:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(150, 7, '06/05/2024', '14:00 - 15:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(151, 7, '06/05/2024', '15:00 - 16:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL),
(152, 7, '06/05/2024', '16:00 - 17:00', '2', '0', '2024-05-04 16:03:20', '2024-05-04 16:03:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200311024259-users.js'),
('20200311025445-create-role.js'),
('20200311025538-create-post.js'),
('20200311025553-create-clinic.js'),
('20200311025604-create-specialization.js'),
('20200311025619-create-schedule.js'),
('20200311025632-create-status.js'),
('20200311025648-create-patient.js'),
('migration-create-comment.js'),
('migration-create-doctor-user.js'),
('migration-create-extraInfo.js'),
('migration-create-place.js'),
('migration-create-supporterLog.js');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `description`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Xương khớp', NULL, 'co-xuong-khop.png', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Thần Kinh', NULL, 'than-kinh.png', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'Tiêu hoá', NULL, 'tieu-hoa.png', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Tim mạch', NULL, 'tim-mach.png', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Tai mũi họng', NULL, 'tai-mui-hong.png', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(6, 'Cột sống', NULL, 'cot-song.png', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(7, 'Y học cổ truyền', NULL, 'otolaryngology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'SUCCESS', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'FAILED', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'PENDING', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'NEW', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'DONE', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supporterlogs`
--

CREATE TABLE `supporterlogs` (
  `id` int(11) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `supporterId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supporterlogs`
--

INSERT INTO `supporterlogs` (`id`, `patientId`, `supporterId`, `content`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(7, 4, NULL, 'The patient made an appointment from the system ', '2020-11-14 20:20:18', '2020-11-14 20:20:18', NULL),
(8, 4, 8, 'New appointments have been received', '2020-11-14 20:20:41', '2020-11-14 20:20:41', NULL),
(9, 4, 8, 'Cancel with reason - The patient canceled the schedule', '2020-11-14 20:20:47', '2020-11-14 20:20:47', NULL),
(10, 5, NULL, 'The patient made an appointment from the system ', '2020-11-15 08:27:25', '2020-11-15 08:27:25', NULL),
(11, 5, 8, 'New appointments have been received', '2020-11-15 08:27:36', '2020-11-15 08:27:36', NULL),
(12, 5, 8, 'The appointment has been successfully booked', '2020-11-15 08:27:40', '2020-11-15 08:27:40', NULL),
(13, 10, NULL, 'The patient made an appointment from the system ', '2024-04-21 23:30:58', '2024-04-21 23:30:58', NULL),
(14, 11, NULL, 'The patient made an appointment from the system ', '2024-04-21 23:36:54', '2024-04-21 23:36:54', NULL),
(15, 12, NULL, 'The patient made an appointment from the system ', '2024-04-21 23:40:16', '2024-04-21 23:40:16', NULL),
(16, 13, NULL, 'The patient made an appointment from the system ', '2024-05-04 16:03:52', '2024-05-04 16:03:52', NULL),
(17, 13, 1, 'New appointments have been received', '2024-05-04 16:04:21', '2024-05-04 16:04:21', NULL),
(18, 13, 1, 'The appointment has been successfully booked', '2024-05-04 16:04:54', '2024-05-04 16:04:54', NULL),
(19, 14, NULL, 'The patient made an appointment from the system ', '2024-05-04 16:05:40', '2024-05-04 16:05:40', NULL),
(20, 14, 1, 'New appointments have been received', '2024-05-04 16:05:55', '2024-05-04 16:05:55', NULL),
(21, 14, 1, 'The appointment has been successfully booked', '2024-05-04 16:06:06', '2024-05-04 16:06:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT 'male',
  `description` text,
  `roleId` int(11) NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `avatar`, `gender`, `description`, `roleId`, `isActive`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Adm - Phú Phan', 'admin@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'New York', '088456732', 'admin.png', 'male', NULL, 1, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Bác sỹ Anh', 'doctor@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'LA', '088456735', 'doctor3.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2024-04-21 23:13:18', NULL),
(3, 'Bác sỹ Đức', 'doctor5@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'LA', '088456735', 'doctor4.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2024-04-21 23:13:29', NULL),
(4, 'Bác sỹ Phú', 'doctor10@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'LA', '088456735', 'doctor1.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2024-04-21 23:13:41', NULL),
(5, 'Bác sỹ Ngọc', 'doctor1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'LA', '088456735', 'doctor2.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2024-04-21 23:13:53', NULL),
(6, 'Bác sỹ Hạ linh', 'doctor2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'LA', '088456735', 'doctor3.jpg', 'male', '         ', 2, 1, '2020-11-13 19:44:36', '2024-04-21 23:14:05', NULL),
(7, 'Bác sỹ Hoàng', 'doctor3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'LA', '088456735', 'doctor4.jpg', 'male', '         ', 2, 1, '2020-11-13 19:44:36', '2024-04-21 23:14:18', NULL),
(8, 'Supporter - Eric Pham', 'supporter@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Arizona', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(9, 'Supporter - Eric Pham 1', 'supporter1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Arizona', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(10, 'Supporter - Eric Pham 2', 'supporter2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Arizona', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(11, 'Supporter - Eric Pham 3', 'supporter3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Arizona', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_users`
--
ALTER TABLE `doctor_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extrainfos`
--
ALTER TABLE `extrainfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supporterlogs`
--
ALTER TABLE `supporterlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor_users`
--
ALTER TABLE `doctor_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `extrainfos`
--
ALTER TABLE `extrainfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supporterlogs`
--
ALTER TABLE `supporterlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
