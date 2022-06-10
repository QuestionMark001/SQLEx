DELIMITER //
CREATE PROCEDURE `school_select_2`()
BEGIN
    SELECT st.st_name 学生姓名, SUM(sc.sc_result) 正考总成绩 FROM students st LEFT OUTER JOIN score sc ON st.st_id=sc.st_id GROUP BY st.st_name ORDER BY SUM(sc.sc_result) DESC;
END //
DELIMITER ;

CALL school_select_2();