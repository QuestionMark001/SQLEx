DELIMITER //
CREATE PROCEDURE `school_select_1`()
BEGIN
    SELECT st.st_name 学生姓名, c.c_name 课程名称, sc.sc_result 正考成绩 FROM students st LEFT OUTER JOIN score sc ON st.st_id=sc.st_id LEFT OUTER JOIN course c ON c.c_id=sc.c_id;
END //
DELIMITER ;

CALL school_select_1();