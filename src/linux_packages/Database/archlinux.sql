/*
MySQL Version: 8.0.29
Test OS: archlinux
Linux Versin: Linux 5.18.3 x86_64
Linux_Packages Main Database SQL.
Copyright (c) 2022 by QuestionMark001, All Rights Reserved.
*/

CREATE DATABASE IF NOT EXISTS archlinux DEFAULT CHARSET utf8 COLLATE utf8_general_ci;


USE archlinux;

CREATE TABLE `core` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `extra` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `community` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `multilib` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `testing` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `community-testing` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `multilib-testing` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gnome-unstable` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `kde-unstable` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` varchar(255) NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE `gnome-unstable`;

INSERT INTO `core`
VALUES ('x86_64','core','aci','2.3.1-2','Access control list utilities, libraries and headers','2022-06-16',NULL),
('any','core','amd-ucode','20220509.b19cbdc-1','Microcode update image for AMD CPUs','2022-05-15','2022-06-10'),
('any','core','archlinux-keyring','20220424-1','Arch Linux PGP keyring','2022-04-24',NULL),
('x86_64','core','argon2','20190702-4','A password-hashing function (reference C implementation)','2021-12-22',NULL),
('x86_64','core','attr','2.5.1-2','Extended attribute support library for ACL support','2022-02-02',NULL);

INSERT INTO `extra`
VALUES ('x86_64','extra','389-ds-base','2.1.1-1','389 Directory Server (base)','2022-05-04',NULL),
('x86_64','extra','a2ps','4.14-12','An Any to PostScript filter','2020-11-07',NULL),
('x86_64','extra','a52dec','0.7.4-11','A free library for decoding ATSC A/52 streams','2020-05-14',NULL),
('x86_64','extra','aalib','1.4rc5-14','A portable ASCII art graphic library','2020-05-14',NULL),
('x86_64','extra','abiword','3.0.5-2','Fully-featured word processor','2021-12-12',NULL);

INSERT INTO `community`
VALUES ('x86_64','community','0ad','a25.b-5','Cross-platform, 3D and historically-based real-time strategy game','2022-06-14',NULL),
('any','community','0ad-data','a25.b-1','Cross-platform, 3D and historically-based real-time strategy game (data files)','2021-08-26',NULL),
('x86_64','community','4ti2','1.6.9-2','A software package for algebraic, geometric and combinatorial problems on linear spaces','2020-07-09',NULL),
('x86_64','community','6tunnel','0.13-1','Tunnels IPv6 connections for IPv4-only applications','2019-12-25',NULL),
('x86_64','community','9base','6-7','Port of various original Plan9 tools to unix','2020-07-09',NULL);

INSERT INTO `multilib`
VALUES ('x86_64','multilib','cmucl','21d-3','CMU Common Lisp','2022-05-02',NULL),
('x86_64','multilib','lib32-aalib','1.4rc5-3','A portable ASCII art graphic library (32 bit)','2022-06-02',NULL),
('x86_64','multilib','lib32-acl','2.3.1-1','Access control list libraries (32-bit)','2021-03-16',NULL),
('x86_64','multilib','lib32-alsa-lib','1.2.7-2','An alternative implementation of Linux sound support (32 bit)','2022-06-10',NULL),
('x86_64','multilib','lib32-alsa-oss','1.1.8-3','OSS compatibility library (32 bit)','2021-12-29',NULL);

INSERT INTO `testing`
VALUES ('x86_64','testing','e2fsprogs','1.46.5-4','Ext2/3/4 filesystem utilities','2022-06-13',NULL),
('x86_64','testing','fuse2fs','1.46.5-4','Ext2/3/4 filesystem driver for FUSE','2022-06-13',NULL),
('x86_64','testing','kbd','2.5.1-1','Keytable files and keyboard utilities','2022-06-17',NULL),
('x86_64','testing','libblockdev','2.27-1','A library for manipulating block devices','2022-06-06',NULL),
('x86_64','testing','libmp4v2','1:2.1.1-1','A C/C++ library to create, modify and read MP4 files','2022-06-05',NULL);

INSERT INTO `community-testing`
VALUES ('x86_64','community-Testing','acpi_call','1.2.2-47','A linux kernel module that enables calls to ACPI methods through /proc/acpi/call','2022-06-16',NULL),
('x86_64','community-testing','bbswitch','0.8-513','Kernel module allowing to switch dedicated graphics card on Optimus laptops','2022-06-16',NULL),
('x86_64','community-testing','bbswitch-dkms','0.8-513','Kernel module allowing to switch dedicated graphics card on Optimus laptops','2022-06-16',NULL),
('x86_64','community-testing','borg','1.2.1-1','Deduplicating backup program with compression and authenticated encryption','2022-06-06',NULL),
('x86_64','community-testing','broadcom-wl','6.30.223.271-392','Broadcom 802.11 Linux STA wireless driver','2022-06-16',NULL);

INSERT INTO `multilib-testing`
VALUES ('x86_64','multilib-Testing','lib32-libva-mesa-driver','22.1.2-1','VA-API implementation for gallium (32-bit)','2022-06-16',NULL),
('x86_64','multilib-testing','lib32-mesa','22.1.2-1','An open-source implementation of the OpenGL specification (32-bit)','2022-06-16',NULL),
('x86_64','multilib-testing','lib32-mesa-vdpau','22.1.2-1','Mesa VDPAU drivers (32-bit)','2022-06-16',NULL),
('x86_64','multilib-testing','lib32-opencl-mesa','22.1.2-1','OpenCL support for AMD/ATI Radeon mesa drivers (32-bit)','2022-06-16',NULL),
('x86_64','multilib-testing','lib32-vulkan-intel','22.1.2-1',"Intel's Vulkan mesa driver (32-bit)",'2022-06-16',NULL);

INSERT INTO `kde-unstable`
VALUES ('x86_64','kde-unstable','qt6-3d','6.4.0beta1-1','C++ and QML APIs for easy inclusion of 3D graphics','2022-06-16',NULL),
('x86_64','kde-unstable','qt6-5compat','6.4.0beta1-1','Module that contains unsupported Qt 5 APIs','2022-06-16',NULL),
('x86_64','kde-unstable','qt6-base','6.4.0beta1-1','A cross-platform application and UI framework','2022-06-16',NULL),
('x86_64','kde-unstable','qt6-charts','6.4.0beta1-1','Provides a set of easy to use chart components','2022-06-16',NULL),
('x86_64','kde-unstable','qt6-connectivity','6.4.0beta1-1','Provides access to Bluetooth hardware','2022-06-16',NULL);

UPDATE `core` SET `Arch`='x86_64', `Repo`='core', `Name`='linux', `Version`='5.18.5.arch1-1', `Description`='The Linux kernel and modules', `Last Updated`='2022-06-17', `Flag Date`=NULL WHERE Name='attr';

CREATE INDEX package_index ON `core` (`Name`);
CREATE INDEX package_index ON `extra` (`Name`);
CREATE INDEX package_index ON `community` (`Name`);
CREATE INDEX package_index ON `multilib` (`Name`);
CREATE INDEX package_index ON `testing` (`Name`);
CREATE INDEX package_index ON `community-testing` (`Name`);
CREATE INDEX package_index ON `multilib-testing` (`Name`);
CREATE INDEX package_index ON `kde-unstable` (`Name`);


DELIMITER //
CREATE TRIGGER check_insert AFTER INSERT ON `archlinux`.`core` FOR EACH ROW
BEGIN
    SET @strIn = "已插入一条core仓库的软件包记录";
END //
DELIMITER ;


USE archlinux;
START TRANSACTION;
DELETE FROM `core`;
SELECT * FROM `core`;
ROLLBACK;
SELECT * FROM `core`;


CREATE USER 'Guest_1'@'localhost' IDENTIFIED BY 'jhjj_9999';

GRANT SELECT ON archlinux.* TO 'Guest_1'@'localhost';