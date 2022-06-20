DELIMITER //
CREATE PROCEDURE `cr_gnome-unstable`()
BEGIN
    CREATE TABLE `archlinux`.`gnome-unstable` (
        `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
        `Repo` text NOT NULL COMMENT '软件包所在的仓库',
        `Name` varchar(255) NOT NULL COMMENT '软件包名称',
        `Version` text NOT NULL COMMENT '软件包版本',
        `Description` longtext NOT NULL COMMENT '软件包描述',
        `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
        `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
        PRIMARY KEY (`Name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
END //
DELIMITER ;


USE archlinux;
SHOW TABLES;
CALL `cr_gnome-unstable`();
SHOW TABLES;
DESC `gnome-unstable`;