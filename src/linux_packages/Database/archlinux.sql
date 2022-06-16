CREATE TABLE `core` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `extra` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `community` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `multilib` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `testing` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `community-testing` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `multilib-testing` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gnome-unstable` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `kde-unstable` (
    `Arch` varchar(255) NOT NULL COMMENT '软件包架构',
    `Repo` text NOT NULL COMMENT '软件包所在的仓库',
    `Name` text NOT NULL COMMENT '软件包名称',
    `Version` text NOT NULL COMMENT '软件包版本',
    `Description` longtext NOT NULL COMMENT '软件包描述',
    `Last Updated` datetime NOT NULL COMMENT '软件包更新时间',
    `Flag Date` datetime DEFAULT NULL COMMENT '当前版本的软件包过期时间',
    PRIMARY KEY (`Arch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;