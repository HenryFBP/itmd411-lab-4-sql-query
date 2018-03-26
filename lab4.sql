USE sys;
SELECT * FROM sys;

flush PRIVILEGES;


CREATE FUNCTION addStrings(a CHAR(20), b CHAR(20))
RETURNS CHAR(40) DETERMINISTIC
	RETURN CONCAT(a,b);
    
CREATE FUNCTION forcePass()
RETURNS BLOB(999)
		RETURN 'a';



USE 411labs;
-- DROP TABLE IF EXISTS h_post_tab;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE h_post_tab DROP COLUMN PID;
ALTER TABLE h_post_tab DROP COLUMN ID;
ALTER TABLE h_post_tab DROP COLUMN Age;
ALTER TABLE h_post_tab DROP COLUMN Gender;

ALTER TABLE h_post_tab DROP COLUMN Region;
ALTER TABLE h_post_tab DROP COLUMN Income;
ALTER TABLE h_post_tab DROP COLUMN Married;
ALTER TABLE h_post_tab DROP COLUMN Children;

ALTER TABLE h_post_tab DROP COLUMN Car;
ALTER TABLE h_post_tab DROP COLUMN Savings;
ALTER TABLE h_post_tab DROP COLUMN Current;
ALTER TABLE h_post_tab DROP COLUMN Mortgage;

ALTER TABLE h_post_tab DROP COLUMN Pep;




ALTER TABLE h_post_tab ADD COLUMN PID 		INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE h_post_tab ADD COLUMN ID		VARCHAR(30);
ALTER TABLE h_post_tab ADD COLUMN Age		INTEGER;
ALTER TABLE h_post_tab ADD COLUMN Gender	VARCHAR(10);

ALTER TABLE h_post_tab ADD COLUMN Region	VARCHAR(30);
ALTER TABLE h_post_tab ADD COLUMN Income	DOUBLE(10,4);
ALTER TABLE h_post_tab ADD COLUMN Married	VARCHAR(10);
ALTER TABLE h_post_tab ADD COLUMN Children	INTEGER;

ALTER TABLE h_post_tab ADD COLUMN Car		VARCHAR(10);
ALTER TABLE h_post_tab ADD COLUMN Savings	VARCHAR(10);
ALTER TABLE h_post_tab ADD COLUMN Current	VARCHAR(10);
ALTER TABLE h_post_tab ADD COLUMN Mortgage	VARCHAR(10);

ALTER TABLE h_post_tab ADD COLUMN Pep		VARCHAR(10);

ALTER TABLE h_post_tab DROP COLUMN delme;

CREATE TABLE    h_post_tab
(
PID 		INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
ID 			VARCHAR(30),
Age 		INTEGER,
Gender 		VARCHAR(10),
Region 		VARCHAR(30),
Income 		DOUBLE(10,4),
Married 	VARCHAR(10),
Children	INTEGER,
Car 		VARCHAR(10),
Savings 	VARCHAR(10),
Current 	VARCHAR(10),
Mortgage 	VARCHAR(10),
Pep 		VARCHAR(10)
);

DESCRIBE h_post_tab;
DESCRIBE j_muso_tab;

-- INSERT INTO h_post_tab VALUES(1,'ID001',20,'male','Chicago',);

SELECT * FROM h_post_tab;
SELECT * FROM p_stan_tab;
SELECT * FROM j_muso_tab;


SELECT * FROM h_post_tab WHERE age > 50;


-- INSERT 

