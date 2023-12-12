-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2023 a las 03:18:49
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ivandariowebdev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es-co.wordpress.org/', '', '2023-10-31 13:51:51', '2023-10-31 18:51:51', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(2, '20231108_ivandarioposadawebdeveloper', '89215e4e376930b85807_20231130201913', 100, '2023-11-30 20:19:22', 'idposada', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-30 20:19:13\";s:7:\"Version\";s:5:\"1.5.7\";s:9:\"VersionWP\";s:5:\"6.4.1\";s:9:\"VersionDB\";s:7:\"10.6.15\";s:10:\"VersionPHP\";s:6:\"8.0.30\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";i:2;s:4:\"Name\";s:36:\"20231108_ivandarioposadawebdeveloper\";s:4:\"Hash\";s:35:\"89215e4e376930b85807_20231130201913\";s:8:\"NameHash\";s:72:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:82:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:11:\"167.69 sec.\";s:7:\"ExeSize\";s:7:\"73.49KB\";s:7:\"ZipSize\";s:7:\"65.42MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:8:\"idposada\";s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:84:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";s:4:\"Size\";i:68595833;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:970;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:6394;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:7363;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:56:\"/home/ivanposada/public_html/ivandarioposada.me/wp-admin\";i:1;s:59:\"/home/ivanposada/public_html/ivandarioposada.me/wp-includes\";i:2;s:68:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";i:1;s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";i:2;s:58:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content\";i:3;s:66:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/uploads\";i:4;s:66:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/plugins\";i:5;s:69:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/mu-plugins\";i:6;s:65:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:79:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";s:90:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913_installer.php.bak\";s:4:\"Size\";i:75254;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;s:17:\"\0*\0origFileManger\";O:40:\"Duplicator\\Libs\\Snap\\SnapOrigFileManager\":4:{s:18:\"\0*\0persistanceFile\";s:131:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/backups-dup-lite/tmp/original_files_89215e4-30201913/entries_stored.json\";s:18:\"\0*\0origFilesFolder\";s:111:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/backups-dup-lite/tmp/original_files_89215e4-30201913\";s:20:\"\0*\0origFolderEntries\";a:0:{}s:11:\"\0*\0rootPath\";s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";}s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:61:\"/home/ivanposada/public_html/ivandarioposada.me/wp-config.php\";s:16:\"\0*\0wp_config_src\";s:3202:\"<?php\n/**\n * The base configuration for WordPress\n *\n * The wp-config.php creation script uses this file during the installation.\n * You don\'t have to use the web site, you can copy this file to \"wp-config.php\"\n * and fill in the values.\n *\n * This file contains the following configurations:\n *\n * * Database settings\n * * Secret keys\n * * Database table prefix\n * * ABSPATH\n *\n * @link https://wordpress.org/support/article/editing-wp-config-php/\n *\n * @package WordPress\n */\n\n// ** Database settings - You can get this info from your web host ** //\n/** The name of the database for WordPress */\ndefine( \'DB_NAME\', \"ivandariowebdev\" );\n\n/** Database username */\ndefine( \'DB_USER\', \"octagon\" );\n\n/** Database password */\ndefine( \'DB_PASSWORD\', \"1q2w3e4r5t\" );\n\n/** Database hostname */\ndefine( \'DB_HOST\', \"localhost\" );\n\n/** Database charset to use in creating database tables. */\ndefine( \'DB_CHARSET\', \'utf8mb4\' );\n\n/** The database collate type. Don\'t change this if in doubt. */\ndefine( \'DB_COLLATE\', \'\' );\n\n/**#@+\n * Authentication unique keys and salts.\n *\n * Change these to different unique phrases! You can generate these using\n * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.\n *\n * You can change these at any point in time to invalidate all existing cookies.\n * This will force all users to have to log in again.\n *\n * @since 2.6.0\n */\ndefine( \'AUTH_KEY\',         \'SPTu# 262kmO :D9M*CtLk( fkrwR1v~*v=Mg:gfX(~KXWa~%NJj2r?@Xxa+ZIvU\' );\ndefine( \'SECURE_AUTH_KEY\',  \'@|>Hx$HP^O/.94i3-ddrs!8dL+ c)@!n.0:Lb0xc;-8tr6ZEs(97L|`Edyb_Re1^\' );\ndefine( \'LOGGED_IN_KEY\',    \'Sx={M()3Zi~{Z/.jjS_tAqRrwPJcEVY2!4aB0-?3R>)ebNOD#2 |Xqj!voS*!{KM\' );\ndefine( \'NONCE_KEY\',        \'wlCMHh7UmsWZjDAq5o0>rTySMg>$hc{kq,mC|t.UvsK$c@hEO?+<EL~UU0#gocAG\' );\ndefine( \'AUTH_SALT\',        \'_Mv,T^w@Cu)G`,oZnIdo!>{ZnL9r(0X1RQUT<L[fe]XO|{t=A*|3syUimWT%eNQJ\' );\ndefine( \'SECURE_AUTH_SALT\', \'$`Ic}c=DpUU2|G_~b7CoQVgc^,F_B*n}Mzp_H:4o|c#}z|t8Gn6iAqC5!&|=MD%!\' );\ndefine( \'LOGGED_IN_SALT\',   \'k)1rewgIfy8Oh.baMRVT=Tw=aUG(=> m>aYzZ(@DZ0zd{IZ{%f8.q>kE#vW/`p/v\' );\ndefine( \'NONCE_SALT\',       \'aFGPX2CjJS&qr,Rrh]=:[2NGe:<DUkUb_s9I29Cdt^uj,3~KQ#exv,``,R~YbENb\' );\n\n/**#@-*/\n\n/**\n * WordPress database table prefix.\n *\n * You can have multiple installations in one database if you give each\n * a unique prefix. Only numbers, letters, and underscores please!\n */\n$table_prefix = \'wp_\';\n\n/**\n * For developers: WordPress debugging mode.\n *\n * Change this to true to enable the display of notices during development.\n * It is strongly recommended that plugin and theme developers use WP_DEBUG\n * in their development environments.\n *\n * For information on other constants that can be used for debugging,\n * visit the documentation.\n *\n * @link https://wordpress.org/support/article/debugging-in-wordpress/\n */\ndefine( \'WP_DEBUG\', false );\n\n/* Add any custom values between this line and the \"stop editing\" line. */\n\n\n\n/* That\'s all, stop editing! Happy publishing. */\n\n/** Absolute path to the WordPress directory. */\nif ( ! defined( \'ABSPATH\' ) ) {\n	define( \'ABSPATH\', dirname(__FILE__) . \'/\' );\n}\n\n/** Sets up WordPress vars and included files. */\nrequire_once ABSPATH . \'wp-settings.php\';\n\";s:13:\"\0*\0wp_configs\";a:2:{s:8:\"constant\";a:16:{s:7:\"DB_NAME\";a:3:{s:3:\"src\";s:39:\"define( \'DB_NAME\', \"ivandariowebdev\" );\";s:5:\"value\";s:17:\"\"ivandariowebdev\"\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_NAME\'\";i:1;s:20:\", \"ivandariowebdev\" \";i:2;s:2:\");\";}}s:7:\"DB_USER\";a:3:{s:3:\"src\";s:31:\"define( \'DB_USER\', \"octagon\" );\";s:5:\"value\";s:9:\"\"octagon\"\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_USER\'\";i:1;s:12:\", \"octagon\" \";i:2;s:2:\");\";}}s:11:\"DB_PASSWORD\";a:3:{s:3:\"src\";s:38:\"define( \'DB_PASSWORD\', \"1q2w3e4r5t\" );\";s:5:\"value\";s:12:\"\"1q2w3e4r5t\"\";s:5:\"parts\";a:3:{i:0;s:21:\"define( \'DB_PASSWORD\'\";i:1;s:15:\", \"1q2w3e4r5t\" \";i:2;s:2:\");\";}}s:7:\"DB_HOST\";a:3:{s:3:\"src\";s:33:\"define( \'DB_HOST\', \"localhost\" );\";s:5:\"value\";s:11:\"\"localhost\"\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_HOST\'\";i:1;s:14:\", \"localhost\" \";i:2;s:2:\");\";}}s:10:\"DB_CHARSET\";a:3:{s:3:\"src\";s:34:\"define( \'DB_CHARSET\', \'utf8mb4\' );\";s:5:\"value\";s:9:\"\'utf8mb4\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_CHARSET\'\";i:1;s:12:\", \'utf8mb4\' \";i:2;s:2:\");\";}}s:10:\"DB_COLLATE\";a:3:{s:3:\"src\";s:27:\"define( \'DB_COLLATE\', \'\' );\";s:5:\"value\";s:2:\"\'\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_COLLATE\'\";i:1;s:5:\", \'\' \";i:2;s:2:\");\";}}s:8:\"AUTH_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'AUTH_KEY\',         \'SPTu# 262kmO :D9M*CtLk( fkrwR1v~*v=Mg:gfX(~KXWa~%NJj2r?@Xxa+ZIvU\' );\";s:5:\"value\";s:66:\"\'SPTu# 262kmO :D9M*CtLk( fkrwR1v~*v=Mg:gfX(~KXWa~%NJj2r?@Xxa+ZIvU\'\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'AUTH_KEY\'\";i:1;s:77:\",         \'SPTu# 262kmO :D9M*CtLk( fkrwR1v~*v=Mg:gfX(~KXWa~%NJj2r?@Xxa+ZIvU\' \";i:2;s:2:\");\";}}s:15:\"SECURE_AUTH_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'SECURE_AUTH_KEY\',  \'@|>Hx$HP^O/.94i3-ddrs!8dL+ c)@!n.0:Lb0xc;-8tr6ZEs(97L|`Edyb_Re1^\' );\";s:5:\"value\";s:66:\"\'@|>Hx$HP^O/.94i3-ddrs!8dL+ c)@!n.0:Lb0xc;-8tr6ZEs(97L|`Edyb_Re1^\'\";s:5:\"parts\";a:3:{i:0;s:25:\"define( \'SECURE_AUTH_KEY\'\";i:1;s:70:\",  \'@|>Hx$HP^O/.94i3-ddrs!8dL+ c)@!n.0:Lb0xc;-8tr6ZEs(97L|`Edyb_Re1^\' \";i:2;s:2:\");\";}}s:13:\"LOGGED_IN_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'LOGGED_IN_KEY\',    \'Sx={M()3Zi~{Z/.jjS_tAqRrwPJcEVY2!4aB0-?3R>)ebNOD#2 |Xqj!voS*!{KM\' );\";s:5:\"value\";s:66:\"\'Sx={M()3Zi~{Z/.jjS_tAqRrwPJcEVY2!4aB0-?3R>)ebNOD#2 |Xqj!voS*!{KM\'\";s:5:\"parts\";a:3:{i:0;s:23:\"define( \'LOGGED_IN_KEY\'\";i:1;s:72:\",    \'Sx={M()3Zi~{Z/.jjS_tAqRrwPJcEVY2!4aB0-?3R>)ebNOD#2 |Xqj!voS*!{KM\' \";i:2;s:2:\");\";}}s:9:\"NONCE_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'NONCE_KEY\',        \'wlCMHh7UmsWZjDAq5o0>rTySMg>$hc{kq,mC|t.UvsK$c@hEO?+<EL~UU0#gocAG\' );\";s:5:\"value\";s:66:\"\'wlCMHh7UmsWZjDAq5o0>rTySMg>$hc{kq,mC|t.UvsK$c@hEO?+<EL~UU0#gocAG\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'NONCE_KEY\'\";i:1;s:76:\",        \'wlCMHh7UmsWZjDAq5o0>rTySMg>$hc{kq,mC|t.UvsK$c@hEO?+<EL~UU0#gocAG\' \";i:2;s:2:\");\";}}s:9:\"AUTH_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'AUTH_SALT\',        \'_Mv,T^w@Cu)G`,oZnIdo!>{ZnL9r(0X1RQUT<L[fe]XO|{t=A*|3syUimWT%eNQJ\' );\";s:5:\"value\";s:66:\"\'_Mv,T^w@Cu)G`,oZnIdo!>{ZnL9r(0X1RQUT<L[fe]XO|{t=A*|3syUimWT%eNQJ\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'AUTH_SALT\'\";i:1;s:76:\",        \'_Mv,T^w@Cu)G`,oZnIdo!>{ZnL9r(0X1RQUT<L[fe]XO|{t=A*|3syUimWT%eNQJ\' \";i:2;s:2:\");\";}}s:16:\"SECURE_AUTH_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'SECURE_AUTH_SALT\', \'$`Ic}c=DpUU2|G_~b7CoQVgc^,F_B*n}Mzp_H:4o|c#}z|t8Gn6iAqC5!&|=MD%!\' );\";s:5:\"value\";s:66:\"\'$`Ic}c=DpUU2|G_~b7CoQVgc^,F_B*n}Mzp_H:4o|c#}z|t8Gn6iAqC5!&|=MD%!\'\";s:5:\"parts\";a:3:{i:0;s:26:\"define( \'SECURE_AUTH_SALT\'\";i:1;s:69:\", \'$`Ic}c=DpUU2|G_~b7CoQVgc^,F_B*n}Mzp_H:4o|c#}z|t8Gn6iAqC5!&|=MD%!\' \";i:2;s:2:\");\";}}s:14:\"LOGGED_IN_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'LOGGED_IN_SALT\',   \'k)1rewgIfy8Oh.baMRVT=Tw=aUG(=> m>aYzZ(@DZ0zd{IZ{%f8.q>kE#vW/`p/v\' );\";s:5:\"value\";s:66:\"\'k)1rewgIfy8Oh.baMRVT=Tw=aUG(=> m>aYzZ(@DZ0zd{IZ{%f8.q>kE#vW/`p/v\'\";s:5:\"parts\";a:3:{i:0;s:24:\"define( \'LOGGED_IN_SALT\'\";i:1;s:71:\",   \'k)1rewgIfy8Oh.baMRVT=Tw=aUG(=> m>aYzZ(@DZ0zd{IZ{%f8.q>kE#vW/`p/v\' \";i:2;s:2:\");\";}}s:10:\"NONCE_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'NONCE_SALT\',       \'aFGPX2CjJS&qr,Rrh]=:[2NGe:<DUkUb_s9I29Cdt^uj,3~KQ#exv,``,R~YbENb\' );\";s:5:\"value\";s:66:\"\'aFGPX2CjJS&qr,Rrh]=:[2NGe:<DUkUb_s9I29Cdt^uj,3~KQ#exv,``,R~YbENb\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'NONCE_SALT\'\";i:1;s:75:\",       \'aFGPX2CjJS&qr,Rrh]=:[2NGe:<DUkUb_s9I29Cdt^uj,3~KQ#exv,``,R~YbENb\' \";i:2;s:2:\");\";}}s:8:\"WP_DEBUG\";a:3:{s:3:\"src\";s:28:\"define( \'WP_DEBUG\', false );\";s:5:\"value\";s:5:\"false\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'WP_DEBUG\'\";i:1;s:8:\", false \";i:2;s:2:\");\";}}s:7:\"ABSPATH\";a:3:{s:3:\"src\";s:46:\"	define( \'ABSPATH\', dirname(__FILE__) . \'/\' );\";s:5:\"value\";s:23:\"dirname(__FILE__) . \'/\'\";s:5:\"parts\";a:3:{i:0;s:18:\"	define( \'ABSPATH\'\";i:1;s:26:\", dirname(__FILE__) . \'/\' \";i:2;s:2:\");\";}}}s:8:\"variable\";a:1:{s:12:\"table_prefix\";a:3:{s:3:\"src\";s:22:\"$table_prefix = \'wp_\';\";s:5:\"value\";s:5:\"\'wp_\'\";s:5:\"parts\";a:2:{i:0;s:15:\"$table_prefix =\";i:1;s:7:\" \'wp_\';\";}}}}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:778451;s:4:\"File\";s:85:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:14:\"MariaDB Server\";s:19:\"sameNameTableExists\";b:0;s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:11:\"charSetList\";a:3:{i:0;s:7:\"utf8mb4\";i:1;s:7:\"utf8mb3\";i:2;s:6:\"latin1\";}s:13:\"collationList\";a:5:{i:0;s:17:\"latin1_general_cs\";i:1;s:17:\"latin1_swedish_ci\";i:2;s:18:\"utf8mb3_unicode_ci\";i:3;s:18:\"utf8mb4_general_ci\";i:4;s:18:\"utf8mb4_unicode_ci\";}s:10:\"engineList\";a:1:{i:0;s:6:\"InnoDB\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:15:\"ivandariowebdev\";s:15:\"tablesBaseCount\";i:15;s:16:\"tablesFinalCount\";i:15;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:859;s:16:\"tablesSizeOnDisk\";i:2031616;s:10:\"tablesList\";a:15:{s:14:\"wp_commentmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:11:\"wp_comments\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:98304;}s:22:\"wp_duplicator_packages\";a:3:{s:14:\"inaccurateRows\";i:1;s:12:\"insertedRows\";i:1;s:4:\"size\";i:32768;}s:8:\"wp_links\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:32768;}s:17:\"wp_metaseo_images\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:32768;}s:10:\"wp_options\";a:3:{s:14:\"inaccurateRows\";i:193;s:12:\"insertedRows\";i:193;s:4:\"size\";i:1114112;}s:11:\"wp_postmeta\";a:3:{s:14:\"inaccurateRows\";i:318;s:12:\"insertedRows\";i:316;s:4:\"size\";i:131072;}s:8:\"wp_posts\";a:3:{s:14:\"inaccurateRows\";i:76;s:12:\"insertedRows\";i:75;s:4:\"size\";i:131072;}s:11:\"wp_termmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:8:\"wp_terms\";a:3:{s:14:\"inaccurateRows\";i:3;s:12:\"insertedRows\";i:3;s:4:\"size\";i:49152;}s:21:\"wp_term_relationships\";a:3:{s:14:\"inaccurateRows\";i:6;s:12:\"insertedRows\";i:6;s:4:\"size\";i:32768;}s:16:\"wp_term_taxonomy\";a:3:{s:14:\"inaccurateRows\";i:3;s:12:\"insertedRows\";i:3;s:4:\"size\";i:49152;}s:11:\"wp_usermeta\";a:3:{s:14:\"inaccurateRows\";i:31;s:12:\"insertedRows\";i:33;s:4:\"size\";i:49152;}s:8:\"wp_users\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:65536;}s:13:\"wp_wpms_links\";a:3:{s:14:\"inaccurateRows\";i:228;s:12:\"insertedRows\";i:242;s:4:\"size\";i:114688;}}s:19:\"lowerCaseTableNames\";i:0;s:8:\"dbEngine\";s:7:\"MariaDB\";s:7:\"version\";s:7:\"10.6.15\";s:14:\"versionComment\";s:14:\"MariaDB Server\";s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:165:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/backups-dup-lite/tmp/20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-30 20:19:13\";s:7:\"Version\";s:5:\"1.5.7\";s:9:\"VersionWP\";s:5:\"6.4.1\";s:9:\"VersionDB\";s:7:\"10.6.15\";s:10:\"VersionPHP\";s:6:\"8.0.30\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";N;s:4:\"Name\";s:36:\"20231108_ivandarioposadawebdeveloper\";s:4:\"Hash\";s:35:\"89215e4e376930b85807_20231130201913\";s:8:\"NameHash\";s:72:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:84;s:8:\"Database\";r:227;s:13:\"BuildProgress\";r:335;}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_metaseo_images`
--

CREATE TABLE `wp_metaseo_images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `posts_optimized_id` text COLLATE utf8_unicode_ci NOT NULL,
  `posts_need_to_optimize_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `posts_prepare_to_optimize` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dev/ivandariowebdev', 'yes'),
(2, 'home', 'http://localhost/dev/ivandariowebdev/', 'yes'),
(3, 'blogname', 'Ivan Dario Posada | Web Developer', 'yes'),
(4, 'blogdescription', 'Hi, I&#039;m Ivan Dario im a web Developer', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ivandariowebdev@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:25:\"duplicator/duplicator.php\";i:3;s:25:\"duplicator/duplicator.php\";i:4;s:27:\"wp-meta-seo/wp-meta-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ivandariowebdev', 'yes'),
(41, 'stylesheet', 'ivandariowebdev', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '55', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1714330310', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'es_CO', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:11:{i:1702349512;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1702363912;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1702363937;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1702407111;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1702407137;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1702407138;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1702483401;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1702493511;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1702535520;a:1:{s:30:\"duplicator_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:22:\"duplicator_weekly_cron\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1702926000;a:1:{s:29:\"duplicator_email_summary_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:22:\"duplicator_weekly_cron\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698778680;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}}', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(163, 'current_theme', '', 'yes'),
(164, 'theme_mods_ivandariowebdev', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(187, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'db_upgraded', '', 'yes'),
(198, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"ivandariowebdev@gmail.com\";s:7:\"version\";s:5:\"6.4.2\";s:9:\"timestamp\";i:1701984701;}', 'no'),
(211, 'recently_activated', 'a:0:{}', 'yes'),
(212, 'acf_version', '6.2.2', 'yes'),
(217, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.8.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1698854647;s:7:\"version\";s:5:\"5.8.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(287, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(368, 'secret_key', 'T(ASq%F/=8Vd<B%7ygAUBpCi1*6L>Ny.$#zu3xsAnT9Vy7U`avw}`~)?Q&<uvv51', 'no'),
(381, 'wp_attachment_pages_enabled', '1', 'yes'),
(383, 'can_compress_scripts', '1', 'yes'),
(404, 'duplicator_version_plugin', '1.5.7', 'yes'),
(406, 'duplicator_install_info', 'a:3:{s:7:\"version\";s:5:\"1.5.7\";s:4:\"time\";i:1699478048;s:10:\"updateTime\";i:1699478048;}', 'no'),
(407, 'duplicator_uninstall_package', '1', 'yes'),
(408, 'duplicator_uninstall_settings', '1', 'yes'),
(409, 'duplicator_settings', 'a:20:{s:7:\"version\";s:5:\"1.5.7\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:13:\"package_debug\";b:0;s:23:\"email_summary_frequency\";s:6:\"weekly\";s:9:\"amNotices\";b:1;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:2;s:14:\"usage_tracking\";b:0;i:0;b:0;}', 'yes'),
(411, 'duplicator_notifications', 'a:4:{s:6:\"update\";i:1702281047;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(412, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-30 20:19:13\";s:7:\"Version\";s:5:\"1.5.7\";s:9:\"VersionWP\";s:5:\"6.4.1\";s:9:\"VersionDB\";s:7:\"10.6.15\";s:10:\"VersionPHP\";s:6:\"8.0.30\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";N;s:4:\"Name\";s:36:\"20231108_ivandarioposadawebdeveloper\";s:4:\"Hash\";s:35:\"89215e4e376930b85807_20231130201913\";s:8:\"NameHash\";s:72:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:82:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:970;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:6394;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-30 20:19:13\";s:7:\"Version\";s:5:\"1.5.7\";s:9:\"VersionWP\";s:5:\"6.4.1\";s:9:\"VersionDB\";s:7:\"10.6.15\";s:10:\"VersionPHP\";s:6:\"8.0.30\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";N;s:4:\"Name\";s:36:\"20231108_ivandarioposadawebdeveloper\";s:4:\"Hash\";s:35:\"89215e4e376930b85807_20231130201913\";s:8:\"NameHash\";s:72:\"20231108_ivandarioposadawebdeveloper_89215e4e376930b85807_20231130201913\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:65;s:17:\"\0*\0origFileManger\";N;s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:61:\"/home/ivanposada/public_html/ivandarioposada.me/wp-config.php\";s:16:\"\0*\0wp_config_src\";N;s:13:\"\0*\0wp_configs\";a:0:{}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:14:\"MariaDB Server\";s:19:\"sameNameTableExists\";N;s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:3:\"PHP\";s:11:\"charSetList\";a:0:{}s:13:\"collationList\";a:0:{}s:10:\"engineList\";a:0:{}s:17:\"isTablesUpperCase\";b:0;s:15:\"isNameUpperCase\";b:0;s:4:\"name\";s:0:\"\";s:15:\"tablesBaseCount\";i:0;s:16:\"tablesFinalCount\";i:0;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:0;s:16:\"tablesSizeOnDisk\";i:0;s:10:\"tablesList\";a:0:{}s:19:\"lowerCaseTableNames\";i:0;s:8:\"dbEngine\";s:0:\"\";s:7:\"version\";i:0;s:14:\"versionComment\";i:0;s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:65;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:65;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:56:\"/home/ivanposada/public_html/ivandarioposada.me/wp-admin\";i:1;s:59:\"/home/ivanposada/public_html/ivandarioposada.me/wp-includes\";i:2;s:68:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";i:1;s:47:\"/home/ivanposada/public_html/ivandarioposada.me\";i:2;s:58:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content\";i:3;s:66:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/uploads\";i:4;s:66:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/plugins\";i:5;s:69:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/mu-plugins\";i:6;s:65:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:79:\"/home/ivanposada/public_html/ivandarioposada.me/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";r:86;s:8:\"Database\";r:105;s:13:\"BuildProgress\";r:144;}', 'yes'),
(413, 'duplicator_pro_exe_safe_mode', '0', 'yes'),
(414, 'duplicator_activate_plugins_after_installation', 'a:0:{}', 'yes'),
(416, 'duplicator_migration_data', '{\n    \"plugin\": \"dup-lite\",\n    \"installerVersion\": \"1.5.7\",\n    \"installType\": -1,\n    \"logicModes\": [\n        \"CLASSIC\"\n    ],\n    \"template\": \"base\",\n    \"restoreBackupMode\": false,\n    \"recoveryMode\": false,\n    \"archivePath\": \"\\/home\\/ivanposada\\/public_html\\/ivandarioposada.me\\/20231108_ivandarioposadawebdeveloper_dbc30755f6ac54593135_20231108211429_archive.zip\",\n    \"packageHash\": \"dbc3075-08211429\",\n    \"installerPath\": \"\\/home\\/ivanposada\\/public_html\\/ivandarioposada.me\\/installer.php\",\n    \"installerBootLog\": \"\\/home\\/ivanposada\\/public_html\\/ivandarioposada.me\\/dup-installer-bootlog__eece3d6-08211429.txt\",\n    \"installerLog\": \"\\/home\\/ivanposada\\/public_html\\/ivandarioposada.me\\/dup-installer\\/dup-installer-log__eece3d6-08211429.txt\",\n    \"dupInstallerPath\": \"\\/home\\/ivanposada\\/public_html\\/ivandarioposada.me\\/dup-installer\",\n    \"origFileFolderPath\": \"\\/home\\/ivanposada\\/public_html\\/ivandarioposada.me\\/dup-installer\\/original_files_dbc3075-08211429\",\n    \"safeMode\": 0,\n    \"cleanInstallerFiles\": true,\n    \"licenseType\": 0,\n    \"phpVersion\": \"7.4.28\",\n    \"archiveType\": \"zip\",\n    \"siteSize\": 59069936,\n    \"siteNumFiles\": 5222,\n    \"siteDbSize\": 3309568,\n    \"siteDBNumTables\": 13,\n    \"components\": [\n        \"package_component_db\",\n        \"package_component_core\",\n        \"package_component_plugins\",\n        \"package_component_themes\",\n        \"package_component_uploads\",\n        \"package_component_other\"\n    ],\n    \"ustatIdentifier\": \"\",\n    \"time\": 1699478464\n}', 'no'),
(423, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1702320872;s:7:\"checked\";a:2:{s:15:\"ivandariowebdev\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}', 'no'),
(425, 'duplicator_plugin_data_stats', '{\n    \"lastSendTime\": 0,\n    \"identifier\": \"r1UjtAMuW=t6s3hl5huknvncxlhOtOBk19.oX;36YDc4\",\n    \"plugin\": \"dup-lite\",\n    \"pluginStatus\": \"active\",\n    \"buildCount\": 1,\n    \"buildLastDate\": 1701375730,\n    \"buildFailedCount\": 0,\n    \"buildFailedLastDate\": 0,\n    \"siteSizeMB\": 133.11,\n    \"siteNumFiles\": 7364,\n    \"siteDbSizeMB\": 1.94,\n    \"siteDbNumTables\": 15\n}', 'yes'),
(456, 'wpms_jureview_installation_time', '1699488173', 'yes'),
(457, 'wpms_reflush_rewrite', '1', 'yes'),
(458, '_aio_import_notice_flag', '0', 'yes'),
(459, '_yoast_import_notice_flag', '0', 'yes'),
(460, 'plugin_to_sync_with', '0', 'yes'),
(461, '_wpms_dash_last_update', '1701900662', 'yes'),
(462, 'wpms_set_ignore', '1', 'yes'),
(463, 'wpms_jufeedback_version', '1.0.0', 'yes'),
(464, 'wpms_version', '4.5.10', 'yes'),
(465, 'metaseo_db_version3.3.0', '1', 'yes'),
(466, 'wpms_last_update_post', '1701910727', 'yes'),
(467, 'metaseo_db_version3.7.3', '1', 'yes'),
(468, 'metaseo_db_version4.0.0', '1', 'yes'),
(469, 'metaseo_db_version3.7.2', '1', 'yes'),
(470, 'metaseo_db_version4.0.4', '1', 'yes'),
(471, 'metaseo_db_version', '4.5.10', 'yes'),
(472, '_metaseo_settings', 'a:21:{s:16:\"home_meta_active\";s:1:\"1\";s:18:\"metaseo_title_home\";s:33:\"Ivan Dario Posada | Web Developer\";s:17:\"metaseo_desc_home\";s:109:\"Hi, I\\\\\\\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life\";s:20:\"metaseo_showkeywords\";s:1:\"1\";s:21:\"metaseo_metatitle_tab\";s:1:\"1\";s:22:\"metaseo_showtmetablock\";s:1:\"1\";s:17:\"metaseo_linkfield\";s:1:\"1\";s:19:\"metaseo_seovalidate\";s:1:\"0\";s:13:\"metaseo_index\";s:1:\"0\";s:14:\"metaseo_follow\";s:1:\"0\";s:20:\"metaseo_overridemeta\";s:1:\"1\";s:17:\"metaseo_canonical\";s:1:\"0\";s:23:\"metaseo_removecatprefix\";s:1:\"0\";s:17:\"wpms_save_general\";s:0:\"\";s:18:\"metaseo_showsocial\";s:1:\"1\";s:20:\"metaseo_twitter_card\";s:7:\"summary\";s:20:\"metaseo_showfacebook\";s:0:\"\";s:19:\"metaseo_showfbappid\";s:0:\"\";s:31:\"metaseo_enable_default_fb_image\";a:3:{s:6:\"active\";s:1:\"0\";s:6:\"source\";s:8:\"featured\";s:11:\"default_set\";s:0:\"\";}s:19:\"metaseo_showtwitter\";s:0:\"\";s:36:\"metaseo_enable_default_twitter_image\";a:3:{s:6:\"active\";s:1:\"0\";s:6:\"source\";s:8:\"featured\";s:11:\"default_set\";s:0:\"\";}}', 'yes'),
(473, 'options_dashboard', 'a:4:{s:10:\"newcontent\";a:2:{i:0;d:42;i:1;a:2:{i:0;i:5;i:1;s:2:\"12\";}}s:9:\"metatitle\";a:2:{i:0;d:25;i:1;a:2:{i:0;i:3;i:1;i:12;}}s:10:\"image_meta\";a:2:{s:11:\"imgs_statis\";a:3:{i:0;i:0;i:1;i:0;i:2;i:100;}s:17:\"imgs_metas_statis\";a:3:{i:0;i:0;i:1;i:0;i:2;i:100;}}s:8:\"metadesc\";a:2:{i:0;d:25;i:1;a:2:{i:0;i:3;i:1;s:2:\"12\";}}}', 'yes'),
(474, '_metaseo_ggtracking_disconnect_settings', 'a:5:{s:29:\"wpms_gg_service_tracking_type\";s:10:\"analytics4\";s:27:\"wpms_gg_service_tracking_id\";s:12:\"G-4DSGF1LFDS\";s:20:\"wpmsga_code_tracking\";s:295:\"<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-4DSGF1LFDS\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-4DSGF1LFDS\');\r\n</script>\";s:27:\"wpmstm_header_code_tracking\";s:0:\"\";s:25:\"wpmstm_body_code_tracking\";s:0:\"\";}', 'yes'),
(475, '_metaseo_settings_sitemap', 'a:26:{s:25:\"wpms_display_column_menus\";a:1:{i:3;s:1:\"1\";}s:16:\"wpms_sitemap_add\";s:1:\"1\";s:17:\"wpms_sitemap_root\";s:1:\"1\";s:19:\"wpms_sitemap_author\";s:1:\"0\";s:22:\"wpms_html_sitemap_page\";s:2:\"72\";s:24:\"wpms_html_sitemap_column\";s:1:\"1\";s:23:\"wpms_html_sitemap_theme\";s:7:\"default\";s:26:\"wpms_html_sitemap_position\";s:5:\"after\";s:23:\"wpms_sitemap_taxonomies\";a:0:{}s:20:\"wpms_check_firstsave\";s:1:\"1\";s:25:\"wpms_display_column_posts\";s:1:\"1\";s:25:\"wpms_display_column_pages\";s:1:\"1\";s:18:\"wpms_category_link\";a:0:{}s:20:\"check_all_menu_items\";a:0:{}s:24:\"wpms_display_order_menus\";s:1:\"1\";s:24:\"wpms_display_order_posts\";s:1:\"2\";s:24:\"wpms_display_order_pages\";s:1:\"3\";s:23:\"wpms_display_order_urls\";i:4;s:24:\"wpms_category_select_all\";a:0:{}s:24:\"wpms_sitemap_enable_core\";s:1:\"0\";s:18:\"wpms_sitemap_posts\";a:0:{}s:18:\"wpms_sitemap_pages\";a:1:{i:11;a:3:{s:7:\"post_id\";s:2:\"11\";s:8:\"priority\";s:1:\"1\";s:9:\"frequency\";s:7:\"monthly\";}}s:18:\"wpms_sitemap_menus\";a:4:{i:32;a:3:{s:7:\"menu_id\";s:2:\"32\";s:8:\"priority\";s:1:\"1\";s:9:\"frequency\";s:7:\"monthly\";}i:33;a:3:{s:7:\"menu_id\";s:2:\"33\";s:8:\"priority\";s:1:\"1\";s:9:\"frequency\";s:7:\"monthly\";}i:34;a:3:{s:7:\"menu_id\";s:2:\"34\";s:8:\"priority\";s:1:\"1\";s:9:\"frequency\";s:7:\"monthly\";}i:36;a:3:{s:7:\"menu_id\";s:2:\"36\";s:8:\"priority\";s:1:\"1\";s:9:\"frequency\";s:7:\"monthly\";}}s:22:\"wpms_public_name_posts\";s:0:\"\";s:22:\"wpms_public_name_pages\";s:0:\"\";s:7:\"sitemap\";a:4:{s:4:\"file\";s:16:\"wpms-sitemap.xml\";s:4:\"path\";s:64:\"/home/ivanposada/public_html/ivandarioposada.me/wpms-sitemap.xml\";s:3:\"loc\";s:43:\"https://ivandarioposada.me/wpms-sitemap.xml\";s:7:\"lastmod\";s:25:\"2023-11-09T00:08:51+00:00\";}}', 'yes'),
(639, 'duplicator_email_summary_info', '{\"CL_-=_-=\":\"Duplicator\\\\Utils\\\\Email\\\\EmailSummary\",\"manualPackageIds\":[],\"failedPackageIds\":[]}', 'yes'),
(695, '_transient_health-check-site-status-result', '{\"good\":20,\"recommended\":3,\"critical\":0}', 'yes'),
(1090, 'duplicator_ui_view_state', 'a:2:{s:22:\"dup-pack-archive-panel\";s:1:\"1\";s:24:\"dup-pack-installer-panel\";s:1:\"1\";}', 'yes'),
(1312, '_site_transient_timeout_php_check_38979a08dcd71638878b7b4419751271', '1702505451', 'no'),
(1313, '_site_transient_php_check_38979a08dcd71638878b7b4419751271', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1452, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1702320870;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1569, '_site_transient_timeout_theme_roots', '1702322671', 'no'),
(1570, '_site_transient_theme_roots', 'a:2:{s:15:\"ivandariowebdev\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}', 'no'),
(1571, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1702320872;s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.4\";}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:7:\"1.5.7.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicator.1.5.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2906985\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2906985\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/duplicator/assets/banner-1544x500.png?rev=2906985\";s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2906985\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:5:\"5.3.8\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"wp-meta-seo/wp-meta-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/wp-meta-seo\";s:4:\"slug\";s:11:\"wp-meta-seo\";s:6:\"plugin\";s:27:\"wp-meta-seo/wp-meta-seo.php\";s:11:\"new_version\";s:6:\"4.5.10\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-meta-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-meta-seo.4.5.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-meta-seo/assets/icon-256x256.png?rev=1900542\";s:2:\"1x\";s:64:\"https://ps.w.org/wp-meta-seo/assets/icon-128x128.png?rev=1900544\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-meta-seo/assets/banner-1544x500.png?rev=1900539\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-meta-seo/assets/banner-772x250.png?rev=1900541\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.2\";s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.2\";s:25:\"duplicator/duplicator.php\";s:5:\"1.5.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"wp-meta-seo/wp-meta-seo.php\";s:6:\"4.5.10\";}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1701731256:1'),
(4, 8, '_edit_lock', '1699582874:1'),
(5, 8, '_wp_page_template', 'about.php'),
(7, 11, '_edit_lock', '1698780325:1'),
(8, 11, '_wp_page_template', 'projects.php'),
(9, 13, '_edit_lock', '1699470405:1'),
(10, 13, '_wp_page_template', 'contacto.php'),
(11, 15, '_form', '<div class=\"input-field \">\n[text* nombre id:name class:validate placeholder \"Your name\"]\n</div>\n<div class=\"input-field \">\n[text* email  id:email class:validate placeholder \"Your Email\"]\n</div>\n<div class=\"input-field \">\n[textarea message   id:textarea1 class:materialize-textarea placeholder \"Your Message\"]\n</div>\n\n<div class=\"center enviar\">\n[submit \"Enviar\" class:waves-effect waves-light btn btn-enviar center]\n</div>'),
(12, 15, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:41:\"[_site_title] <ivandariowebdev@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:195:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(13, 15, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:41:\"[_site_title] <ivandariowebdev@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:268:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(14, 15, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:78:\"Uno o más campos tienen un error. Por favor revisarlo e inténtarlo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:30:\"Por favor, rellena este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:51:\"No estás autorizado a subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:38:\"Ocurrió un error al subir el archivo.\";s:12:\"invalid_date\";s:57:\"Por favor, introduce una fecha con el formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:46:\"Este campo tiene una fecha demasiado temprana.\";s:13:\"date_too_late\";s:45:\"Este campo tiene una fecha demasiado tardía.\";s:14:\"invalid_number\";s:32:\"Por favor, introduce un número.\";s:16:\"number_too_small\";s:47:\"Este campo tiene un número demasiado pequeño.\";s:16:\"number_too_large\";s:45:\"Este campo tiene un número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:59:\"Por favor, introduce una dirección de correo electrónico.\";s:11:\"invalid_url\";s:29:\"Por favor, introduce una URL.\";s:11:\"invalid_tel\";s:45:\"Por favor, introduce un número de teléfono.\";}'),
(15, 15, '_additional_settings', ''),
(16, 15, '_locale', 'es_CO'),
(17, 15, '_hash', 'a49345d97ad780dad4b8e14f6b9a66e7d6468302'),
(18, 16, '_edit_last', '1'),
(19, 16, '_edit_lock', '1699027193:1'),
(20, 21, '_edit_last', '1'),
(21, 21, '_edit_lock', '1699470850:1'),
(26, 26, '_edit_last', '1'),
(27, 26, '_edit_lock', '1699477850:1'),
(29, 32, '_menu_item_type', 'post_type'),
(30, 32, '_menu_item_menu_item_parent', '0'),
(31, 32, '_menu_item_object_id', '5'),
(32, 32, '_menu_item_object', 'page'),
(33, 32, '_menu_item_target', ''),
(34, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 32, '_menu_item_xfn', ''),
(36, 32, '_menu_item_url', ''),
(38, 33, '_menu_item_type', 'post_type'),
(39, 33, '_menu_item_menu_item_parent', '0'),
(40, 33, '_menu_item_object_id', '8'),
(41, 33, '_menu_item_object', 'page'),
(42, 33, '_menu_item_target', ''),
(43, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 33, '_menu_item_xfn', ''),
(45, 33, '_menu_item_url', ''),
(47, 34, '_menu_item_type', 'post_type'),
(48, 34, '_menu_item_menu_item_parent', '0'),
(49, 34, '_menu_item_object_id', '13'),
(50, 34, '_menu_item_object', 'page'),
(51, 34, '_menu_item_target', ''),
(52, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 34, '_menu_item_xfn', ''),
(54, 34, '_menu_item_url', ''),
(65, 36, '_menu_item_type', 'post_type'),
(66, 36, '_menu_item_menu_item_parent', '0'),
(67, 36, '_menu_item_object_id', '11'),
(68, 36, '_menu_item_object', 'page'),
(69, 36, '_menu_item_target', ''),
(70, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 36, '_menu_item_xfn', ''),
(72, 36, '_menu_item_url', ''),
(74, 32, '_wp_old_date', '2023-11-02'),
(75, 36, '_wp_old_date', '2023-11-02'),
(76, 33, '_wp_old_date', '2023-11-02'),
(77, 34, '_wp_old_date', '2023-11-02'),
(78, 37, '_wp_attached_file', '2023/11/logo-ivan-wev-dev-1.png'),
(79, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:333;s:4:\"file\";s:31:\"2023/11/logo-ivan-wev-dev-1.png\";s:8:\"filesize\";i:38031;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"logo-ivan-wev-dev-1-246x300.png\";s:5:\"width\";i:246;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38892;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"logo-ivan-wev-dev-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15602;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 5, '_edit_last', '1'),
(81, 5, 'logo_principal', '37'),
(82, 5, '_logo_principal', 'field_6542bb7136240'),
(83, 5, 'text_about', 'Hi, I\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life'),
(84, 5, '_text_about', 'field_6542bc90faa38'),
(85, 5, 'imagen_about_home', '40'),
(86, 5, '_imagen_about_home', 'field_6542be71f24d4'),
(87, 38, 'logo_principal', '37'),
(88, 38, '_logo_principal', 'field_6542bb7136240'),
(89, 38, 'text_about', ''),
(90, 38, '_text_about', 'field_6542bc90faa38'),
(91, 38, 'imagen_about_home', ''),
(92, 38, '_imagen_about_home', 'field_6542be71f24d4'),
(93, 39, 'logo_principal', '37'),
(94, 39, '_logo_principal', 'field_6542bb7136240'),
(95, 39, 'text_about', 'Hi, I\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life'),
(96, 39, '_text_about', 'field_6542bc90faa38'),
(97, 39, 'imagen_about_home', ''),
(98, 39, '_imagen_about_home', 'field_6542be71f24d4'),
(99, 40, '_wp_attached_file', '2023/11/img-perfil1png.png'),
(100, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:348;s:6:\"height\";i:460;s:4:\"file\";s:26:\"2023/11/img-perfil1png.png\";s:8:\"filesize\";i:1639;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"img-perfil1png-227x300.png\";s:5:\"width\";i:227;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1001;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"img-perfil1png-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:491;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 41, 'logo_principal', '37'),
(102, 41, '_logo_principal', 'field_6542bb7136240'),
(103, 41, 'text_about', 'Hi, I\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life'),
(104, 41, '_text_about', 'field_6542bc90faa38'),
(105, 41, 'imagen_about_home', '40'),
(106, 41, '_imagen_about_home', 'field_6542be71f24d4'),
(107, 42, '_edit_last', '1'),
(108, 42, '_edit_lock', '1699029629:1'),
(109, 8, '_edit_last', '1'),
(110, 8, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(111, 8, '_text_about', 'field_6545198ec890f'),
(112, 8, 'img_abot', '40'),
(113, 8, '_img_abot', 'field_65451e5b906de'),
(114, 46, 'text_about', 'Hi, I\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life'),
(115, 46, '_text_about', 'field_6545198ec890f'),
(116, 46, 'img_abot', '40'),
(117, 46, '_img_abot', 'field_65451e5b906de'),
(118, 47, 'text_about', 'Hi, I\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life.'),
(119, 47, '_text_about', 'field_6545198ec890f'),
(120, 47, 'img_abot', '40'),
(121, 47, '_img_abot', 'field_65451e5b906de'),
(122, 8, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(123, 8, '_text_web_developer', 'field_65451f805bc36'),
(124, 8, 'text_pm', 'I have experience in the management of digital projects, taking as a center the business and client requirements, I try to provide the best action plan taking into account weaknesses and strengths of the project and its stake holders'),
(125, 8, '_text_pm', 'field_654520a3f6181'),
(126, 8, 'text_it_consulting', 'I can describe and suggest the best technologies, practices and processes in terms of technology issues, because I have experience in infrastructure IT, Software Development and Project Management and Digital Products Design from the good user experience'),
(127, 8, '_text_it_consulting', 'field_654520cbf6182'),
(128, 8, 'text_ui_ux', 'From my experience as a developer and my constant learning I can propose and design both user flows and digital products requested in the business objectives and pleasant experiences to the final ususary that is the most important thing.'),
(129, 8, '_text_ui_ux', 'field_654520ddf6183'),
(130, 47, 'text_web_developer', ''),
(131, 47, '_text_web_developer', 'field_65451f805bc36'),
(132, 47, 'text_pm', ''),
(133, 47, '_text_pm', 'field_654520a3f6181'),
(134, 47, 'text_it_consulting', ''),
(135, 47, '_text_it_consulting', 'field_654520cbf6182'),
(136, 47, 'text_ui_ux', ''),
(137, 47, '_text_ui_ux', 'field_654520ddf6183'),
(138, 54, 'text_about', 'I am a Systems Engineer focused on Web Development and IT Consulting and Project Management'),
(139, 54, '_text_about', 'field_6545198ec890f'),
(140, 54, 'img_abot', '40'),
(141, 54, '_img_abot', 'field_65451e5b906de'),
(142, 54, 'text_web_developer', 'llalal'),
(143, 54, '_text_web_developer', 'field_65451f805bc36'),
(144, 54, 'text_pm', 'lalalal'),
(145, 54, '_text_pm', 'field_654520a3f6181'),
(146, 54, 'text_it_consulting', 'lalalalladsad'),
(147, 54, '_text_it_consulting', 'field_654520cbf6182'),
(148, 54, 'text_ui_ux', 'lasdskajdksaljdksa'),
(149, 54, '_text_ui_ux', 'field_654520ddf6183'),
(150, 55, '_wp_attached_file', '2023/11/cropped-logo-ivan-wev-dev-1.png'),
(151, 55, '_wp_attachment_context', 'site-icon'),
(152, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:39:\"2023/11/cropped-logo-ivan-wev-dev-1.png\";s:8:\"filesize\";i:93648;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"cropped-logo-ivan-wev-dev-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47079;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"cropped-logo-ivan-wev-dev-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15739;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:39:\"cropped-logo-ivan-wev-dev-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39614;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:39:\"cropped-logo-ivan-wev-dev-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23404;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:39:\"cropped-logo-ivan-wev-dev-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21120;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:37:\"cropped-logo-ivan-wev-dev-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1870;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 15, '_config_validation', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:84:\"Se está usando una sintaxis no válida para el buzón de correo en el campo %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(165, 57, '_edit_last', '1'),
(166, 57, '_edit_lock', '1699463133:1'),
(167, 13, '_edit_last', '1'),
(168, 13, 'img_about', '40'),
(169, 13, '_img_about', 'field_654bc011034f7'),
(170, 59, 'img_about', '40'),
(171, 59, '_img_about', 'field_654bc011034f7'),
(173, 61, '_edit_lock', '1699478968:1'),
(174, 63, '_wp_attached_file', '2023/11/blog-img-1-scaled.jpeg'),
(175, 63, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:933;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2023/11/blog-img-1-scaled.jpeg\";s:8:\"filesize\";i:311031;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"blog-img-1-109x300.jpeg\";s:5:\"width\";i:109;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9027;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"blog-img-1-373x1024.jpeg\";s:5:\"width\";i:373;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70324;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"blog-img-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6047;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"blog-img-1-768x2108.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:2108;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:231271;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"blog-img-1-560x1536.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:137996;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"blog-img-1-746x2048.jpeg\";s:5:\"width\";i:746;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:223754;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"blog-img-1.jpeg\";}'),
(176, 64, '_wp_attached_file', '2023/11/quecomo-y-dnde-estudiar-home.png'),
(177, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1345;s:6:\"height\";i:780;s:4:\"file\";s:40:\"2023/11/quecomo-y-dnde-estudiar-home.png\";s:8:\"filesize\";i:884510;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"quecomo-y-dnde-estudiar-home-300x174.png\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:57728;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"quecomo-y-dnde-estudiar-home-1024x594.png\";s:5:\"width\";i:1024;s:6:\"height\";i:594;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:493519;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"quecomo-y-dnde-estudiar-home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35834;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"quecomo-y-dnde-estudiar-home-768x445.png\";s:5:\"width\";i:768;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:300065;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 65, '_wp_attached_file', '2023/11/blog-img-2jpeg-scaled.jpeg'),
(179, 65, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:839;s:6:\"height\";i:2560;s:4:\"file\";s:34:\"2023/11/blog-img-2jpeg-scaled.jpeg\";s:8:\"filesize\";i:379781;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"blog-img-2jpeg-98x300.jpeg\";s:5:\"width\";i:98;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8320;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"blog-img-2jpeg-335x1024.jpeg\";s:5:\"width\";i:335;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79456;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"blog-img-2jpeg-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7621;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"blog-img-2jpeg-768x2344.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:2344;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:335645;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"blog-img-2jpeg-503x1536.jpeg\";s:5:\"width\";i:503;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164740;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"blog-img-2jpeg-671x2048.jpeg\";s:5:\"width\";i:671;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:269725;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:19:\"blog-img-2jpeg.jpeg\";}'),
(180, 61, '_thumbnail_id', '64'),
(181, 61, '_edit_last', '1'),
(182, 61, 'project_description', 'Its a development of a blog for the Universidad el Rosario in Bogota Colombia, the model was built from scratch based on a UX study, the goal is improve the user experience attracted by good content and tries to generate quality leads for the customer both pays and organic.'),
(183, 61, '_project_description', 'field_6542c496a7466'),
(184, 61, 'project_techs', '<span class=\"fontstyle0\">Wordpress Custom Template</span>\r\n\r\n<span class=\"fontstyle0\">Template over HTML, Css3, Javascript\r\n</span>\r\n\r\nCSS FrameWork: Materialize\r\n\r\nCMS: Wordpress\r\n\r\nProgram Language: PHP\r\n\r\n<span class=\"fontstyle0\">Hosting and Domain Configuration</span>\r\n\r\nGoolgle Analytics and Tag manager Configuration'),
(185, 61, '_project_techs', 'field_6542c515c10e3'),
(186, 61, 'project_img1', '63'),
(187, 61, '_project_img1', 'field_6542c525c10e4'),
(188, 61, 'project_img2', '65'),
(189, 61, '_project_img2', 'field_6542c542c10e5'),
(190, 61, 'project_url', 'https://quecomoydondeestudiar.com/'),
(191, 61, '_project_url', 'field_654bdf9f50de3'),
(192, 5, '_wp_page_template', 'default'),
(193, 68, '_edit_lock', '1701730042:1'),
(194, 69, '_wp_attached_file', '2023/11/test-saber11-1.jpg'),
(195, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1310;s:6:\"height\";i:926;s:4:\"file\";s:26:\"2023/11/test-saber11-1.jpg\";s:8:\"filesize\";i:175513;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"test-saber11-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11228;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"test-saber11-1-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71653;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"test-saber11-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5312;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"test-saber11-1-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46744;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 70, '_wp_attached_file', '2023/11/test-saber11-main.jpg'),
(197, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1310;s:6:\"height\";i:926;s:4:\"file\";s:29:\"2023/11/test-saber11-main.jpg\";s:8:\"filesize\";i:177602;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"test-saber11-main-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10743;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"test-saber11-main-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73112;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"test-saber11-main-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5397;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"test-saber11-main-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45905;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 68, '_thumbnail_id', '70'),
(199, 68, '_edit_last', '1'),
(200, 68, 'project_url', 'https://testsaber11.historiascontitulo.com/'),
(201, 68, '_project_url', 'field_654bdf9f50de3'),
(202, 68, 'project_description', 'This is a custom web app over PHP, is a test to simulate a official Exam to cualify the highschool.\r\n\r\nThe goal, bring a simple result over varusis fields such as Maths, English, History and create the lead for the El Bosque University.'),
(203, 68, '_project_description', 'field_6542c496a7466'),
(204, 68, 'project_techs', 'Program Language: PHP\r\n\r\nData Base. Mysql\r\n\r\nCSS Framework: Materialkize\r\n\r\nBackOffice: Custom\r\n\r\nFront End: HTML 5, CSS3, JavaScript'),
(205, 68, '_project_techs', 'field_6542c515c10e3'),
(206, 68, 'project_img1', '69'),
(207, 68, '_project_img1', 'field_6542c525c10e4'),
(208, 68, 'project_img2', ''),
(209, 68, '_project_img2', 'field_6542c542c10e5'),
(213, 8, '_metaseo_metatitle', 'About Ivan Dario Posada'),
(214, 40, '_metaseo_fix_metas_counter', '0'),
(215, 40, '_metaseo_fix_metas', 'a:0:{}'),
(216, 8, '_metaseo_metadesc', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(217, 8, '_metaseo_metaspecific_keywords', ''),
(218, 8, '_metaseo_metakeywords', ''),
(219, 8, '_metaseo_metaopengraph-title', ''),
(220, 8, '_metaseo_metaopengraph-desc', ''),
(221, 8, '_metaseo_metaopengraph-image', ''),
(222, 8, '_metaseo_metatwitter-title', ''),
(223, 8, '_metaseo_metatwitter-desc', ''),
(224, 8, '_metaseo_metatwitter-image', ''),
(225, 8, 'wp_metaseo_seoscore', '43'),
(226, 76, 'text_about', 'I am a Systems Engineer focused on Web Development and IT Consulting and Project Management'),
(227, 76, '_text_about', 'field_6545198ec890f'),
(228, 76, 'img_abot', '40'),
(229, 76, '_img_abot', 'field_65451e5b906de'),
(230, 76, 'text_web_developer', 'llalal'),
(231, 76, '_text_web_developer', 'field_65451f805bc36'),
(232, 76, 'text_pm', 'lalalal'),
(233, 76, '_text_pm', 'field_654520a3f6181'),
(234, 76, 'text_it_consulting', 'lalalalladsad'),
(235, 76, '_text_it_consulting', 'field_654520cbf6182'),
(236, 76, 'text_ui_ux', 'lasdskajdksaljdksa'),
(237, 76, '_text_ui_ux', 'field_654520ddf6183'),
(238, 77, 'text_about', 'I am a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(239, 77, '_text_about', 'field_6545198ec890f'),
(240, 77, 'img_abot', '40'),
(241, 77, '_img_abot', 'field_65451e5b906de'),
(242, 77, 'text_web_developer', 'llalal'),
(243, 77, '_text_web_developer', 'field_65451f805bc36'),
(244, 77, 'text_pm', 'lalalal'),
(245, 77, '_text_pm', 'field_654520a3f6181'),
(246, 77, 'text_it_consulting', 'lalalalladsad'),
(247, 77, '_text_it_consulting', 'field_654520cbf6182'),
(248, 77, 'text_ui_ux', 'lasdskajdksaljdksa'),
(249, 77, '_text_ui_ux', 'field_654520ddf6183'),
(250, 78, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(251, 78, '_text_about', 'field_6545198ec890f'),
(252, 78, 'img_abot', '40'),
(253, 78, '_img_abot', 'field_65451e5b906de'),
(254, 78, 'text_web_developer', 'llalal'),
(255, 78, '_text_web_developer', 'field_65451f805bc36'),
(256, 78, 'text_pm', 'lalalal'),
(257, 78, '_text_pm', 'field_654520a3f6181'),
(258, 78, 'text_it_consulting', 'lalalalladsad'),
(259, 78, '_text_it_consulting', 'field_654520cbf6182'),
(260, 78, 'text_ui_ux', 'lasdskajdksaljdksa'),
(261, 78, '_text_ui_ux', 'field_654520ddf6183'),
(262, 79, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(263, 79, '_text_about', 'field_6545198ec890f'),
(264, 79, 'img_abot', '40'),
(265, 79, '_img_abot', 'field_65451e5b906de'),
(266, 79, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and buess practiced both for product optimization and SEO issues'),
(267, 79, '_text_web_developer', 'field_65451f805bc36'),
(268, 79, 'text_pm', 'lalalal'),
(269, 79, '_text_pm', 'field_654520a3f6181'),
(270, 79, 'text_it_consulting', 'lalalalladsad'),
(271, 79, '_text_it_consulting', 'field_654520cbf6182'),
(272, 79, 'text_ui_ux', 'lasdskajdksaljdksa'),
(273, 79, '_text_ui_ux', 'field_654520ddf6183'),
(274, 80, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(275, 80, '_text_about', 'field_6545198ec890f'),
(276, 80, 'img_abot', '40'),
(277, 80, '_img_abot', 'field_65451e5b906de'),
(278, 80, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(279, 80, '_text_web_developer', 'field_65451f805bc36'),
(280, 80, 'text_pm', 'lalalal'),
(281, 80, '_text_pm', 'field_654520a3f6181'),
(282, 80, 'text_it_consulting', 'lalalalladsad'),
(283, 80, '_text_it_consulting', 'field_654520cbf6182'),
(284, 80, 'text_ui_ux', 'lasdskajdksaljdksa'),
(285, 80, '_text_ui_ux', 'field_654520ddf6183'),
(286, 81, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(287, 81, '_text_about', 'field_6545198ec890f'),
(288, 81, 'img_abot', '40'),
(289, 81, '_img_abot', 'field_65451e5b906de'),
(290, 81, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(291, 81, '_text_web_developer', 'field_65451f805bc36'),
(292, 81, 'text_pm', 'I have experience in the management of digital projects, taking as a center the business and client requirements, I try to provide the best action plan taking into account weaknesses and strengths of the project and its stake holders'),
(293, 81, '_text_pm', 'field_654520a3f6181'),
(294, 81, 'text_it_consulting', 'lalalalladsad'),
(295, 81, '_text_it_consulting', 'field_654520cbf6182'),
(296, 81, 'text_ui_ux', 'lasdskajdksaljdksa'),
(297, 81, '_text_ui_ux', 'field_654520ddf6183'),
(298, 82, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(299, 82, '_text_about', 'field_6545198ec890f'),
(300, 82, 'img_abot', '40'),
(301, 82, '_img_abot', 'field_65451e5b906de'),
(302, 82, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(303, 82, '_text_web_developer', 'field_65451f805bc36'),
(304, 82, 'text_pm', 'I have experience in the management of digital projects, taking as a center the business and client requirements, I try to provide the best action plan taking into account weaknesses and strengths of the project and its stake holders'),
(305, 82, '_text_pm', 'field_654520a3f6181'),
(306, 82, 'text_it_consulting', 'I can describe and suggest the Mejros Technologies, Practices and Processes in terms of technology issues, because I have experience in infrastructure IT, Software Development and Project Management and Digital Products Design from the good exproids of USAUR'),
(307, 82, '_text_it_consulting', 'field_654520cbf6182'),
(308, 82, 'text_ui_ux', 'lasdskajdksaljdksa'),
(309, 82, '_text_ui_ux', 'field_654520ddf6183'),
(310, 83, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(311, 83, '_text_about', 'field_6545198ec890f'),
(312, 83, 'img_abot', '40'),
(313, 83, '_img_abot', 'field_65451e5b906de'),
(314, 83, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(315, 83, '_text_web_developer', 'field_65451f805bc36'),
(316, 83, 'text_pm', 'I have experience in the management of digital projects, taking as a center the business and client requirements, I try to provide the best action plan taking into account weaknesses and strengths of the project and its stake holders'),
(317, 83, '_text_pm', 'field_654520a3f6181'),
(318, 83, 'text_it_consulting', 'I can describe and suggest the best technologies, practices and processes in terms of technology issues, because I have experience in infrastructure IT, Software Development and Project Management and Digital Products Design from the good user experience'),
(319, 83, '_text_it_consulting', 'field_654520cbf6182'),
(320, 83, 'text_ui_ux', 'lasdskajdksaljdksa'),
(321, 83, '_text_ui_ux', 'field_654520ddf6183'),
(322, 84, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(323, 84, '_text_about', 'field_6545198ec890f'),
(324, 84, 'img_abot', '40'),
(325, 84, '_img_abot', 'field_65451e5b906de'),
(326, 84, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(327, 84, '_text_web_developer', 'field_65451f805bc36'),
(328, 84, 'text_pm', 'I have experience in the management of digital projects, taking as a center the business and client requirements, I try to provide the best action plan taking into account weaknesses and strengths of the project and its stake holders'),
(329, 84, '_text_pm', 'field_654520a3f6181'),
(330, 84, 'text_it_consulting', 'I can describe and suggest the best technologies, practices and processes in terms of technology issues, because I have experience in infrastructure IT, Software Development and Project Management and Digital Products Design from the good user experience'),
(331, 84, '_text_it_consulting', 'field_654520cbf6182'),
(332, 84, 'text_ui_ux', 'From my experience as a developer and my constant learning I can propose and design both user flows and digital products requested in the business objectives and pleasant experiences to the final ususary that is the most important thing.'),
(333, 84, '_text_ui_ux', 'field_654520ddf6183'),
(334, 85, 'text_about', 'Hi, I am Ivan Dario Posada a Systems Engineer focused on Web Development, IT Consulting and Project Management and recently in UI and UX'),
(335, 85, '_text_about', 'field_6545198ec890f'),
(336, 85, 'img_abot', '40'),
(337, 85, '_img_abot', 'field_65451e5b906de'),
(338, 85, 'text_web_developer', 'As a web developer I can design, lay and develop web sites, eCommerce, landing pages, focused on usability and good practices for both product optimization and SEO topics'),
(339, 85, '_text_web_developer', 'field_65451f805bc36'),
(340, 85, 'text_pm', 'I have experience in the management of digital projects, taking as a center the business and client requirements, I try to provide the best action plan taking into account weaknesses and strengths of the project and its stake holders'),
(341, 85, '_text_pm', 'field_654520a3f6181'),
(342, 85, 'text_it_consulting', 'I can describe and suggest the best technologies, practices and processes in terms of technology issues, because I have experience in infrastructure IT, Software Development and Project Management and Digital Products Design from the good user experience'),
(343, 85, '_text_it_consulting', 'field_654520cbf6182'),
(344, 85, 'text_ui_ux', 'From my experience as a developer and my constant learning I can propose and design both user flows and digital products requested in the business objectives and pleasant experiences to the final ususary that is the most important thing.'),
(345, 85, '_text_ui_ux', 'field_654520ddf6183'),
(346, 8, 'wpms_validate_analysis', ''),
(347, 88, '_edit_lock', '1701730110:1'),
(348, 89, '_wp_attached_file', '2023/12/delaespriellainvest.com-responsive.png'),
(349, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:428;s:6:\"height\";i:1568;s:4:\"file\";s:46:\"2023/12/delaespriellainvest.com-responsive.png\";s:8:\"filesize\";i:554564;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"delaespriellainvest.com-responsive-82x300.png\";s:5:\"width\";i:82;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37719;}s:5:\"large\";a:5:{s:4:\"file\";s:47:\"delaespriellainvest.com-responsive-280x1024.png\";s:5:\"width\";i:280;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:291770;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:46:\"delaespriellainvest.com-responsive-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29142;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:47:\"delaespriellainvest.com-responsive-419x1536.png\";s:5:\"width\";i:419;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:523481;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 90, '_wp_attached_file', '2023/12/delaespriellainvest.com_.png'),
(351, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:927;s:4:\"file\";s:36:\"2023/12/delaespriellainvest.com_.png\";s:8:\"filesize\";i:1536290;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"delaespriellainvest.com_-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56316;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"delaespriellainvest.com_-1024x494.png\";s:5:\"width\";i:1024;s:6:\"height\";i:494;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:488052;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"delaespriellainvest.com_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34367;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"delaespriellainvest.com_-768x371.png\";s:5:\"width\";i:768;s:6:\"height\";i:371;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:297724;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:37:\"delaespriellainvest.com_-1536x742.png\";s:5:\"width\";i:1536;s:6:\"height\";i:742;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:954553;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 88, '_thumbnail_id', '90'),
(353, 88, '_edit_last', '1'),
(354, 88, 'project_url', 'https://delaespriellainvest.com'),
(355, 88, '_project_url', 'field_654bdf9f50de3'),
(356, 88, 'project_description', 'This is a landing page with a form connected to a CRM platform via API, the leads from the form are stored in a DB along with The CRM\r\n\r\nThe landing is full responisve desing.'),
(357, 88, '_project_description', 'field_6542c496a7466'),
(358, 88, 'project_techs', 'FrontEnd:HTML 5, CSS 3, JavaScript.\r\n\r\nBackend: PHP, MySql, Apache\r\n\r\nCSS FrameWork: Bootstrap.'),
(359, 88, '_project_techs', 'field_6542c515c10e3'),
(360, 88, 'project_img1', '89'),
(361, 88, '_project_img1', 'field_6542c525c10e4'),
(362, 88, 'project_img2', ''),
(363, 88, '_project_img2', 'field_6542c542c10e5'),
(364, 88, '_metaseo_metatitle', '%title% - Landing page'),
(365, 88, '_metaseo_metadesc', 'landing page over PHP, develop by Ivan Dario Posada Web Developer'),
(366, 88, '_metaseo_metaspecific_keywords', 'Who can develop a landing page in colombia,Landing Page De La Espriella Invest,De la Espriella Invest, who can desing and develop a landing page, web developers in Colombia, Who Is Ivan Dario Posada, Ivan Dario Posada'),
(367, 88, '_metaseo_metakeywords', 'De la Espriella Invest, who can desing and develop a landing page, web developers in Colombia, Who Is Ivan Dario Posada, Ivan Dario Posada'),
(368, 88, '_metaseo_metaopengraph-title', ''),
(369, 88, '_metaseo_metaopengraph-desc', ''),
(370, 88, '_metaseo_metaopengraph-image', ''),
(371, 88, '_metaseo_metatwitter-title', ''),
(372, 88, '_metaseo_metatwitter-desc', ''),
(373, 88, '_metaseo_metatwitter-image', ''),
(374, 88, 'wp_metaseo_seoscore', '75'),
(375, 89, '_metaseo_fix_metas_counter', '0'),
(376, 89, '_metaseo_fix_metas', 'a:0:{}'),
(377, 88, 'wpms_validate_analysis', ''),
(379, 5, 'wpms_validate_analysis', ''),
(380, 5, '_thumbnail_id', '37'),
(381, 37, '_metaseo_fix_metas_counter', '0'),
(382, 37, '_metaseo_fix_metas', 'a:0:{}'),
(389, 5, '_metaseo_metatitle', 'Ivan Dario Posada Suarez - Web Engineer'),
(390, 5, '_metaseo_metadesc', 'Hi, I\'m Ivan Dario, Building the web, one line of code at a time. Geek by nature, tech enthusiast for life'),
(391, 5, '_metaseo_metaspecific_keywords', 'Ivan Dario Posada, who is Ivan Dario Posada, where i can find web developers in Colombia, Ivan Dario Posada'),
(392, 5, '_metaseo_metakeywords', 'Ivan Dario Posada, who is Ivan Dario Posada, where i can find web developers in Colombia, Ivan Dario Posada'),
(393, 5, '_metaseo_metaopengraph-title', ''),
(394, 5, '_metaseo_metaopengraph-desc', ''),
(395, 5, '_metaseo_metaopengraph-image', ''),
(396, 5, '_metaseo_metatwitter-title', ''),
(397, 5, '_metaseo_metatwitter-desc', ''),
(398, 5, '_metaseo_metatwitter-image', ''),
(399, 5, 'wp_metaseo_seoscore', '63'),
(400, 93, '_edit_lock', '1701909935:1'),
(401, 94, '_wp_attached_file', '2023/12/adle-home.png'),
(402, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:615;s:4:\"file\";s:21:\"2023/12/adle-home.png\";s:8:\"filesize\";i:1129406;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"adle-home-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62459;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"adle-home-1024x461.png\";s:5:\"width\";i:1024;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:537682;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"adle-home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34842;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"adle-home-768x346.png\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:325448;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 95, '_wp_attached_file', '2023/12/adle-category.view_.png'),
(404, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:2512;s:4:\"file\";s:31:\"2023/12/adle-category.view_.png\";s:8:\"filesize\";i:889130;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"adle-category.view_-163x300.png\";s:5:\"width\";i:163;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28228;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"adle-category.view_-557x1024.png\";s:5:\"width\";i:557;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:226324;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"adle-category.view_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15897;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"adle-category.view_-768x1412.png\";s:5:\"width\";i:768;s:6:\"height\";i:1412;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:386486;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"adle-category.view_-835x1536.png\";s:5:\"width\";i:835;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:445131;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:33:\"adle-category.view_-1114x2048.png\";s:5:\"width\";i:1114;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:715586;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 96, '_wp_attached_file', '2023/12/adle-product.view_.png'),
(406, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:2173;s:4:\"file\";s:30:\"2023/12/adle-product.view_.png\";s:8:\"filesize\";i:814439;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"adle-product.view_-189x300.png\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32671;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"adle-product.view_-644x1024.png\";s:5:\"width\";i:644;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:262052;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"adle-product.view_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15548;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"adle-product.view_-768x1222.png\";s:5:\"width\";i:768;s:6:\"height\";i:1222;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:353312;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"adle-product.view_-966x1536.png\";s:5:\"width\";i:966;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:514185;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:32:\"adle-product.view_-1287x2048.png\";s:5:\"width\";i:1287;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:815027;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 93, 'wpms_validate_analysis', ''),
(408, 93, '_thumbnail_id', '94'),
(409, 93, '_edit_last', '1'),
(410, 93, 'project_url', 'https://delaespriellastyle.com/'),
(411, 93, '_project_url', 'field_654bdf9f50de3'),
(412, 93, 'project_description', 'This is a  full functional ecommerce based in Magento 2, it was designed from scratch based in client´s requirements.\r\n\r\nThis ecommerce is integrated with a CRM, and has other automatization implementations. Actually i am the full administrator, loading new productos, upgrading content, and making reports,'),
(413, 93, '_project_description', 'field_6542c496a7466'),
(414, 93, 'project_techs', 'CMS: MAgento 2\r\n\r\nBackend: PHP, Mysql\r\n\r\nFrontEnd: CSS3 and JavaScript\r\n\r\nCSS FrameWork: Bootstrap\r\n\r\n&nbsp;'),
(415, 93, '_project_techs', 'field_6542c515c10e3'),
(416, 93, 'project_img1', '95'),
(417, 93, '_project_img1', 'field_6542c525c10e4'),
(418, 93, 'project_img2', '96'),
(419, 93, '_project_img2', 'field_6542c542c10e5'),
(420, 93, '_metaseo_metatitle', 'De la Espriella Style  - Ecommerce'),
(421, 93, '_metaseo_metadesc', 'This is a  full functional ecommerce based in Magento 2, it was designed from scratch based in client´s requirements.'),
(422, 93, '_metaseo_metaspecific_keywords', 'magento2 develepers, magento 2 projects, where i can find magento developers, tienda de abelardo de la espriella'),
(423, 93, '_metaseo_metakeywords', 'magento2 develepers, magento 2 projects, where i can find magento developers, tienda de abelardo de la espriella'),
(424, 93, '_metaseo_metaopengraph-title', ''),
(425, 93, '_metaseo_metaopengraph-desc', ''),
(426, 93, '_metaseo_metaopengraph-image', ''),
(427, 93, '_metaseo_metatwitter-title', ''),
(428, 93, '_metaseo_metatwitter-desc', ''),
(429, 93, '_metaseo_metatwitter-image', ''),
(430, 93, 'wp_metaseo_seoscore', '63'),
(431, 97, '_edit_lock', '1701911010:1'),
(432, 98, '_wp_attached_file', '2023/12/analizatest-egistro.png'),
(433, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:799;s:4:\"file\";s:31:\"2023/12/analizatest-egistro.png\";s:8:\"filesize\";i:103720;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"analizatest-egistro-300x175.png\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11106;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"analizatest-egistro-1024x599.png\";s:5:\"width\";i:1024;s:6:\"height\";i:599;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70765;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"analizatest-egistro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8268;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"analizatest-egistro-768x449.png\";s:5:\"width\";i:768;s:6:\"height\";i:449;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46657;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(434, 99, '_wp_attached_file', '2023/12/analizatest-home.png'),
(435, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:631;s:4:\"file\";s:28:\"2023/12/analizatest-home.png\";s:8:\"filesize\";i:83129;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"analizatest-home-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9913;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"analizatest-home-1024x473.png\";s:5:\"width\";i:1024;s:6:\"height\";i:473;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62348;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"analizatest-home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10292;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"analizatest-home-768x355.png\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41586;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 100, '_wp_attached_file', '2023/12/analizatest-pregunta.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(437, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:792;s:4:\"file\";s:32:\"2023/12/analizatest-pregunta.png\";s:8:\"filesize\";i:224432;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"analizatest-pregunta-300x174.png\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15840;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"analizatest-pregunta-1024x594.png\";s:5:\"width\";i:1024;s:6:\"height\";i:594;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:118014;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"analizatest-pregunta-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11997;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"analizatest-pregunta-768x445.png\";s:5:\"width\";i:768;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:75061;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(438, 97, 'wpms_validate_analysis', ''),
(439, 97, '_thumbnail_id', '99'),
(440, 97, '_edit_last', '1'),
(441, 97, 'project_url', 'https://analizatest.historiascontitulo.com/'),
(442, 97, '_project_url', 'field_654bdf9f50de3'),
(443, 97, 'project_description', 'This is a web app build from scratch in PHP, the idea is that the user can fing his/her vocation doing the test, the result 3 possible carrers based on the test questions\r\n\r\nThe client got a valuable data, like user profile, user results and can get into de University'),
(444, 97, '_project_description', 'field_6542c496a7466'),
(445, 97, 'project_techs', 'Ui-UX platform: Figma\r\n\r\nBackEnd: PHP, Mysql Apache\r\n\r\nFrontEnd, CSS3, HTML5, JvaScript\r\n\r\nCSS Framework: Materialize'),
(446, 97, '_project_techs', 'field_6542c515c10e3'),
(447, 97, 'project_img1', '98'),
(448, 97, '_project_img1', 'field_6542c525c10e4'),
(449, 97, 'project_img2', '100'),
(450, 97, '_project_img2', 'field_6542c542c10e5'),
(451, 97, '_metaseo_metatitle', 'AnalizaTest'),
(452, 97, '_metaseo_metadesc', 'This is a web app build from scratch in PHP, the idea is that the user can fing his/her vocation doing the test'),
(453, 97, '_metaseo_metaspecific_keywords', 'web apps from scratch, web develop, web app, Who Is Ivan Dario Posada, Web Developers in Colombia, Analizatest'),
(454, 97, '_metaseo_metakeywords', 'web apps from scratch, web develop, web app, Who Is Ivan Dario Posada, Web Developers in Colombia'),
(455, 97, '_metaseo_metaopengraph-title', ''),
(456, 97, '_metaseo_metaopengraph-desc', ''),
(457, 97, '_metaseo_metaopengraph-image', ''),
(458, 97, '_metaseo_metatwitter-title', ''),
(459, 97, '_metaseo_metatwitter-desc', ''),
(460, 97, '_metaseo_metatwitter-image', ''),
(461, 97, 'wp_metaseo_seoscore', '75');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-31 13:51:51', '2023-10-31 18:51:51', '<!-- wp:paragraph -->\n<p>Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2023-10-31 13:51:51', '2023-10-31 18:51:51', '', 0, 'http://ivandarioposada.me/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-31 13:51:51', '2023-10-31 18:51:51', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente de una entrada de blog porque se quedará en ese lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente comienza con una página de acerca de que los introduce a los visitantes potenciales del sitio. Podría decir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy un Mensajero en bici durante el día, aspirante a actor de noche, y este es mi sitio Web. Vivo en los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y estar atrapados en la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La Empresa Doohickey XYZ fue fundada en 1971, y ha estado proporcionando cosas de calidad al público desde entonces. Ubicado en la ciudad de Gotham, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas impresionantes para la comunidad gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, debes ir a <a href=\"http://ivandarioposada.me/wp-admin/\">tu Escritorio</a> para eliminar esta página, y así crear nuevas páginas para su contenido. ¡Que te diviertas!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2023-10-31 13:51:51', '2023-10-31 18:51:51', '', 0, 'http://ivandarioposada.me/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-31 13:51:51', '2023-10-31 18:51:51', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Nuestra dirección de sitio web es: http://localhost/dev/ivandariowebdev.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se puede proporcionar una cadena anónima creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil será visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si deja un comentario en nuestro sitio, puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Estos es para tu comodidad y no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán un año de duración.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si visitas nuestra página de Acceso, se instalará una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicies sesión, se instalarán varias cookies para guardar tu información de acceso y opciones de visualización de pantalla. Las cookies de acceso permanecerán por dos días y las cookies de opciones de pantalla se guardarán por un año. Si seleccionas «Recuérdarme» en tu inicio de sesión, estas se guardarán por dos semanas. Si cierra la sesión de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registren en nuestro sitio web (si los hay), se almacenarán todos sus datos de información personal que proporcionen. Cualquier usuario puede ver, editar o eliminar su información personal cuando lo desee (a excepción del nombre de usuario que no se puede editar). Los administradores de sitios web, también pueden ver y editar dicha información. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar la exportación de un archivo con tus datos personales recopilados, incluyendo cualquier otro dato que nos haya proporcionado. También puede solicitar la eliminación de cualquier dato personal que guardemos sobre ti. Esto no incluye los datos que estamos obligados a consevar para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde se envían tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Puede que los comentarios de los visitantes sean validados por un servicio automatico de detección de spam.</p><!-- /wp:paragraph -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'política-privacidad', '', '', '2023-10-31 13:51:51', '2023-10-31 18:51:51', '', 0, 'http://ivandarioposada.me/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-10-31 14:20:30', '2023-10-31 19:20:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'incio', '', '', '2023-12-04 17:39:59', '2023-12-04 22:39:59', '', 0, 'http://ivandarioposada.me/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-10-31 14:19:34', '2023-10-31 19:19:34', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-ivandariowebdev', '', '', '2023-10-31 14:19:34', '2023-10-31 19:19:34', '', 0, 'http://ivandarioposada.me/2023/10/31/wp-global-styles-ivandariowebdev/', 0, 'wp_global_styles', '', 0),
(7, 1, '2023-10-31 14:20:30', '2023-10-31 19:20:30', '', 'Incio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-10-31 14:20:30', '2023-10-31 19:20:30', '', 5, 'http://ivandarioposada.me/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-10-31 14:21:19', '2023-10-31 19:21:19', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-11-09 21:18:22', '2023-11-10 02:18:22', '', 0, 'http://ivandarioposada.me/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-10-31 14:21:19', '2023-10-31 19:21:19', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-10-31 14:21:19', '2023-10-31 19:21:19', '', 8, 'http://ivandarioposada.me/?p=9', 0, 'revision', '', 0),
(11, 1, '2023-10-31 14:27:43', '2023-10-31 19:27:43', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2023-10-31 14:27:43', '2023-10-31 19:27:43', '', 0, 'http://ivandarioposada.me/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-10-31 14:27:43', '2023-10-31 19:27:43', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-10-31 14:27:43', '2023-10-31 19:27:43', '', 11, 'http://ivandarioposada.me/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-10-31 14:29:25', '2023-10-31 19:29:25', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-11-08 12:12:09', '2023-11-08 17:12:09', '', 0, 'http://ivandarioposada.me/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-10-31 14:29:25', '2023-10-31 19:29:25', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-10-31 14:29:25', '2023-10-31 19:29:25', '', 13, 'http://ivandarioposada.me/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-11-01 11:04:07', '2023-11-01 16:04:07', '<div class=\"input-field \">\r\n[text* nombre id:name class:validate placeholder \"Your name\"]\r\n</div>\r\n<div class=\"input-field \">\r\n[text* email  id:email class:validate placeholder \"Your Email\"]\r\n</div>\r\n<div class=\"input-field \">\r\n[textarea message   id:textarea1 class:materialize-textarea placeholder \"Your Message\"]\r\n</div>\r\n\r\n<div class=\"center enviar\">\r\n[submit \"Enviar\" class:waves-effect waves-light btn btn-enviar center]\r\n</div>\n1\n[_site_title] «[your-subject]»\n[_site_title] <ivandariowebdev@gmail.com>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] «[your-subject]»\n[_site_title] <ivandariowebdev@gmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisarlo e inténtarlo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellena este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHubo un error desconocido al subir el archivo.\nNo estás autorizado a subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nOcurrió un error al subir el archivo.\nPor favor, introduce una fecha con el formato YYYY-MM-DD.\nEste campo tiene una fecha demasiado temprana.\nEste campo tiene una fecha demasiado tardía.\nPor favor, introduce un número.\nEste campo tiene un número demasiado pequeño.\nEste campo tiene un número demasiado grande.\nLa respuesta al cuestionario no es correcta.\nPor favor, introduce una dirección de correo electrónico.\nPor favor, introduce una URL.\nPor favor, introduce un número de teléfono.', 'Formulario de contacto', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2023-11-08 12:04:56', '2023-11-08 17:04:56', '', 0, 'http://ivandarioposada.me/?post_type=wpcf7_contact_form&#038;p=15', 0, 'wpcf7_contact_form', '', 0),
(16, 1, '2023-11-01 16:00:31', '2023-11-01 21:00:31', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6542bb70559ce', '', '', '2023-11-01 16:10:42', '2023-11-01 21:10:42', '', 0, 'http://ivandarioposada.me/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2023-11-01 16:00:31', '2023-11-01 21:00:31', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'logo principal', 'logo_principal', 'publish', 'closed', 'closed', '', 'field_6542bb7136240', '', '', '2023-11-01 16:00:31', '2023-11-01 21:00:31', '', 16, 'http://ivandarioposada.me/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2023-11-01 16:06:29', '2023-11-01 21:06:29', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_6542bc7bfaa37', '', '', '2023-11-01 16:06:29', '2023-11-01 21:06:29', '', 16, 'http://ivandarioposada.me/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2023-11-01 16:06:29', '2023-11-01 21:06:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text About', 'text_about', 'publish', 'closed', 'closed', '', 'field_6542bc90faa38', '', '', '2023-11-01 16:06:29', '2023-11-01 21:06:29', '', 16, 'http://ivandarioposada.me/?post_type=acf-field&p=19', 2, 'acf-field', '', 0),
(20, 1, '2023-11-01 16:10:42', '2023-11-01 21:10:42', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen About Home', 'imagen_about_home', 'publish', 'closed', 'closed', '', 'field_6542be71f24d4', '', '', '2023-11-01 16:10:42', '2023-11-01 21:10:42', '', 16, 'http://ivandarioposada.me/?post_type=acf-field&p=20', 3, 'acf-field', '', 0),
(21, 1, '2023-11-01 16:16:02', '2023-11-01 21:16:02', 'a:35:{s:9:\"post_type\";s:7:\"project\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:8:\"Projects\";s:13:\"singular_name\";s:7:\"Project\";s:9:\"menu_name\";s:8:\"Projects\";s:9:\"all_items\";s:12:\"All Projects\";s:9:\"edit_item\";s:12:\"Edit Project\";s:9:\"view_item\";s:12:\"View Project\";s:10:\"view_items\";s:13:\"View Projects\";s:12:\"add_new_item\";s:15:\"Add New Project\";s:7:\"add_new\";s:0:\"\";s:8:\"new_item\";s:11:\"New Project\";s:17:\"parent_item_colon\";s:15:\"Parent Project:\";s:12:\"search_items\";s:15:\"Search Projects\";s:9:\"not_found\";s:17:\"No projects found\";s:18:\"not_found_in_trash\";s:26:\"No projects found in Trash\";s:8:\"archives\";s:16:\"Project Archives\";s:10:\"attributes\";s:18:\"Project Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:19:\"Insert into project\";s:21:\"uploaded_to_this_item\";s:24:\"Uploaded to this project\";s:17:\"filter_items_list\";s:20:\"Filter projects list\";s:14:\"filter_by_date\";s:23:\"Filter projects by date\";s:21:\"items_list_navigation\";s:24:\"Projects list navigation\";s:10:\"items_list\";s:13:\"Projects list\";s:14:\"item_published\";s:18:\"Project published.\";s:24:\"item_published_privately\";s:28:\"Project published privately.\";s:22:\"item_reverted_to_draft\";s:26:\"Project reverted to draft.\";s:14:\"item_scheduled\";s:18:\"Project scheduled.\";s:12:\"item_updated\";s:16:\"Project updated.\";s:9:\"item_link\";s:12:\"Project Link\";s:21:\"item_link_description\";s:20:\"A link to a project.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'post_type_6542bffc316f5', '', '', '2023-11-01 16:16:02', '2023-11-01 21:16:02', '', 0, 'http://ivandarioposada.me/?post_type=acf-post-type&#038;p=21', 0, 'acf-post-type', '', 0),
(26, 1, '2023-11-01 16:37:05', '2023-11-01 21:37:05', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Project', 'project', 'publish', 'closed', 'closed', '', 'group_6542c49608d85', '', '', '2023-11-08 14:21:31', '2023-11-08 19:21:31', '', 0, 'http://ivandarioposada.me/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2023-11-01 16:37:05', '2023-11-01 21:37:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Project Description', 'project_description', 'publish', 'closed', 'closed', '', 'field_6542c496a7466', '', '', '2023-11-08 14:21:31', '2023-11-08 19:21:31', '', 26, 'http://ivandarioposada.me/?post_type=acf-field&#038;p=27', 1, 'acf-field', '', 0),
(28, 1, '2023-11-01 16:38:21', '2023-11-01 21:38:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Project Techs', 'project_techs', 'publish', 'closed', 'closed', '', 'field_6542c515c10e3', '', '', '2023-11-08 14:21:31', '2023-11-08 19:21:31', '', 26, 'http://ivandarioposada.me/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(29, 1, '2023-11-01 16:38:21', '2023-11-01 21:38:21', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'project Img1', 'project_img1', 'publish', 'closed', 'closed', '', 'field_6542c525c10e4', '', '', '2023-11-08 14:21:31', '2023-11-08 19:21:31', '', 26, 'http://ivandarioposada.me/?post_type=acf-field&#038;p=29', 3, 'acf-field', '', 0),
(30, 1, '2023-11-01 16:38:21', '2023-11-01 21:38:21', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'project Img2', 'project_img2', 'publish', 'closed', 'closed', '', 'field_6542c542c10e5', '', '', '2023-11-08 14:21:31', '2023-11-08 19:21:31', '', 26, 'http://ivandarioposada.me/?post_type=acf-field&#038;p=30', 4, 'acf-field', '', 0),
(32, 1, '2023-11-03 11:03:45', '2023-11-02 14:50:24', '', 'Home', '', 'publish', 'closed', 'closed', '', '32', '', '', '2023-11-03 11:03:45', '2023-11-03 16:03:45', '', 0, 'http://ivandarioposada.me/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2023-11-03 11:03:45', '2023-11-02 14:50:24', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2023-11-03 11:03:45', '2023-11-03 16:03:45', '', 0, 'http://ivandarioposada.me/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2023-11-03 11:03:45', '2023-11-02 14:50:25', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2023-11-03 11:03:45', '2023-11-03 16:03:45', '', 0, 'http://ivandarioposada.me/?p=34', 4, 'nav_menu_item', '', 0),
(36, 1, '2023-11-03 11:03:45', '2023-11-02 14:50:25', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2023-11-03 11:03:45', '2023-11-03 16:03:45', '', 0, 'http://ivandarioposada.me/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2023-11-03 10:46:48', '2023-11-03 15:46:48', '', 'logo-ivan-wev-dev 1', '', 'inherit', 'open', 'closed', '', 'logo-ivan-wev-dev-1', '', '', '2023-11-03 10:46:48', '2023-11-03 15:46:48', '', 5, 'http://ivandarioposada.me/wp-content/uploads/2023/11/logo-ivan-wev-dev-1.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2023-11-03 10:46:54', '2023-11-03 15:46:54', '', 'Incio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-03 10:46:54', '2023-11-03 15:46:54', '', 5, 'http://ivandarioposada.me/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-11-03 10:54:00', '2023-11-03 15:54:00', '', 'Incio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-03 10:54:00', '2023-11-03 15:54:00', '', 5, 'http://ivandarioposada.me/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-11-03 10:56:08', '2023-11-03 15:56:08', '', 'img-perfil1png', '', 'inherit', 'open', 'closed', '', 'img-perfil1png', '', '', '2023-11-03 10:56:08', '2023-11-03 15:56:08', '', 5, 'http://ivandarioposada.me/wp-content/uploads/2023/11/img-perfil1png.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2023-11-03 10:56:15', '2023-11-03 15:56:15', '', 'Incio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-03 10:56:15', '2023-11-03 15:56:15', '', 5, 'http://ivandarioposada.me/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-11-03 11:02:41', '2023-11-03 16:02:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_6545198ebccf9', '', '', '2023-11-03 11:33:48', '2023-11-03 16:33:48', '', 0, 'http://ivandarioposada.me/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2023-11-03 11:02:41', '2023-11-03 16:02:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text about', 'text_about', 'publish', 'closed', 'closed', '', 'field_6545198ec890f', '', '', '2023-11-03 11:23:43', '2023-11-03 16:23:43', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&#038;p=43', 1, 'acf-field', '', 0),
(44, 1, '2023-11-03 11:23:43', '2023-11-03 16:23:43', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_65451e7b906df', '', '', '2023-11-03 11:23:43', '2023-11-03 16:23:43', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2023-11-03 11:23:43', '2023-11-03 16:23:43', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Img Abot', 'img_abot', 'publish', 'closed', 'closed', '', 'field_65451e5b906de', '', '', '2023-11-03 11:23:43', '2023-11-03 16:23:43', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=45', 2, 'acf-field', '', 0),
(46, 1, '2023-11-03 11:24:06', '2023-11-03 16:24:06', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-03 11:24:06', '2023-11-03 16:24:06', '', 8, 'http://ivandarioposada.me/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-11-03 11:24:56', '2023-11-03 16:24:56', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-03 11:24:56', '2023-11-03 16:24:56', '', 8, 'http://ivandarioposada.me/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-11-03 11:28:05', '2023-11-03 16:28:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Profile', 'profile', 'publish', 'closed', 'closed', '', 'field_65451f735bc35', '', '', '2023-11-03 11:28:05', '2023-11-03 16:28:05', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=48', 3, 'acf-field', '', 0),
(49, 1, '2023-11-03 11:28:05', '2023-11-03 16:28:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'text Web Developer', 'text_web_developer', 'publish', 'closed', 'closed', '', 'field_65451f805bc36', '', '', '2023-11-03 11:28:05', '2023-11-03 16:28:05', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=49', 4, 'acf-field', '', 0),
(50, 1, '2023-11-03 11:33:48', '2023-11-03 16:33:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text PM', 'text_pm', 'publish', 'closed', 'closed', '', 'field_654520a3f6181', '', '', '2023-11-03 11:33:48', '2023-11-03 16:33:48', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=50', 5, 'acf-field', '', 0),
(51, 1, '2023-11-03 11:33:48', '2023-11-03 16:33:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text IT Consulting', 'text_it_consulting', 'publish', 'closed', 'closed', '', 'field_654520cbf6182', '', '', '2023-11-03 11:33:48', '2023-11-03 16:33:48', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=51', 6, 'acf-field', '', 0),
(52, 1, '2023-11-03 11:33:48', '2023-11-03 16:33:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text UI UX', 'text_ui_ux', 'publish', 'closed', 'closed', '', 'field_654520ddf6183', '', '', '2023-11-03 11:33:48', '2023-11-03 16:33:48', '', 42, 'http://ivandarioposada.me/?post_type=acf-field&p=52', 7, 'acf-field', '', 0),
(54, 1, '2023-11-08 08:59:17', '2023-11-08 13:59:17', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-08 08:59:17', '2023-11-08 13:59:17', '', 8, 'http://ivandarioposada.me/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-11-08 08:59:45', '2023-11-08 13:59:45', 'http://ivandarioposada.me/wp-content/uploads/2023/11/cropped-logo-ivan-wev-dev-1.png', 'cropped-logo-ivan-wev-dev-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-ivan-wev-dev-1-png', '', '', '2023-11-08 08:59:45', '2023-11-08 13:59:45', '', 0, 'http://ivandarioposada.me/wp-content/uploads/2023/11/cropped-logo-ivan-wev-dev-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2023-11-08 12:07:11', '2023-11-08 17:07:11', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"contacto.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_654bc010b1624', '', '', '2023-11-08 12:07:45', '2023-11-08 17:07:45', '', 0, 'http://ivandarioposada.me/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2023-11-08 12:07:11', '2023-11-08 17:07:11', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Img About', 'img_about', 'publish', 'closed', 'closed', '', 'field_654bc011034f7', '', '', '2023-11-08 12:07:33', '2023-11-08 17:07:33', '', 57, 'http://ivandarioposada.me/?post_type=acf-field&#038;p=58', 0, 'acf-field', '', 0),
(59, 1, '2023-11-08 12:12:09', '2023-11-08 17:12:09', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-11-08 12:12:09', '2023-11-08 17:12:09', '', 13, 'http://ivandarioposada.me/?p=59', 0, 'revision', '', 0),
(61, 1, '2023-11-08 14:28:01', '2023-11-08 19:28:01', '', 'BLOG QUE COMO Y DONDE ESTUDIAR', '', 'publish', 'closed', 'closed', '', 'blog-que-como-y-donde-estudiar', '', '', '2023-11-08 16:01:58', '2023-11-08 21:01:58', '', 0, 'http://ivandarioposada.me/?post_type=project&#038;p=61', 0, 'project', '', 0),
(62, 1, '2023-11-08 14:21:31', '2023-11-08 19:21:31', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Project URL', 'project_url', 'publish', 'closed', 'closed', '', 'field_654bdf9f50de3', '', '', '2023-11-08 14:21:31', '2023-11-08 19:21:31', '', 26, 'http://ivandarioposada.me/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2023-11-08 14:27:39', '2023-11-08 19:27:39', '', 'blog img 1', '', 'inherit', 'open', 'closed', '', 'blog-img-1', '', '', '2023-11-08 14:27:39', '2023-11-08 19:27:39', '', 61, 'http://ivandarioposada.me/wp-content/uploads/2023/11/blog-img-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-11-08 14:27:41', '2023-11-08 19:27:41', '', 'quecomo y dnde estudiar home', '', 'inherit', 'open', 'closed', '', 'quecomo-y-dnde-estudiar-home', '', '', '2023-11-08 14:27:41', '2023-11-08 19:27:41', '', 61, 'http://ivandarioposada.me/wp-content/uploads/2023/11/quecomo-y-dnde-estudiar-home.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2023-11-08 14:27:42', '2023-11-08 19:27:42', '', 'blog img 2jpeg', '', 'inherit', 'open', 'closed', '', 'blog-img-2jpeg', '', '', '2023-11-08 14:27:42', '2023-11-08 19:27:42', '', 61, 'http://ivandarioposada.me/wp-content/uploads/2023/11/blog-img-2jpeg.jpeg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2023-11-08 16:36:53', '2023-11-08 21:36:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-11-08 16:36:53', '2023-11-08 21:36:53', '', 5, 'https://ivandarioposada.me/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-11-08 16:55:17', '2023-11-08 21:55:17', '', 'Test Saber 11', '', 'publish', 'closed', 'closed', '', 'test-saber-11', '', '', '2023-11-08 16:55:18', '2023-11-08 21:55:18', '', 0, 'https://ivandarioposada.me/?post_type=project&#038;p=68', 0, 'project', '', 0),
(69, 1, '2023-11-08 16:54:57', '2023-11-08 21:54:57', '', 'test-saber11-1', '', 'inherit', 'open', 'closed', '', 'test-saber11-1', '', '', '2023-11-08 16:54:57', '2023-11-08 21:54:57', '', 68, 'https://ivandarioposada.me/wp-content/uploads/2023/11/test-saber11-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-11-08 16:55:05', '2023-11-08 21:55:05', '', 'test-saber11-main', '', 'inherit', 'open', 'closed', '', 'test-saber11-main', '', '', '2023-11-08 16:55:05', '2023-11-08 21:55:05', '', 68, 'https://ivandarioposada.me/wp-content/uploads/2023/11/test-saber11-main.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2023-11-08 19:02:53', '2023-11-09 00:02:53', '<div class=\"wall\"\n style=\"background-color: #F2F3F7; border: 30px solid #fff; width: 90%; height: 90%; margin: 0 auto;\">\n\n        <h1 style=\"text-align: center; font-family:\'open-sans\', arial;\n         color: #444; font-size: 60px; padding: 50px;\">ERROR 404 <br />-<br />NOT FOUND</h1>\n    <p style=\"text-align: center; font-family:\'open-sans\', arial; color: #444;\n     font-size: 40px; padding: 20px; line-height: 55px;\">\n    // You may have mis-typed the URL,<br />\n    // Or the page has been removed,<br />\n    // Actually, there is nothing to see here...</p>\n        <p style=\"text-align: center;\"><a style=\" font-family:\'open-sans\', arial; color: #444;\n         font-size: 20px; padding: 20px; line-height: 30px; text-decoration: none;\"\n          href=\"https://ivandarioposada.me\"><< Go back to home page >></a></p>\n    </div>', '404 Error, content does not exist anymore', 'metaseo_404_page', 'publish', 'closed', 'closed', '', '404-error-page', '', '', '2023-11-08 19:02:53', '2023-11-09 00:02:53', '', 0, 'https://ivandarioposada.me/404-error-page/', 0, 'page', '', 0),
(72, 1, '2023-11-08 19:02:53', '2023-11-09 00:02:53', '', 'WPMS HTML Sitemap', 'metaseo_html_sitemap', 'publish', 'closed', 'closed', '', 'wpms-html-sitemap', '', '', '2023-11-08 19:02:53', '2023-11-09 00:02:53', '', 0, 'https://ivandarioposada.me/wpms-html-sitemap/', 0, 'page', '', 0),
(73, 1, '2023-11-08 19:02:53', '2023-11-09 00:02:53', '<div class=\"wall\"\n style=\"background-color: #F2F3F7; border: 30px solid #fff; width: 90%; height: 90%; margin: 0 auto;\">\n\n        <h1 style=\"text-align: center; font-family:\'open-sans\', arial;\n         color: #444; font-size: 60px; padding: 50px;\">ERROR 404 <br />-<br />NOT FOUND</h1>\n    <p style=\"text-align: center; font-family:\'open-sans\', arial; color: #444;\n     font-size: 40px; padding: 20px; line-height: 55px;\">\n    // You may have mis-typed the URL,<br />\n    // Or the page has been removed,<br />\n    // Actually, there is nothing to see here...</p>\n        <p style=\"text-align: center;\"><a style=\" font-family:\'open-sans\', arial; color: #444;\n         font-size: 20px; padding: 20px; line-height: 30px; text-decoration: none;\"\n          href=\"https://ivandarioposada.me\"><< Go back to home page >></a></p>\n    </div>', '404 Error, content does not exist anymore', 'metaseo_404_page', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2023-11-08 19:02:53', '2023-11-09 00:02:53', '', 71, 'https://ivandarioposada.me/?p=73', 0, 'revision', '', 0),
(76, 1, '2023-11-09 21:01:17', '2023-11-10 02:01:17', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:01:17', '2023-11-10 02:01:17', '', 8, 'https://ivandarioposada.me/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-11-09 21:01:40', '2023-11-10 02:01:40', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:01:40', '2023-11-10 02:01:40', '', 8, 'https://ivandarioposada.me/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-11-09 21:02:18', '2023-11-10 02:02:18', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:02:18', '2023-11-10 02:02:18', '', 8, 'https://ivandarioposada.me/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-11-09 21:02:47', '2023-11-10 02:02:47', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:02:47', '2023-11-10 02:02:47', '', 8, 'https://ivandarioposada.me/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-11-09 21:04:31', '2023-11-10 02:04:31', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:04:31', '2023-11-10 02:04:31', '', 8, 'https://ivandarioposada.me/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-11-09 21:05:26', '2023-11-10 02:05:26', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:05:26', '2023-11-10 02:05:26', '', 8, 'https://ivandarioposada.me/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-11-09 21:10:23', '2023-11-10 02:10:23', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:10:23', '2023-11-10 02:10:23', '', 8, 'https://ivandarioposada.me/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-11-09 21:13:25', '2023-11-10 02:13:25', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:13:25', '2023-11-10 02:13:25', '', 8, 'https://ivandarioposada.me/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-11-09 21:14:59', '2023-11-10 02:14:59', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:14:59', '2023-11-10 02:14:59', '', 8, 'https://ivandarioposada.me/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-11-09 21:17:57', '2023-11-10 02:17:57', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:17:57', '2023-11-10 02:17:57', '', 8, 'https://ivandarioposada.me/?p=85', 0, 'revision', '', 0),
(86, 1, '2023-11-09 21:18:22', '2023-11-10 02:18:22', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-09 21:18:22', '2023-11-10 02:18:22', '', 8, 'https://ivandarioposada.me/?p=86', 0, 'revision', '', 0),
(88, 1, '2023-12-04 17:26:36', '2023-12-04 22:26:36', '', 'De La Espriella Invest - Landing Page', '', 'publish', 'closed', 'closed', '', 'de-la-espriella-invest', '', '', '2023-12-04 17:29:23', '2023-12-04 22:29:23', '', 0, 'https://ivandarioposada.me/?post_type=project&#038;p=88', 0, 'project', '', 0),
(89, 1, '2023-12-04 17:24:35', '2023-12-04 22:24:35', '', 'delaespriellainvest.com-responsive', '', 'inherit', 'open', 'closed', '', 'delaespriellainvest-com-responsive', '', '', '2023-12-04 17:24:35', '2023-12-04 22:24:35', '', 88, 'https://ivandarioposada.me/wp-content/uploads/2023/12/delaespriellainvest.com-responsive.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2023-12-04 17:24:44', '2023-12-04 22:24:44', '', 'delaespriellainvest.com', '', 'inherit', 'open', 'closed', '', 'delaespriellainvest-com', '', '', '2023-12-04 17:24:44', '2023-12-04 22:24:44', '', 88, 'https://ivandarioposada.me/wp-content/uploads/2023/12/delaespriellainvest.com_.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2023-12-06 19:44:46', '2023-12-07 00:44:46', '', 'De la Espriella Style  - Ecommerce', '', 'publish', 'closed', 'closed', '', 'de-la-espriella-style-ecommerce', '', '', '2023-12-06 19:44:47', '2023-12-07 00:44:47', '', 0, 'https://ivandarioposada.me/?post_type=project&#038;p=93', 0, 'project', '', 0),
(94, 1, '2023-12-06 19:39:16', '2023-12-07 00:39:16', '', 'adle-home', '', 'inherit', 'open', 'closed', '', 'adle-home', '', '', '2023-12-06 19:39:16', '2023-12-07 00:39:16', '', 93, 'https://ivandarioposada.me/wp-content/uploads/2023/12/adle-home.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2023-12-06 19:42:46', '2023-12-07 00:42:46', '', 'adle-category.view', '', 'inherit', 'open', 'closed', '', 'adle-category-view', '', '', '2023-12-06 19:42:46', '2023-12-07 00:42:46', '', 93, 'https://ivandarioposada.me/wp-content/uploads/2023/12/adle-category.view_.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2023-12-06 19:42:55', '2023-12-07 00:42:55', '', 'adle-product.view', '', 'inherit', 'open', 'closed', '', 'adle-product-view', '', '', '2023-12-06 19:42:55', '2023-12-07 00:42:55', '', 93, 'https://ivandarioposada.me/wp-content/uploads/2023/12/adle-product.view_.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2023-12-06 19:58:45', '2023-12-07 00:58:45', '', 'AnalizaTest', '', 'publish', 'closed', 'closed', '', 'analizatest', '', '', '2023-12-06 19:58:47', '2023-12-07 00:58:47', '', 0, 'https://ivandarioposada.me/?post_type=project&#038;p=97', 0, 'project', '', 0),
(98, 1, '2023-12-06 19:52:38', '2023-12-07 00:52:38', '', 'analizatest-egistro', '', 'inherit', 'open', 'closed', '', 'analizatest-egistro', '', '', '2023-12-06 19:52:38', '2023-12-07 00:52:38', '', 97, 'https://ivandarioposada.me/wp-content/uploads/2023/12/analizatest-egistro.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2023-12-06 19:52:45', '2023-12-07 00:52:45', '', 'analizatest-home', '', 'inherit', 'open', 'closed', '', 'analizatest-home', '', '', '2023-12-06 19:52:45', '2023-12-07 00:52:45', '', 97, 'https://ivandarioposada.me/wp-content/uploads/2023/12/analizatest-home.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2023-12-06 19:52:48', '2023-12-07 00:52:48', '', 'analizatest-pregunta', '', 'inherit', 'open', 'closed', '', 'analizatest-pregunta', '', '', '2023-12-06 19:52:48', '2023-12-07 00:52:48', '', 97, 'https://ivandarioposada.me/wp-content/uploads/2023/12/analizatest-pregunta.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'ivandariowebdev', 'ivandariowebdev', 0),
(3, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(36, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'idposada'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '87'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"186.31.203.0\";}'),
(20, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(21, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(22, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '3'),
(27, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(28, 1, 'wp_user-settings', 'libraryContent=browse'),
(29, 1, 'wp_user-settings-time', '1699026410'),
(30, 1, 'session_tokens', 'a:1:{s:64:\"8fd95f5395e28e54b551624d50775db5c83fde70ce5f856495bda5302c4063fa\";a:4:{s:10:\"expiration\";i:1702517516;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0\";s:5:\"login\";i:1702344716;}}'),
(31, 1, 'duplicator_notice_bar_dismissed', '1'),
(32, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-11-10T02:14:48.202Z\";}'),
(33, 1, 'metaseo_broken_link_per_page', '10'),
(34, 1, 'metaseo_posts_per_page', '10'),
(35, 1, 'wpms_cat_per_page', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'idposada', '$P$BEUxuhhjIzVwKKnigQvyE6RiEJg16y/', 'idposada', 'ivandariowebdev@gmail.com', 'http://ivandarioposada.me', '2023-10-31 18:51:50', '', 0, 'idposada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpms_links`
--

CREATE TABLE `wp_wpms_links` (
  `id` int(20) UNSIGNED NOT NULL,
  `link_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link_final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `link_url_redirect` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `link_text` text NOT NULL DEFAULT '',
  `source_id` int(20) DEFAULT 0,
  `type` varchar(100) DEFAULT '',
  `status_code` varchar(100) DEFAULT '',
  `status_text` varchar(250) DEFAULT '',
  `hit` int(20) NOT NULL DEFAULT 1,
  `redirect` tinyint(1) NOT NULL DEFAULT 0,
  `broken_indexed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `broken_internal` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `warning` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dismissed` tinyint(1) NOT NULL DEFAULT 0,
  `follow` tinyint(1) DEFAULT 1,
  `meta_title` varchar(250) DEFAULT '',
  `internal` tinyint(1) DEFAULT 1,
  `referrer` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wp_wpms_links`
--

INSERT INTO `wp_wpms_links` (`id`, `link_url`, `link_final_url`, `link_url_redirect`, `link_text`, `source_id`, `type`, `status_code`, `status_text`, `hit`, `redirect`, `broken_indexed`, `broken_internal`, `warning`, `dismissed`, `follow`, `meta_title`, `internal`, `referrer`) VALUES
(1, 'ivandarioposada.me/ere9q/oslo-company-prepared-the-following-contribution', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 5, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(2, 'ivandarioposada.me/of5gfz/andrea-olshan-glenn-fuhrman-wedding', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(3, 'ivandarioposada.me/.git/config', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 21, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(4, 'ivandarioposada.me/.git/config', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(5, 'ivandarioposada.me/.well-known/acme-challenge/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(6, 'ivandarioposada.me/vendor/phpunit/phpunit/src/Util/PHP/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(7, 'ivandarioposada.me/wp-content/uploads/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 13, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(8, 'ivandarioposada.me/wordpress/wp-admin/includes', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(9, 'ivandarioposada.me/wp-admin/js/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(10, 'ivandarioposada.me/ALFA_DATA/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(11, 'ivandarioposada.me/wp-content/upgrade/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 13, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(12, 'ivandarioposada.me/wp-admin/css/colors/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 12, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(13, 'ivandarioposada.me/wp-includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 13, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(14, 'ivandarioposada.me/wp-includes/css/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(15, 'ivandarioposada.me/wp-includes/ID3/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 16, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-includes/ID3||https://ivandarioposada.me'),
(16, 'ivandarioposada.me/wp-includes/IXR/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(17, 'ivandarioposada.me/wp-includes/Requests/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(18, 'ivandarioposada.me/wp-includes/SimplePie/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(19, 'ivandarioposada.me/wp-includes/Text/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(20, 'ivandarioposada.me/wp-includes/Text/Diff/Renderer/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(21, 'ivandarioposada.me/wp-includes/certificates/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(22, 'ivandarioposada.me/wp-includes/customize/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(23, 'ivandarioposada.me/wp-includes/fonts/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(24, 'ivandarioposada.me/wp-includes/images/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(25, 'ivandarioposada.me/wp-includes/pomo/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(26, 'ivandarioposada.me/wp-includes/rest-api/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(27, 'ivandarioposada.me/wp-includes/widgets/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(28, 'ivandarioposada.me/wp-admin/css/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 32, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||binance.com||http://ivandarioposada.me/wp-admin/css/index.php'),
(29, 'ivandarioposada.me/wp-admin/images/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 12, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(30, 'ivandarioposada.me/wp-admin/maint/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(31, 'ivandarioposada.me/wp-admin/meta/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(32, 'ivandarioposada.me/wp-content/uploads/ao_ccss/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(33, 'ivandarioposada.me/wp-content/uploads/2021/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(34, 'ivandarioposada.me/wp-content/plugins/elementor/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(35, 'ivandarioposada.me/wp-content/mu-plugins/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(36, 'ivandarioposada.me/upload/image/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(37, 'ivandarioposada.me/uploads/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||binance.com'),
(38, 'ivandarioposada.me/wordpress/wp-content/uploads/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(39, 'ivandarioposada.me/wordpress/wp-includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(40, 'ivandarioposada.me/blog/wp-includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(41, 'ivandarioposada.me/wp-admin/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(42, 'ivandarioposada.me/WordPress/wp-admin/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(43, 'ivandarioposada.me/sites/default/files/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||binance.com'),
(44, 'ivandarioposada.me/admin/controller/extension/extension/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||binance.com'),
(45, 'ivandarioposada.me/admin/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(46, 'ivandarioposada.me/admin/editor/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(47, 'ivandarioposada.me/admin/images/slider/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(48, 'ivandarioposada.me/admin/tmp/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(49, 'ivandarioposada.me/admin/uploads/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(50, 'ivandarioposada.me/admin/uploads/images/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(51, 'ivandarioposada.me/administrator/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 19, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(52, 'ivandarioposada.me/ALFA_DATA/alfacgiapi/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(53, 'ivandarioposada.me/assets/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(54, 'ivandarioposada.me/blog/wp-admin/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(55, 'ivandarioposada.me/cgi-bin/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(56, 'ivandarioposada.me/components/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(57, 'ivandarioposada.me/css/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 11, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(58, 'ivandarioposada.me/files/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||binance.com'),
(59, 'ivandarioposada.me/home/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(60, 'ivandarioposada.me/images/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||binance.com'),
(61, 'ivandarioposada.me/include/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(62, 'ivandarioposada.me/modules/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(63, 'ivandarioposada.me/modules/mod_simplefileuploadv1.3/elements/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(64, 'ivandarioposada.me/mt/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(65, 'ivandarioposada.me/site/wp-admin/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(66, 'ivandarioposada.me/site/wp-includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(67, 'ivandarioposada.me/tmp/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(68, 'ivandarioposada.me/tmps/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(69, 'ivandarioposada.me/upload/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(70, 'ivandarioposada.me/wordpress/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 11, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(71, 'ivandarioposada.me/wordpress/wp-admin/includes/wp-admin/js/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(72, 'ivandarioposada.me/wp-admin/css/colors/coffee/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 19, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://ivandarioposada.me//wp-admin/css/colors/coffee/index.php'),
(73, 'ivandarioposada.me/wp-admin/css/colors/ectoplasm/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(74, 'ivandarioposada.me/wp-admin/css/colors/light/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(75, 'ivandarioposada.me/wp-admin/css/colors/midnight/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(76, 'ivandarioposada.me/wp-admin/css/colors/modern/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(77, 'ivandarioposada.me/wp-admin/css/colors/ocean/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(78, 'ivandarioposada.me/wp-admin/css/colors/sunrise/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(79, 'ivandarioposada.me/wp-admin/js/widgets/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(80, 'ivandarioposada.me/wp-content/languages/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(81, 'ivandarioposada.me/wp-content/uploads/2022/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(82, 'ivandarioposada.me/wp-content/uploads/2023/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 11, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(83, 'ivandarioposada.me/wp-includes/wp-includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(84, 'ivandarioposada.me/wp-includes/css/dist/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(85, 'ivandarioposada.me/wp-includes/ID3/wp-includes/IXR/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(86, 'ivandarioposada.me/wp-includes/images/crystal/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(87, 'ivandarioposada.me/wp-includes/images/media/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(88, 'ivandarioposada.me/wp-includes/images/smilies/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(89, 'ivandarioposada.me/wp-includes/images/wlw/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(90, 'ivandarioposada.me/wp-includes/js/codemirror/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(91, 'ivandarioposada.me/wp-includes/js/plupload/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(92, 'ivandarioposada.me/wp-includes/PHPMailer/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(93, 'ivandarioposada.me/wp-includes/sitemaps/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(94, 'ivandarioposada.me/wp-includes/sitemaps/providers/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(95, 'ivandarioposada.me/wp-includes/Text/Diff/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(96, 'ivandarioposada.me/wp/wp-admin/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(97, 'ivandarioposada.me/cache-wordpress/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(98, 'ivandarioposada.me/cakil/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(99, 'ivandarioposada.me/cekidot/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(100, 'ivandarioposada.me/ubh/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(101, 'ivandarioposada.me/wp-content/ALFA_DATA/alfacgiapi/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(102, 'ivandarioposada.me/wp-content/plugins/linkpreview/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(103, 'ivandarioposada.me/wp-content/plugins/aryabot/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(104, 'ivandarioposada.me/wp-content/plugins/BrutalShell/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(105, 'ivandarioposada.me/wp-content/plugins/cache-wordpress/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(106, 'ivandarioposada.me/wp-content/plugins/cakil/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(107, 'ivandarioposada.me/wp-content/plugins/cekidot/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(108, 'ivandarioposada.me/wp-content/plugins/db/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(109, 'ivandarioposada.me/wp-content/plugins/home/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(110, 'ivandarioposada.me/wp-content/plugins/limit/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(111, 'ivandarioposada.me/wp-content/plugins/owfsmac/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(112, 'ivandarioposada.me/wp-content/plugins/prenota/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(113, 'ivandarioposada.me/wp-content/plugins/random/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(114, 'ivandarioposada.me/wp-content/plugins/ubh/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(115, 'ivandarioposada.me/wp-content/plugins/Uwogh-Segs/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(116, 'ivandarioposada.me/wp-content/plugins/wp-diambar/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(117, 'ivandarioposada.me/wp-content/plugins/wp-freeform/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(118, 'ivandarioposada.me/wp-content/plugins/wp-hps/sh/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(119, 'ivandarioposada.me/wp-content/plugins/wpeazvp/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(120, 'ivandarioposada.me/wp-content/plugins/zaen/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(121, 'ivandarioposada.me/wp-content/plugins/core-stab/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(122, 'ivandarioposada.me/wp-content/themes/alera/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(123, 'ivandarioposada.me/wp-content/themes/rishi/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(124, 'ivandarioposada.me/wp-content/themes/sketch/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(125, 'ivandarioposada.me/wp-content/themes/thuoc-nam/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(126, 'ivandarioposada.me/wp-content/themes/twentyfive/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(127, 'ivandarioposada.me/wp-content/themes/wp-pridmag/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(128, 'ivandarioposada.me/wp-content/themes/pridmag/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(129, 'ivandarioposada.me/wp-content/themes/zakra/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(130, 'ivandarioposada.me/wp-content/uploads/simple-file-list/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(131, 'ivandarioposada.me/wp-diambar/includes/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(132, 'ivandarioposada.me/admin/upload/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(133, 'ivandarioposada.me/wp-includes/js/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(134, 'ivandarioposada.me/wp-admin/css/colors/blue/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(135, 'ivandarioposada.me/of5gfz/the-dark-at-the-top-of-the-stairs-female-monologue', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 20, 0, 1, 0, 0, 0, 1, '', 1, 'http://woisin-dachbaustoffe.de'),
(146, 'https://ivandarioposada.me/wp-content/uploads/2023/11/img-perfil1png.png', 'https://ivandarioposada.me/wp-content/uploads/2023/11/img-perfil1png.png', '', '', 8, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 0, ''),
(147, 'ivandarioposada.me/of5gfz/theme-of-conflict-in-antony-and-cleopatra', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(148, 'ivandarioposada.me/ere9q/how-to-describe-a-dataset-in-a-report', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(149, 'ivandarioposada.me/x2fg20v/roger-schaefer-update-2020', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(150, 'ivandarioposada.me/x2fg20v/lassen-county-snow-load-map', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(151, 'ivandarioposada.me/ere9q/san-angelo-stock-show-and-rodeo-exhibits', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://seysanshoes.com/nbxLgwU/celebrities-who-live-in-connecticut'),
(152, 'ivandarioposada.me/x2fg20v/cruisin%27-the-coast-2022-registration', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(153, 'ivandarioposada.me/ere9q/plainfield-academy-for-the-arts-and-advanced-studies', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://nuevocauca.com/8t68n6u/donald-white-west-virginia||https://ivandarioposada.me'),
(154, 'ivandarioposada.me/x2fg20v/characteristics-of-solomon-in-the-bible', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://designetc.org/author/zig/'),
(155, 'ivandarioposada.me/ere9q/mcfarland-funeral-home-columbus%2C-nc', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 18, 0, 1, 0, 0, 0, 1, '', 1, 'https://www.aceconsultingmidwest.com'),
(156, 'ivandarioposada.me/x2fg20v/things-to-bring-to-a-bonfire-that-starts-with-e', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(157, 'ivandarioposada.me/of5gfz/pearland-arrests-yesterday', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(158, 'ivandarioposada.me/old/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(159, 'ivandarioposada.me/new/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(160, 'ivandarioposada.me/backup/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(161, 'ivandarioposada.me/temp/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(162, 'ivandarioposada.me/wordpress', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/wordpress'),
(163, 'ivandarioposada.me/bc', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/bc'),
(164, 'ivandarioposada.me/bk', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/bk'),
(165, 'ivandarioposada.me/backup', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/backup'),
(166, 'ivandarioposada.me/old', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/old'),
(167, 'ivandarioposada.me/new', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/new'),
(168, 'ivandarioposada.me/main', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/main'),
(169, 'ivandarioposada.me/home', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me||http://www.ivandarioposada.me/home'),
(170, 'ivandarioposada.me/.aws/credentials', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(171, 'ivandarioposada.me/.aws/credentials', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(172, 'mail.ivandarioposada.me/.git/config', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(173, 'ivandarioposada.me/login.php?s=Admin/login', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(174, 'ivandarioposada.me/x2fg20v/tire-makes-noise-every-rotation', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(175, 'ivandarioposada.me/ere9q/star-wars-stamps-value', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(176, 'ivandarioposada.me/x2fg20v/2014-ford-focus-clutch-replacement-cost', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(177, 'ivandarioposada.me/ere9q/how-to-hard-reset-cricut-maker', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(178, 'ivandarioposada.me/of5gfz/carshield-commercial-actors', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 6, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(179, 'ivandarioposada.me/of5gfz/deborah-james-bob-eubanks', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(180, 'ivandarioposada.me/ere9q/top-high-school-basketball-players-in-georgia-2022', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'http://woiak.sggw.pl/category/aktualnosci/||http://wobiak.sggw.pl/category/aktualnosci/||https://ivandarioposada.me'),
(181, 'ivandarioposada.me/wp-content/plugins/ccx/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 13, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me//wp-content/plugins/ccx/index.php||https://ivandarioposada.me'),
(182, 'ivandarioposada.me/wp-content/plugins/revslider/includes/page/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 9, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me//wp-content/plugins/revslider/includes/page/index.php'),
(183, 'ivandarioposada.me/wp-content/plugins/elementor/includes/settings/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 9, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me//wp-content/plugins/elementor/includes/settings/index.php'),
(184, 'ivandarioposada.me/wp-includes/blocks/table/int/tmpl/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 10, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me//wp-includes/blocks/table/int/tmpl/index.php||https://ivandarioposada.me'),
(185, 'ivandarioposada.me/wp-content/plugins/revslider/includes/external/page/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 11, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me//wp-content/plugins/revslider/includes/external/page/index.php||http://ivandarioposada.me/wp-content/plugins/revslider/includes/external/page/index.php'),
(186, 'ivandarioposada.me/apple-app-site-association', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(187, 'ivandarioposada.me/.well-known/apple-app-site-association', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(188, 'ivandarioposada.me/x2fg20v/caveman-kings-of-pain-net-worth', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 8, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(189, 'ivandarioposada.me/ere9q/recent-will-county-deaths', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(190, 'ivandarioposada.me/ere9q/the-air-up-there-i-will-consider-it-for-eternity', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(191, 'ivandarioposada.me/x2fg20v/mooresville-nc-softball-schedule', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 5, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(192, 'ivandarioposada.me/of5gfz/what-is-a-joint-stock-company-in-the-1600s', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(193, 'ivandarioposada.me/debug/default/view?panel=config', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(194, 'ivandarioposada.me/v2/_catalog', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(195, 'ivandarioposada.me/server-status', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(196, 'ivandarioposada.me/_all_dbs', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(197, 'ivandarioposada.me/telescope/requests', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(198, 'ivandarioposada.me/ere9q/churches-for-sale-in-cuyahoga-county', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(199, 'ivandarioposada.me/ere9q/craftsman-2800-psi-pressure-washer-manual', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(200, 'ivandarioposada.me/of5gfz/elvis-presley-military-rank', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(201, 'ivandarioposada.me/ere9q/why-is-transduction-important-to-sensation%3F', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(202, 'ivandarioposada.me/wp-content/plugins/apikey/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 9, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(203, 'ivandarioposada.me/of5gfz/babylon%27s-fall-classes', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(204, 'ivandarioposada.me/xt/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/xt/index.php'),
(205, 'ivandarioposada.me/wp-content/plugins/xt/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-content/plugins/xt/index.php'),
(206, 'ivandarioposada.me/wp-includes/Requests/Text/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-includes/Requests/Text/index.php'),
(207, 'ivandarioposada.me/wp-includes/js/tinymce/skins/lightgray/img/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-includes/js/tinymce/skins/lightgray/img/index.php?p=||https://ivandarioposada.me'),
(208, 'ivandarioposada.me/ccx/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/ccx/index.php||https://ivandarioposada.me'),
(209, 'ivandarioposada.me/wp-content/themes/ccx/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 5, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-content/themes/ccx/index.php||http://ivandarioposada.me//wp-content/themes/ccx/index.php||https://ivandarioposada.me'),
(210, 'ivandarioposada.me/wp-includes/js/tinymce/plugins/compat3x/css/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-includes/js/tinymce/plugins/compat3x/css/index.php?p='),
(211, 'ivandarioposada.me/wp-includes/js/tinymce/skins/wordpress/images/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://ivandarioposada.me/wp-includes/js/tinymce/skins/wordpress/images/index.php?p='),
(212, 'ivandarioposada.me/x2fg20v/romantic-things-to-do-in-conway%2C-ar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(213, 'ivandarioposada.me/?author=2', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://www.ivandarioposada.me///?author=2'),
(214, 'ivandarioposada.me/x2fg20v/dr-david-cardiologist-aultman-hospital', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(215, 'ivandarioposada.me/ere9q/el-centro-car-accident-yesterday', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(216, 'ivandarioposada.me/of5gfz/female-death-row-inmates-in-arkansas', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(217, 'ivandarioposada.me/x2fg20v/valley-urologic-associates-patient-portal', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(218, 'ivandarioposada.me/ere9q/3900-yorktowne-blvd-port-orange', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 7, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(219, 'ivandarioposada.me/ere9q/http-request-payload-vs-body', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(220, 'ivandarioposada.me/of5gfz/tarek-and-debbie-sharif', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(221, 'ivandarioposada.me/x2fg20v/vintage-usa-pottery-companies', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 4, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(222, 'ivandarioposada.me/of5gfz/manchester-gangsters-documentary', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(223, 'ivandarioposada.me/of5gfz/spalding-county-grand-jury', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(224, 'ivandarioposada.me/x2fg20v/gecko%27s-grill-and-pub-nutrition', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(225, 'ivandarioposada.me/wp-admin/css/colors/blue/blue.php?wall=ZWNobyAnQmxhY2sgQm90Jztmd3JpdGUoZm9wZW4oJ2Jsa3VwaHp3LnBocCcsJ3crJyksJzw/cGhwIGVjaG8gIkJsYWNrIEJvdCI7Pz4nKTs=', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'www.google.com'),
(226, 'ivandarioposada.me/x2fg20v/matt-o%27connor-capital-group', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(227, 'ivandarioposada.me/ere9q/world-record-for-most-soccer-juggles-in-a-row', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(228, 'ivandarioposada.me/ere9q/bbl-under-$5,000-in-atlanta,-ga', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(229, 'ivandarioposada.me/x2fg20v/words-scottish-people-can%27t-say', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(230, 'ivandarioposada.me/x2fg20v/project-source-spray-paint-gloss-white-sds', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(231, 'ivandarioposada.me/of5gfz/david-anthony-kraft-obituary', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(232, 'ivandarioposada.me/of5gfz/marriott-club-membership-fee', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(233, 'ivandarioposada.me/x2fg20v/dello-russo-funeral-home-medford%2C-ma-obituaries', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(234, 'ivandarioposada.me/ere9q/top-10-richest-person-in-afghanistan', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(235, 'ivandarioposada.me/x2fg20v/why-is-cockburn-pronounced-coburn', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(236, 'mail.ivandarioposada.me/?author=2', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'http://mail.ivandarioposada.me///?author=2'),
(237, 'ivandarioposada.me/x2fg20v/neovit-b-complex-data-sheet', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(238, 'ivandarioposada.me/x2fg20v/107-maple-ave%2C-greenwich%2C-ct', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(239, 'ivandarioposada.me/of5gfz/mike-grady-stylist', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(240, 'ivandarioposada.me/x2fg20v/niles-police-blotter-2022', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(241, 'ivandarioposada.me/x2fg20v/toronto-hydro-jobs-salary', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(242, 'ivandarioposada.me/x2fg20v/gaston-county-mugshots-today', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 5, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(243, 'ivandarioposada.me/ere9q/james-harvey-obituary', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(244, 'ivandarioposada.me/of5gfz/did-audie-murphy-have-any-grandchildren', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(245, 'ivandarioposada.me/x2fg20v/how-to-bypass-2k-launcher-epic-games', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(246, 'ivandarioposada.me/ere9q/oludeniz-beach-weather', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(247, 'ivandarioposada.me/ere9q/the-trojan-dardanus-and-the-land-of-hesperia', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(248, 'ivandarioposada.me/ere9q/when-was-lead-paint-banned-for-automotive-use', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(249, 'ivandarioposada.me/ere9q/delta-airlines-pilot-hiring-process', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(250, 'ivandarioposada.me/of5gfz/dr-donald-kraft', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(251, 'ivandarioposada.me/ere9q/iowa-state-wrestling-record', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(252, 'ivandarioposada.me/ere9q/desmos-graphing-calculator', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(253, 'ivandarioposada.me/ere9q/treatment-of-shortness-of-breath-in-ckd', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(254, 'ivandarioposada.me/ere9q/unblocked-search-engines-at-school-aygestin', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(255, 'ivandarioposada.me/ere9q/how-old-is-bart-starr-jr', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(256, 'ivandarioposada.me/ere9q/when-will-woodsmith-mine-open', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(257, 'ivandarioposada.me/sitemap', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(258, 'ivandarioposada.me/of5gfz/rollins-driving-modules', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(259, 'ivandarioposada.me/of5gfz/when-will-senate-vote-on-more-act', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(260, 'ivandarioposada.me/wp-admin/css/colors/blue/blue.php?wall=ZWNobyAnQmxhY2sgQm90Jztmd3JpdGUoZm9wZW4oJ2Jsa3pjc2ZnLnBocCcsJ3crJyksJzw/cGhwIGVjaG8gIkJsYWNrIEJvdCI7Pz4nKTs=', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(261, 'ivandarioposada.me/phpinfo', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(262, 'ivandarioposada.me/_profiler/phpinfo', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(263, 'ivandarioposada.me/wp-content/themes/wp-classic/inc/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(264, 'ivandarioposada.me/wp-content/plugins/task-controller/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(265, 'ivandarioposada.me/of5gfz/rivera-funeral-home-espanola', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(266, 'ivandarioposada.me/x2fg20v/robyn-anderson-columbine-now', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(267, 'ivandarioposada.me/x2fg20v/did-doris-hamner-have-tuberculosis', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(268, 'ivandarioposada.me/ere9q/north-carolina-mugshots', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(269, 'ivandarioposada.me/ere9q/issa-brothers-contact-details', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(270, 'ivandarioposada.me/ere9q/how-to-change-categorical-variable-to-numeric-in-excel', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me');
INSERT INTO `wp_wpms_links` (`id`, `link_url`, `link_final_url`, `link_url_redirect`, `link_text`, `source_id`, `type`, `status_code`, `status_text`, `hit`, `redirect`, `broken_indexed`, `broken_internal`, `warning`, `dismissed`, `follow`, `meta_title`, `internal`, `referrer`) VALUES
(271, 'ivandarioposada.me/x2fg20v/how-to-skip-through-army-opsec-level-1', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(272, 'ivandarioposada.me/of5gfz/who-makes-kirkland-tomato-sauce', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(273, 'ivandarioposada.me/of5gfz/bonobo-winery-wedding', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(276, 'https://ivandarioposada.me/wp-content/uploads/2023/12/delaespriellainvest.com-responsive.png', 'https://ivandarioposada.me/wp-content/uploads/2023/12/delaespriellainvest.com-responsive.png', '', '', 88, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 0, ''),
(277, 'https://ivandarioposada.me/wp-content/uploads/2023/11/logo-ivan-wev-dev-1.png', 'https://ivandarioposada.me/wp-content/uploads/2023/11/logo-ivan-wev-dev-1.png', '', '', 5, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 0, ''),
(278, 'https://ivandarioposada.me/wp-content/uploads/2023/11/img-perfil1png.png', 'https://ivandarioposada.me/wp-content/uploads/2023/11/img-perfil1png.png', '', '', 5, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 0, ''),
(279, 'ivandarioposada.me/ere9q/helen-robinson-quotes', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(280, 'ivandarioposada.me/x2fg20v/can-you-move-furniture-in-before-certificate-of-occupancy', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(281, 'ivandarioposada.me/ere9q/swanson-funeral-home-detroit-obituaries', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(282, 'ivandarioposada.me/ere9q/can-cats-have-coconut-whipped-cream', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(283, 'ivandarioposada.me/ere9q/miami-mayor-candidates', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(284, 'ivandarioposada.me/of5gfz/duluth-canal-ship-schedule', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(285, 'ivandarioposada.me/ere9q/what-animal-has-7-stomachs', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(286, 'ivandarioposada.me/of5gfz/how-to-open-map-in-batman:-arkham-origins', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(287, 'ivandarioposada.me/ere9q/alan-davies-qi-salary', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 3, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(288, 'ivandarioposada.me/x2fg20v/stone-brothers-obituary-in-fort-pierce', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(289, 'ivandarioposada.me/x2fg20v/thirty-thousand-rupees-only', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(290, 'ivandarioposada.me/of5gfz/ani-difranco-husband-mike-napolitano', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(291, 'ivandarioposada.me/ere9q/in-tiny-fishing-what-is-after-seahorse', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(292, 'ivandarioposada.me/of5gfz/mr-lil-one-net-worth', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(293, 'ivandarioposada.me/x2fg20v/is-kent-hrbek-still-married', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(294, 'ivandarioposada.me/of5gfz/how-to-stop-diarrhea-with-tube-feeding', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(295, 'ivandarioposada.me/x2fg20v/flixbus-orlando-kissimmee-address', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(296, 'ivandarioposada.me/x2fg20v/why-are-flags-at-half-mast-today-in-california', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(297, 'ivandarioposada.me/x2fg20v/parking-in-sunnyside-queens', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(298, 'ivandarioposada.me/x2fg20v/shooting-in-south-suburbs-today', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(299, 'ivandarioposada.me/x2fg20v/new-world-best-armor-perks', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(300, 'ivandarioposada.me/x2fg20v/wilmington,-nc-shooting-today', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(301, 'ivandarioposada.me/x2fg20v/mexican-baseball-players-salary', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(302, 'ivandarioposada.me/of5gfz/blue-calamus-root-truth-serum', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(303, 'ivandarioposada.me/x2fg20v/ocean-county-mugshots-2020', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(304, 'ivandarioposada.me/of5gfz/herbs-to-cure-hormonal-imbalance-nortriptyline', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(305, 'ivandarioposada.me/wp-content/uploads/2023/11/img-perfil1png', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me/||https://ivandarioposada.me'),
(306, 'ivandarioposada.me/x2fg20v/fannie-mae-business-mileage-depreciation-factor-2020', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(307, 'ivandarioposada.me/x2fg20v/julian-nagelsmann-game-model', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(308, 'ivandarioposada.me/x2fg20v/pros-and-cons-of-living-in-port-townsend', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(309, 'ivandarioposada.me/ere9q/2021-chronicles-basketball-checklist', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(310, 'ivandarioposada.me/ere9q/car-accident-on-schroeder-road', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(311, 'ivandarioposada.me/ere9q/backdated-pay-rise-after-leaving-nhs', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(312, 'ivandarioposada.me/ere9q/applebee%27s-wing-flavors', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(313, 'ivandarioposada.me/ere9q/brigantine-4x4-permit-2022', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(314, 'ivandarioposada.me/ere9q/bullmastiff-puppies-for-sale-in-san-diego', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(315, 'ivandarioposada.me/of5gfz/nellis-rapids-appointment', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(316, 'ivandarioposada.me/x2fg20v/dello-russo-funeral-home-medford,-ma-obituaries', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(317, 'ivandarioposada.me/of5gfz/ron-and-hermione-fanfiction-pregnant', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(318, 'ivandarioposada.me/application/json', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(319, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/js/application/json', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(320, 'ivandarioposada.me/image/jpeg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(321, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/png', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(322, 'ivandarioposada.me/application/wordperfect', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(323, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/gif', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(324, 'ivandarioposada.me/image/gif', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(325, 'ivandarioposada.me/image/png', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(326, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/jpeg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(327, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/x-icon', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(328, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/heic', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(329, 'ivandarioposada.me/image/bmp', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(330, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/bmp', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(331, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/x-ms-asf', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(332, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/webp', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(333, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/image/tiff', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(334, 'ivandarioposada.me/image/tiff', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(335, 'ivandarioposada.me/image/webp', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(336, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/x-ms-wmx', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(337, 'ivandarioposada.me/image/x-icon', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(338, 'ivandarioposada.me/image/heic', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(339, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/x-ms-wmv', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(340, 'ivandarioposada.me/video/x-ms-wm', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(341, 'ivandarioposada.me/video/x-ms-wmx', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(342, 'ivandarioposada.me/video/x-ms-wmv', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(343, 'ivandarioposada.me/video/x-ms-asf', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(344, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/avi', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(345, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/x-ms-wm', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(346, 'ivandarioposada.me/video/avi', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(347, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/divx', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(348, 'ivandarioposada.me/video/quicktime', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(349, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/mpeg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(350, 'ivandarioposada.me/video/divx', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(351, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/x-flv', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(352, 'ivandarioposada.me/video/x-flv', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(353, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/quicktime', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(354, 'ivandarioposada.me/video/mpeg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(355, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/mp4', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(356, 'ivandarioposada.me/video/mp4', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(357, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/ogg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(358, 'ivandarioposada.me/video/ogg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(359, 'ivandarioposada.me/video/webm', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(360, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/3gpp', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(361, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/webm', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(362, 'ivandarioposada.me/video/x-matroska', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(363, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/x-matroska', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(364, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/video/3gpp2', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(365, 'ivandarioposada.me/video/3gpp', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(366, 'ivandarioposada.me/video/3gpp2', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(367, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/plain', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(368, 'ivandarioposada.me/text/plain', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(369, 'ivandarioposada.me/text/richtext', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(370, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/csv', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(371, 'ivandarioposada.me/text/csv', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(372, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/tab-separated-values', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(373, 'ivandarioposada.me/text/tab-separated-values', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(374, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/calendar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(375, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/css', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(376, 'ivandarioposada.me/text/calendar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(377, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/richtext', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(378, 'ivandarioposada.me/text/css', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(379, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/vtt', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(380, 'ivandarioposada.me/text/html', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(381, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/text/html', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(382, 'ivandarioposada.me/text/vtt', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(383, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/mpeg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(384, 'ivandarioposada.me/audio/mpeg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(385, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/aac', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(386, 'ivandarioposada.me/audio/aac', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(387, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/x-realaudio', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(388, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/wav', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(389, 'ivandarioposada.me/audio/x-realaudio', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(390, 'ivandarioposada.me/audio/ogg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(391, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/ogg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(392, 'ivandarioposada.me/audio/wav', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(393, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/x-ms-wma', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(394, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/flac', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(395, 'ivandarioposada.me/audio/flac', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(396, 'ivandarioposada.me/audio/x-ms-wma', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(397, 'ivandarioposada.me/audio/midi', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(398, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/javascript', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(399, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/midi', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(400, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/x-ms-wax', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(401, 'ivandarioposada.me/audio/x-ms-wax', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(402, 'ivandarioposada.me/audio/x-matroska', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(403, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/audio/x-matroska', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(404, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/rtf', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(405, 'ivandarioposada.me/application/javascript', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(406, 'ivandarioposada.me/application/rtf', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(407, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/pdf', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(408, 'ivandarioposada.me/application/pdf', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(409, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/java', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(410, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/x-shockwave-flash', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(411, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/x-tar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(412, 'ivandarioposada.me/application/x-shockwave-flash', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(413, 'ivandarioposada.me/application/java', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(414, 'ivandarioposada.me/application/x-tar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(415, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/zip', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(416, 'ivandarioposada.me/application/zip', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(417, 'ivandarioposada.me/application/x-gzip', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(418, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/x-gzip', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(419, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/octet-stream', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(420, 'ivandarioposada.me/application/rar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(421, 'ivandarioposada.me/application/x-7z-compressed', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(422, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/rar', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(423, 'ivandarioposada.me/application/octet-stream', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(424, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/x-7z-compressed', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(425, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/x-msdownload', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(426, 'ivandarioposada.me/application/x-msdownload', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(427, 'ivandarioposada.me/application/msword', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(428, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/msword', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(429, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/onenote', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(430, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/oxps', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(431, 'ivandarioposada.me/application/onenote', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(432, 'ivandarioposada.me/wp-content/plugins/contact-form-7/includes/swv/js/application/wordperfect', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(433, 'ivandarioposada.me/application/oxps', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(434, 'ivandarioposada.me/text/javascript', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(435, 'ivandarioposada.me/wp-includes/js/dist/createHooks', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(436, 'ivandarioposada.me/application/x-www-form-urlencoded', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(437, 'ivandarioposada.me/wp-includes/js/jquery/application/x-www-form-urlencoded', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(438, 'ivandarioposada.me/wp-includes/js/text/javascript', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(439, 'ivandarioposada.me/core/i18n', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(440, 'ivandarioposada.me/createHooks', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(441, 'ivandarioposada.me/wp-includes/js/dist/core/i18n', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(442, 'ivandarioposada.me/create-i18n', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(443, 'ivandarioposada.me/wp-includes/js/jquery/text/html', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(444, 'ivandarioposada.me/wp-includes/js/jquery/text/xml', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(445, 'ivandarioposada.me/wp-includes/js/jquery/text/plain', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(446, 'ivandarioposada.me/text/xml', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(447, 'ivandarioposada.me/wp-includes/js/dist/create-i18n', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(448, 'ivandarioposada.me/x2fg20v/ari-fleet-management-vendors', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(449, 'ivandarioposada.me/ere9q/like-a-boss-byron-scene', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(450, 'ivandarioposada.me/ere9q/best-fragrance-dupe-brands', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(451, 'ivandarioposada.me/x2fg20v/pick-up-lines-for-leah', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(452, 'ivandarioposada.me/ere9q/red-lerille-net-worth', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(453, 'ivandarioposada.me/of5gfz/john-dye-family', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(454, 'ivandarioposada.me/of5gfz/paul-dawson-rugby', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(455, 'ivandarioposada.me/x2fg20v/unsolved-murders-in-hannibal-mo', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(456, 'ivandarioposada.me/x2fg20v/las-palomas-transmiten-covid', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(457, 'ivandarioposada.me/ere9q/penny-hardaway-draft-trade', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(458, 'ivandarioposada.me/ere9q/pram-friendly-walks-sunshine-coast', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(459, 'ivandarioposada.me/of5gfz/grand-country-buffet-branson-breakfast-hours', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me'),
(460, 'ivandarioposada.me/x2fg20v/actors-who-could-play-jason-todd', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1, 'https://ivandarioposada.me');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_metaseo_images`
--
ALTER TABLE `wp_metaseo_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postid` (`post_id`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wpms_links`
--
ALTER TABLE `wp_wpms_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linkurl` (`link_url`(256)),
  ADD KEY `typeurl` (`type`(50)),
  ADD KEY `sourceid` (`source_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_metaseo_images`
--
ALTER TABLE `wp_metaseo_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1578;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_wpms_links`
--
ALTER TABLE `wp_wpms_links`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
