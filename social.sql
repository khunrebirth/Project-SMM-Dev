-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2019 at 04:53 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_page`
--

CREATE TABLE `about_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `content_left` text COLLATE utf8_unicode_ci NOT NULL,
  `content_right` text COLLATE utf8_unicode_ci NOT NULL,
  `img_section` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_page`
--

INSERT INTO `about_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `content_left`, `content_right`, `img_section`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:18:\"About | social.com\";s:2:\"th\";s:49:\"เกี่ยวกับเรา | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:539:\"เราคือเอเจนซี่ออนไลน์ที่มีประสบการณ์ในสายงานดิจิทัลพร้อมด้วยบริการการตลาดที่หลากหลายอย่างครบวงจรกว่า 4 ล้านแฟนเพจที่เราดูแล กว่า 300 ล้าน impression ที่เราสร้าง ผู้เทนด์ โซเซียลมีเดีย ในประเทศไทย..\";s:2:\"th\";s:539:\"เราคือเอเจนซี่ออนไลน์ที่มีประสบการณ์ในสายงานดิจิทัลพร้อมด้วยบริการการตลาดที่หลากหลายอย่างครบวงจรกว่า 4 ล้านแฟนเพจที่เราดูแล กว่า 300 ล้าน impression ที่เราสร้าง ผู้เทนด์ โซเซียลมีเดีย ในประเทศไทย..\";}', 'a:2:{s:2:\"en\";s:1218:\"<p class=\"lead about__split--title--body mt-4 mb-4\">                     <strong style=\"line-height: 2.5;\">เป้าหมายของเรา</strong> <br>                     เรามีความมุ่งมั่นที่จะวางแผนการตลาดออนไลน์ที่ดีที่สุดเพื่อให้ลูกค้าของเราบรรลุวัตถุประสงค์ที่ตั้งไว้  ด้วยการวางกลยุทธ์ที่ผ่านการคิดวิเคราะห์หากลุ่มลูกค้าที่ตรงจุดกับธุรกิจของคุณ                     <br><br>                     นอกจากจากวางแผนการตลาดออนไลน์แล้วเรายังทำงานร่วมกันกับลูกค้าเพื่อให้คำแนะนำและปรึกษาใน การวางแนวทางสื่ออนไลน์ให้ได้ผลลัพธ์ที่คุ้มค่าที่สุดอีกด้วย                 </p>\";s:2:\"th\";s:1218:\"<p class=\"lead about__split--title--body mt-4 mb-4\">                     <strong style=\"line-height: 2.5;\">เป้าหมายของเรา</strong> <br>                     เรามีความมุ่งมั่นที่จะวางแผนการตลาดออนไลน์ที่ดีที่สุดเพื่อให้ลูกค้าของเราบรรลุวัตถุประสงค์ที่ตั้งไว้  ด้วยการวางกลยุทธ์ที่ผ่านการคิดวิเคราะห์หากลุ่มลูกค้าที่ตรงจุดกับธุรกิจของคุณ                     <br><br>                     นอกจากจากวางแผนการตลาดออนไลน์แล้วเรายังทำงานร่วมกันกับลูกค้าเพื่อให้คำแนะนำและปรึกษาใน การวางแนวทางสื่ออนไลน์ให้ได้ผลลัพธ์ที่คุ้มค่าที่สุดอีกด้วย                 </p>\";}', 'a:2:{s:2:\"en\";s:9:\"about.jpg\";s:2:\"th\";s:9:\"about.jpg\";}', '2019-10-02 09:16:29', '2019-10-17 19:50:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text NOT NULL,
  `meta_tag_description` text NOT NULL,
  `meta_tag_keywords` text NOT NULL,
  `img_og_twitter` text NOT NULL,
  `img` text NOT NULL,
  `img_title_alt` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `description_section` text NOT NULL,
  `body` longtext NOT NULL,
  `category_blog_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `img`, `img_title_alt`, `title`, `slug`, `description_section`, `body`, `category_blog_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"th\";s:18:\"example-blog-1.jpg\";s:2:\"en\";s:18:\"example-blog-1.jpg\";}', '', 'a:2:{s:2:\"en\";s:122:\"สั่งเครื่องดื่มอย่างไร ไม่ให้ขาด เหลือทิ้ง\";s:2:\"th\";s:122:\"สั่งเครื่องดื่มอย่างไร ไม่ให้ขาด เหลือทิ้ง\";}', 'a:2:{s:2:\"en\";s:86:\"สงเครองดมอยางไร-ไมใหขาด-เหลอทง\";s:2:\"th\";s:122:\"สั่งเครื่องดื่มอย่างไร-ไม่ให้ขาด-เหลือทิ้ง\";}', 'a:2:{s:2:\"en\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";s:2:\"th\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";}', 'a:2:{s:2:\"en\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";s:2:\"th\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";}', 1, '2019-08-28 08:21:52', '2019-10-15 02:09:58', NULL),
(2, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"th\";s:18:\"example-blog-2.jpg\";s:2:\"en\";s:18:\"example-blog-2.jpg\";}', '', 'a:2:{s:2:\"en\";s:79:\"เสริมมงคล ให้กับงานแต่งงาน...\";s:2:\"th\";s:79:\"เสริมมงคล ให้กับงานแต่งงาน...\";}', 'a:2:{s:2:\"en\";s:67:\"งานปาร์ตี้บริษัท-องค์กร\";s:2:\"th\";s:67:\"งานปาร์ตี้บริษัท-องค์กร\";}a:2:{s:2:\"en\";s:76:\"เสริมมงคล-ให้กับงานแต่งงาน\";s:2:\"th\";s:76:\"เสริมมงคล-ให้กับงานแต่งงาน\";}', 'a:2:{s:2:\"en\";s:435:\"เพิ่มความเป็นสิริมงคลด้วย “อาหาร” เองก็ถือเป็นเรื่องหลักๆ ที่บ่าวสาวควรวางแผน ตัดสินใจ และเลือกสรรเป็นอย่างดีตามความต้องการและความเหมาะสมของงานนั้นๆ \";s:2:\"th\";s:435:\"เพิ่มความเป็นสิริมงคลด้วย “อาหาร” เองก็ถือเป็นเรื่องหลักๆ ที่บ่าวสาวควรวางแผน ตัดสินใจ และเลือกสรรเป็นอย่างดีตามความต้องการและความเหมาะสมของงานนั้นๆ \";}', 'a:2:{s:2:\"en\";s:435:\"เพิ่มความเป็นสิริมงคลด้วย “อาหาร” เองก็ถือเป็นเรื่องหลักๆ ที่บ่าวสาวควรวางแผน ตัดสินใจ และเลือกสรรเป็นอย่างดีตามความต้องการและความเหมาะสมของงานนั้นๆ \";s:2:\"th\";s:435:\"เพิ่มความเป็นสิริมงคลด้วย “อาหาร” เองก็ถือเป็นเรื่องหลักๆ ที่บ่าวสาวควรวางแผน ตัดสินใจ และเลือกสรรเป็นอย่างดีตามความต้องการและความเหมาะสมของงานนั้นๆ \";}', 1, '2019-08-28 08:28:23', NULL, NULL),
(5, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"th\";s:18:\"example-blog-3.jpg\";s:2:\"en\";s:18:\"example-blog-3.jpg\";}', '', 'a:2:{s:2:\"en\";s:122:\"สั่งเครื่องดื่มอย่างไร ไม่ให้ขาด เหลือทิ้ง\";s:2:\"th\";s:122:\"สั่งเครื่องดื่มอย่างไร ไม่ให้ขาด เหลือทิ้ง\";}', 'a:2:{s:2:\"en\";s:86:\"สงเครองดมอยางไร-ไมใหขาด-เหลอทง\";s:2:\"th\";s:122:\"สั่งเครื่องดื่มอย่างไร-ไม่ให้ขาด-เหลือทิ้ง\";}', 'a:2:{s:2:\"en\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";s:2:\"th\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";}', 'a:2:{s:2:\"en\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";s:2:\"th\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";}', 1, '2019-08-28 08:21:52', '2019-10-15 02:09:58', NULL),
(6, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"th\";s:18:\"example-blog-1.jpg\";s:2:\"en\";s:18:\"example-blog-1.jpg\";}', '', 'a:2:{s:2:\"en\";s:122:\"สั่งเครื่องดื่มอย่างไร ไม่ให้ขาด เหลือทิ้ง\";s:2:\"th\";s:122:\"สั่งเครื่องดื่มอย่างไร ไม่ให้ขาด เหลือทิ้ง\";}', 'a:2:{s:2:\"en\";s:86:\"สงเครองดมอยางไร-ไมใหขาด-เหลอทง\";s:2:\"th\";s:122:\"สั่งเครื่องดื่มอย่างไร-ไม่ให้ขาด-เหลือทิ้ง\";}', 'a:2:{s:2:\"en\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";s:2:\"th\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";}', 'a:2:{s:2:\"en\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";s:2:\"th\";s:507:\"ในทุกๆงานเลี้ยงสังสรรค์ เครื่องดื่มเป็นสิ่งที่ทั้งผู้จัดงานควรให้ความสำคัญไม่แพ้อาหาร และการเลือกเครื่องดื่มที่ดี มีส่วนอย่างมากในการสร้างความประทับใจให้กับแขกที่มาร่วมงาน\";}', 2, '2019-08-28 08:21:52', '2019-10-15 02:09:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text NOT NULL,
  `meta_tag_description` text NOT NULL,
  `meta_tag_keywords` text NOT NULL,
  `img_og_twitter` text NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:9:\"SEO & SEM\";s:2:\"th\";s:9:\"SEO & SEM\";}', 'a:2:{s:2:\"en\";s:9:\"seo-&-sem\";s:2:\"th\";s:9:\"seo-&-sem\";}', '2019-10-18 04:51:11', '2019-10-17 21:50:53', '0000-00-00 00:00:00'),
(2, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:12:\"Social media\";s:2:\"th\";s:12:\"Social media\";}', 'a:2:{s:2:\"th\";s:12:\"social-media\";s:2:\"en\";s:12:\"social-media\";}', '2019-10-17 07:47:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:39:\"พัฒนาเว็บไซต์\";s:2:\"th\";s:39:\"พัฒนาเว็บไซต์\";}', 'a:2:{s:2:\"th\";s:39:\"พัฒนาเว็บไซต์\";s:2:\"en\";s:39:\"พัฒนาเว็บไซต์\";}', '2019-10-17 07:47:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:12:\"Landing Page\";s:2:\"th\";s:12:\"Landing Page\";}', 'a:2:{s:2:\"th\";s:12:\"Landing Page\";s:2:\"en\";s:12:\"Landing Page\";}', '2019-10-17 07:47:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_page`
--

CREATE TABLE `blog_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_page`
--

INSERT INTO `blog_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:20:\"Contact | social.com\";s:2:\"th\";s:31:\"ติดต่อ | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', '2019-10-02 09:16:29', '2019-10-15 00:47:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` text NOT NULL,
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `sort`, `title`, `image`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '', 'a:2:{s:2:\"en\";s:15:\"smm-fashion.jpg\";s:2:\"th\";s:15:\"smm-fashion.jpg\";}', 1, '2019-10-15 10:20:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, '', 'a:2:{s:2:\"en\";s:11:\"smm-pmn.jpg\";s:2:\"th\";s:11:\"smm-pmn.jpg\";}', 1, '2019-10-15 10:20:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, '', 'a:2:{s:2:\"en\";s:15:\"smm-western.jpg\";s:2:\"th\";s:15:\"smm-western.jpg\";}', 1, '2019-10-15 10:06:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, '', 'a:2:{s:2:\"en\";s:12:\"smm-tceb.jpg\";s:2:\"th\";s:12:\"smm-tceb.jpg\";}', 1, '2019-10-15 10:06:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, '', 'a:2:{s:2:\"en\";s:12:\"mock1_12.jpg\";s:2:\"th\";s:12:\"mock1_12.jpg\";}', 1, '2019-10-15 10:06:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, '', 'a:2:{s:2:\"en\";s:13:\"smm-lalin.jpg\";s:2:\"th\";s:13:\"smm-lalin.jpg\";}', 1, '2019-10-15 10:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, '', 'a:2:{s:2:\"en\";s:12:\"smm-tara.jpg\";s:2:\"th\";s:12:\"smm-tara.jpg\";}', 1, '2019-10-15 10:06:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, '', 'a:2:{s:2:\"en\";s:17:\"smm-sathaporn.jpg\";s:2:\"th\";s:17:\"smm-sathaporn.jpg\";}', 1, '2019-10-15 10:06:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, '', 'a:2:{s:2:\"en\";s:10:\"smm-lh.jpg\";s:2:\"th\";s:10:\"smm-lh.jpg\";}', 1, '2019-10-15 10:06:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, '', 'a:2:{s:2:\"en\";s:12:\"mock1_03.jpg\";s:2:\"th\";s:12:\"mock1_03.jpg\";}', 1, '2019-10-15 10:06:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_categories`
--

CREATE TABLE `client_categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_categories`
--

INSERT INTO `client_categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:9:\"SEO & SEM\";s:2:\"th\";s:9:\"SEO & SEM\";}', '2019-10-11 08:19:05', '2019-07-04 21:56:35', '0000-00-00 00:00:00'),
(2, 'a:2:{s:2:\"en\";s:12:\"Social media\";s:2:\"th\";s:12:\"Social media\";}', '2019-10-11 08:18:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'a:2:{s:2:\"en\";s:39:\"พัฒนาเว็บไซต์\";s:2:\"th\";s:39:\"พัฒนาเว็บไซต์\";}', '2019-10-11 08:18:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'a:2:{s:2:\"en\";s:12:\"Landing Page\";s:2:\"th\";s:12:\"Landing Page\";}', '2019-10-11 08:18:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_page`
--

CREATE TABLE `client_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_page`
--

INSERT INTO `client_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:20:\"Cleints | social.com\";s:2:\"th\";s:49:\"ลูกค้าของเรา | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', '2019-10-02 09:16:29', '2019-10-15 00:50:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` text NOT NULL,
  `company` text NOT NULL,
  `phone` text NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

CREATE TABLE `contact_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:20:\"Contact | social.com\";s:2:\"th\";s:31:\"ติดต่อ | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', '2019-10-02 09:16:29', '2019-10-15 00:47:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `image_head` text NOT NULL,
  `title` varchar(40) NOT NULL,
  `body` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `home_page`
--

CREATE TABLE `home_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_page`
--

INSERT INTO `home_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:17:\"Home | social.com\";s:2:\"th\";s:34:\"หน้าแรก | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";N;s:2:\"th\";s:36:\"bc9cee3c829bf42297748337b230ef60.jpg\";}', '2019-10-02 09:16:29', '2019-10-15 00:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `detail` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_events`
--

CREATE TABLE `log_events` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_events`
--

INSERT INTO `log_events` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'login', '2019-10-09 05:02:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'logout', '2019-10-09 05:02:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'add', '2019-10-09 05:02:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'update', '2019-10-09 05:02:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'delete', '2019-10-09 05:03:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'sort_item', '2019-10-09 05:03:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'other', '2019-10-09 05:03:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super admin', '2019-10-08 09:38:23', NULL, NULL),
(2, 'admin', '2019-10-08 09:38:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `body` text NOT NULL,
  `icon` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `body`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Digital Marketing Strategy Cons ancy', 'This service is offered to those businesses that require a more known service where we can provide individual consultancy.', 'icon-1.png', '2019-07-04 10:53:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Creative & Web Design', 'Our development team is able to work with you to plan and scope on your requirement for a properly work.', 'icon-2.png', '2019-07-04 10:53:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Social Media Marketing', 'Due to social media marketing is an essential part of the marketing. It has the power to reach an enormous audience', 'icon-3.png', '2019-07-04 10:53:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Production & Management Servic', 'Business image is very important.We should plan to work as a system for effective business', 'icon-4.png', '2019-07-04 10:53:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_page`
--

CREATE TABLE `service_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_page`
--

INSERT INTO `service_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:21:\"Services | social.com\";s:2:\"th\";s:49:\"บริการของเรา | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', '2019-10-02 09:16:29', '2019-10-15 00:51:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `sort`, `title`, `body`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'a:2:{s:2:\"en\";s:22:\"Kriangkrai Nilkamhaeng\";s:2:\"th\";s:22:\"Kriangkrai Nilkamhaeng\";}', 'a:2:{s:2:\"en\";s:13:\"CEO / Founder\";s:2:\"th\";s:13:\"CEO / Founder\";}', 'a:2:{s:2:\"en\";s:18:\"img-kriangkrai.jpg\";s:2:\"th\";s:18:\"img-kriangkrai.jpg\";}', '2019-10-18 04:01:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'a:2:{s:2:\"en\";s:19:\"Krissana Wimoonchad\";s:2:\"th\";s:19:\"Krissana Wimoonchad\";}', 'a:2:{s:2:\"en\";s:27:\"Assistant Managing Director\";s:2:\"th\";s:27:\"Assistant Managing Director\";}', 'a:2:{s:2:\"en\";s:16:\"img-krissana.jpg\";s:2:\"th\";s:16:\"img-krissana.jpg\";}', '2019-10-18 04:01:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, 'a:2:{s:2:\"en\";s:19:\"Juthamas Sattayapun\";s:2:\"th\";s:19:\"Juthamas Sattayapun\";}', 'a:2:{s:2:\"en\";s:15:\"Project Manager\";s:2:\"th\";s:15:\"Project Manager\";}', 'a:2:{s:2:\"en\";s:16:\"img-juthamas.jpg\";s:2:\"th\";s:16:\"img-juthamas.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 4, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:12:\"img-palm.jpg\";s:2:\"th\";s:12:\"img-palm.jpg\";}', '2019-10-18 04:14:25', '2019-10-17 21:07:08', '0000-00-00 00:00:00'),
(6, 5, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:10:\"img-vi.jpg\";s:2:\"th\";s:10:\"img-vi.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 6, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:11:\"img-pae.jpg\";s:2:\"th\";s:11:\"img-pae.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 7, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:11:\"img-wan.jpg\";s:2:\"th\";s:11:\"img-wan.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 8, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:13:\"img-grece.jpg\";s:2:\"th\";s:13:\"img-grece.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 9, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:12:\"img-bumm.jpg\";s:2:\"th\";s:12:\"img-bumm.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 10, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:13:\"img-nicky.jpg\";s:2:\"th\";s:13:\"img-nicky.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 11, 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:4:\"test\";s:2:\"th\";s:4:\"test\";}', 'a:2:{s:2:\"en\";s:11:\"img-nat.jpg\";s:2:\"th\";s:11:\"img-nat.jpg\";}', '2019-10-18 04:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team_page`
--

CREATE TABLE `team_page` (
  `id` int(11) NOT NULL,
  `meta_tag_title` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_description` text CHARACTER SET utf8 NOT NULL,
  `meta_tag_keywords` text CHARACTER SET utf8 NOT NULL,
  `img_og_twitter` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_page`
--

INSERT INTO `team_page` (`id`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `img_og_twitter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:18:\"Teams | social.com\";s:2:\"th\";s:22:\"ทีม | social.com\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', 'a:2:{s:2:\"en\";s:0:\"\";s:2:\"th\";s:0:\"\";}', '2019-10-02 09:16:29', '2019-10-15 00:50:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` text NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'spadmin', '$2y$10$ZFYrWY4cThYRqh7oilxwae9OQzpX48O3U41wm.xwsHdN78NRHrUU2', 1, '2019-08-14 08:23:55', NULL, NULL),
(2, 'admin', '$2y$10$gup248FaYX4Obb.t23qbT.Wo8xIifMO7kZQmDRcX0uJdvCpzOjvjq', 2, '2019-10-08 09:39:07', '2019-10-15 02:45:19', NULL),
(3, 'khun', '$2y$10$barSRj6dErpHvkgNNe.V9OzmNmr8gZGszHnTPP58Dbyb07aKfjiMC', 2, '2019-10-08 09:39:14', '2019-10-09 05:05:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_page`
--
ALTER TABLE `about_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_page`
--
ALTER TABLE `blog_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_categories`
--
ALTER TABLE `client_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_page`
--
ALTER TABLE `client_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_page`
--
ALTER TABLE `contact_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_events`
--
ALTER TABLE `log_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_page`
--
ALTER TABLE `service_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_page`
--
ALTER TABLE `team_page`
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
-- AUTO_INCREMENT for table `about_page`
--
ALTER TABLE `about_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `blog_page`
--
ALTER TABLE `blog_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `client_categories`
--
ALTER TABLE `client_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `client_page`
--
ALTER TABLE `client_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_page`
--
ALTER TABLE `contact_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `log_events`
--
ALTER TABLE `log_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_page`
--
ALTER TABLE `service_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `team_page`
--
ALTER TABLE `team_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
