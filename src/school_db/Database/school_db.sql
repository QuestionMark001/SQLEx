/*
为某校设计相应的在线考试数据库，并完
成数据表的建立和视图的创建，写出
创建表、视图的理由，绘制表和表之
间的关系图，以及维护视图所使用的相应SQL代码。

MySQL Version: 8.0.28
Test OS: archlinux
Linux Versin: Linux 5.18.2 x86_64
School Main Database SQL.
Copyright (c) 2022 by QuestionMark001, All Rights Reserved.
*/

CREATE DATABASE IF NOT EXISTS `school_db` DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE `school_db`;
CREATE TABLE `students` (
    `st_id` CHAR(10) NOT NULL COMMENT '学号',
    `st_name` VARCHAR(15) NOT NULL COMMENT '学生姓名',
    `st_date` VARCHAR(13) NOT NULL COMMENT '学年学期',
    `st_sex` VARCHAR(3) NULL COMMENT '学生性别',
    `d_id` VARCHAR(6) NULL COMMENT '院系ID',
    `st_phone` VARCHAR(20) NULL COMMENT '学生联系电话',
    PRIMARY KEY(`st_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `course` (
    `c_id` CHAR(10) NOT NULL COMMENT '课程ID',
    `c_name` VARCHAR(15) NOT NULL COMMENT '课程名称',
    `c_credit` FLOAT(3,2) NOT NULL COMMENT '课程学分',
    `c_type` VARCHAR(10) NOT NULL COMMENT '课程属性',
    PRIMARY KEY(`c_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `departments` (
    `d_id` VARCHAR(6) NOT NULL COMMENT '院系ID',
    `d_name` VARCHAR(30) NOT NULL COMMENT '院系名称',
    PRIMARY KEY(`d_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `students` ADD FOREIGN KEY (d_id) REFERENCES `departments`(d_id);

CREATE TABLE `score` (
    `st_id` CHAR(10) NOT NULL COMMENT '学号',
    `c_id` CHAR(10) NOT NULL COMMENT '课程ID',
    `sc_result` FLOAT(3,2) NULL COMMENT '正考成绩',
    PRIMARY KEY(`st_id`,`c_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;