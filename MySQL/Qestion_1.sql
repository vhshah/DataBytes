
CREATE TABLE `databeats`.`employees` (
  `EMP_ID` INT NOT NULL,
  `FIRST_NAME` VARCHAR(255) NULL,
  `LAST_NAME` VARCHAR(255) NULL,
  `SALARY` BIGINT(20) NULL,
  `JOINING_DATE` DATETIME NULL,
  `DEPARTMENT` VARCHAR(45) NULL,
  PRIMARY KEY (`EMP_ID`));

CREATE TABLE `databeats`.`variables` (
    `EMP_REF_ID` INT NOT NULL,
    `VARIABLES_DATE` DATETIME NULL,
    `VARIABLES_AMOUNT` BIGINT(20) NULL,
    PRIMARY KEY (`EMP_REF_ID`),
    FOREIGN KEY (`EMP_REF_ID`)
        REFERENCES employees (EMP_ID)
);

CREATE TABLE `databeats`.`designation` (
    `EMP_REF_ID` INT NOT NULL,
    `EMP_TITLE` VARCHAR(255) NULL,
    `AFFECTED_FROM` DATETIME NULL,
    PRIMARY KEY (`EMP_REF_ID`),
    FOREIGN KEY (`EMP_REF_ID`)
        REFERENCES employees (EMP_ID));

INSERT INTO `databeats`.`employees`
(`EMP_ID`,
`FIRST_NAME`,
`LAST_NAME`,
`SALARY`,
`JOINING_DATE`,
`DEPARTMENT`)
VALUES
('001','Manish','Agarwal','700000','2019-04-20 09:00:00','HR'),
('002','Niranjan','Bose','20000','2019-02-11 09:00:00','DA'),
('003','Vivek','Singh','100000','2019-01-20 09:00:00','DA'),
('004','Asutosh','Kapoor','700000','2019-03-20 09:00:00','HR'),
('005','Vihaan','Banerjee','300000','2019-06-11 09:00:00','DA'),
('006','Atul','Diwedi','400000','2019-05-11 09:00:00','Account'),
('007','Satyendra','Tripathi','95000','2019-03-20 09:00:00','Account'),
('008','Pritika','Bhatt','80000','2019-02-11 09:00:00','DA');


INSERT INTO `databeats`.`designation`
(`EMP_REF_ID`,
`EMP_TITLE`,
`AFFECTED_FROM`)
VALUES
('1','Asst. Manager','2019-02-20 00:00:00'),
('2','Senior Analyst','2019-01-11 00:00:00'),
('8','Senior Analyst','2019-04-06 00:00:00'),
('5','Manager','2019-10-06 00:00:00'),
('4','Asst. Manager','2019-12-06 00:00:00'),
('7','Team Lead','2019-06-06 00:00:00'),
('6','Team Lead','2019-09-06 00:00:00'),
('3','Senior Analyst','2019-08-06 00:00:00');


INSERT INTO `databeats`.`variables`
(`EMP_REF_ID`,
`VARIABLES_DATE`,
`VARIABLES_AMOUNT`)
VALUES
('1','2019-02-20 00:00:00','15000'),
('2','2019-06-11 00:00:00','30000'),
('3','2019-02-20 00:00:00','42000'),
('4','2019-02-20 00:00:00','14500'),
('5','2019-06-11 00:00:00','23500');
