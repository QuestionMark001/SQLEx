DELIMITER //
CREATE PROCEDURE `del_gnome-unstable`()
BEGIN
    DROP TABLE `archlinux`.`gnome-unstable`;
END //
DELIMITER ;

CALL `del_gnome-unstable`();


USE archlinux;
SHOW TABLES;
CALL `del_gnome-unstable`();
SHOW TABLES;