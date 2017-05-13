CREATE TABLE `department` (
  `dept_name` varchar(45) NOT NULL,
  `building` varchar(45) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  PRIMARY KEY (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `exam` (
  `student_id` int(11) NOT NULL,
  `exam_name` varchar(45) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  KEY `fk_exam_1_idx` (`student_id`),
  CONSTRAINT `fk_exam_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `emotion_state` varchar(45) DEFAULT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_student_1_idx` (`dept_name`),
  CONSTRAINT `fk_student_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
