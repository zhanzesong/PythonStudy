

CREATE TABLE `department` (
  `dept_name` varchar(45) NOT NULL,
  `building` varchar(45) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  PRIMARY KEY (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



CREATE TABLE `exam` (
  `student_ID` int(11) NOT NULL,
  `exam_name` varchar(45) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_ID`,`exam_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `emotion_state` varchar(45) DEFAULT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_student_1_idx` (`dept_name`),
  CONSTRAINT `fk_student_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
