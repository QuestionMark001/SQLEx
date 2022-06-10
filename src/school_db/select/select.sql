USE school_db;

SELECT `st_id` 学号, `st_name` 学生姓名, `st_date` 学年学期 FROM students;

SELECT * FROM students WHERE st_name LIKE '王%';

SELECT st.st_name 学生姓名, c.c_name 课程名称, sc.sc_result 正考成绩 FROM students st LEFT OUTER JOIN score sc ON st.st_id=sc.st_id LEFT OUTER JOIN course c ON c.c_id=sc.c_id;

SELECT st.st_name 学生姓名, SUM(sc.sc_result) 正考总成绩 FROM students st LEFT OUTER JOIN score sc ON st.st_id=sc.st_id GROUP BY st.st_name ORDER BY SUM(sc.sc_result) DESC;
