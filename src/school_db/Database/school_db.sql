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
    `sc_result` FLOAT NULL COMMENT '正考成绩',
    PRIMARY KEY(`st_id`,`c_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO departments
VALUES ('D001','信息学院'),
('D002','机电学院'),
('D003','管理学院'),
('D004','机电学院'),
('D005','外语学院');

INSERT INTO students
VALUES ('114514','王文瑞','2022-2-2022-6','男','D001','10036218417'),
('114519','李永康','2022-2-2022-6','男','D003','10036218499'),
('114513','李铭晨','2022-2-2022-6','女','D002','10036218433'),
('114512','王源','2022-2-2022-6','男','D004','10036218429'),
('114528','王令璟','2022-2-2022-6','女','D005','10036218410'),
('113514','张通','2022-2-2022-6','男','D001','10036218412'),
('112515','张颂','2022-2-2022-6','女','D003','10036218415');

INSERT INTO course
VALUES ('C001','MYSQL',3,'专业课'),
('C002','思政课',2,'选修课'),
('C003','英语',3,'专业基础课'),
('C004','操作系统',3,'专业基础课'),
('C005','网页设计',2.5,'专业基础课');

INSERT INTO score
VALUES ('114514','C001',89.0),
('114514','C002',70.0),
('114514','C003',76.0),
('114514','C004',60.0),
('114519','C001',67.0),
('114519','C002',87.0),
('114519','C003',76.0),
('114519','C004',67.0),
('114519','C005',89.0),
('114512','C001',67.0),
('114512','C002',87.0),
('114512','C003',75.0),
('114512','C004',78.0),
('114512','C005',90.0),
('114528','C001',71.0),
('114528','C002',73.0),
('114528','C003',69.0),
('114528','C004',75.0),
('114528','C005',67.0),
('113514','C001',87.0),
('113514','C002',96.0),
('113514','C003',62.0),
('113514','C004',60.0),
('113514','C005',78.0),
('114513','C001',85.0),
('114513','C002',78.0),
('114513','C003',65.0),
('114513','C004',78.0),
('114513','C005',72.0),
('112515','C001',94.0),
('112515','C002',75.0),
('112515','C003',82.0),
('112515','C004',60.0),
('112515','C005',78.0);

UPDATE course SET c_name = 'MySQL' WHERE c_id = 'C001';

DELETE FROM score WHERE st_id = '112515' AND c_id = 'C005';

CREATE USER 'stu_test'@'localhost' IDENTIFIED BY 'jhjj_8888';

GRANT SELECT ON school_db.* TO 'stu_test'@'localhost';

CREATE USER 'tea_test'@'localhost' IDENTIFIED BY 'jhjj_9999';

GRANT SELECT ON school_db.* TO 'tea_test'@'localhost';
