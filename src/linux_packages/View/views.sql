CREATE VIEW `sel_core`
AS SELECT * FROM `archlinux`.`core`;
CREATE VIEW `sel_extra`
AS SELECT * FROM `archlinux`.`extra`;
CREATE VIEW `sel_community`
AS SELECT * FROM `archlinux`.`community`;
CREATE VIEW `sel_multilib`
AS SELECT * FROM `archlinux`.`multilib`;
CREATE VIEW `sel_testing`
AS SELECT * FROM `archlinux`.`testing`;
CREATE VIEW `sel_community-testing`
AS SELECT * FROM `archlinux`.`community-testing`;
CREATE VIEW `sel_multilib-testing`
AS SELECT * FROM `archlinux`.`multilib-testing`;
CREATE VIEW `sel_kde-unstable`
AS SELECT * FROM `archlinux`.`kde-unstable`;