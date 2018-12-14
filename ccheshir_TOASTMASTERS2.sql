-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2018 at 02:49 PM
-- Server version: 5.6.41
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccheshir_TOASTMASTERS2`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`ccheshir`@`localhost` PROCEDURE `ASSIGN` (IN `meetingId` INT, IN `memberID` INT, IN `dutyId` INT, IN `multiple` INT, IN `override` INT, OUT `valid` VARCHAR(100))  NO SQL
BEGIN

/*DUTY_ID's*/
	SET @President = 1;
	SET @Toastmaster = 2;
	SET @Inspiration = 3;
	SET @Jokemaster = 4;
	SET @Grammarian = 5;
	SET @Timer = 6;
	SET @TableTopicsMaster = 7;
	SET @GeneralEvaluator = 8;
	SET @Speaker = 9;
	SET @Evaluator = 10;
    
/*PRESIDENT*/
    IF(dutyId=@President) THEN
    	SET @DUTY_TITLE = 'PRESIDENT';
        CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
        IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
        	INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*PRESIDENT*/
            
/*TOASTMASTER*/
	ELSEIF(dutyId=@Toastmaster) THEN
		SET @DUTY_TITLE = 'TOASTMASTER';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*TOASTMASTER*/   

/*INSPIRATION*/
	ELSEIF(dutyId=@Inspiration) THEN
		SET @DUTY_TITLE = 'INSPIRATION';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*INSPIRATION*/ 

/*JOKEMASTER*/
	ELSEIF(dutyId=@Jokemaster) THEN
		SET @DUTY_TITLE = 'JOKEMASTER';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*JOKEMASTER*/ 

/*GRAMMARIAN*/
	ELSEIF(dutyId=@Grammarian) THEN
		SET @DUTY_TITLE = 'GRAMMARIAN';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*GRAMMARIAN*/ 

/*TIMER*/
	ELSEIF(dutyId=@Timer) THEN
		SET @DUTY_TITLE = 'TIMER';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*TIMER*/

/*TABLE TOPICS MASTER*/
	ELSEIF(dutyId=@TableTopicsMaster) THEN
		SET @DUTY_TITLE = 'TABLE TOPICS MASTER';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*TABLE TOPICS MASTER*/

/*GENERAL EVALUATOR*/
	ELSEIF(dutyId=@GeneralEvaluator) THEN
		SET @DUTY_TITLE = 'GENERAL EVALUATOR';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,0);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*GENERAL EVALUATOR*/

/*SPEAKER*/
	ELSEIF(dutyId=@Speaker) THEN
		SET @DUTY_TITLE = 'SPEAKER';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,multiple);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,multiple);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*SPEAKER*/

/*EVALUATOR*/
	ELSEIF(dutyId=@Evaluator) THEN
		SET @DUTY_TITLE = 'EVALUATOR';
		CALL ASSIGN_VALID(meetingId, memberId, dutyId, @VAL);
		IF (LEFT(@VAL,3)='YES') THEN
        	SET valid=CONCAT('INSERT BECAUSE ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,multiple);
		ELSEIF (override = 1 AND INSTR(@VAL,'ALREADY ASSIGNED') = 0) THEN
        	SET valid = CONCAT('INSERT EVEN THOUGH ',@VAL);
			INSERT INTO ASSIGNMENTS (MEETING_ID,MEMBER_ID,DUTY_ID,MULTIPLE) VALUES (meetingId,memberId,dutyId,multiple);
        ELSE
            SET valid = CONCAT('NOT INSERTED ',@VAL);
		END IF;
/*EVALUATOR*/

END IF;
END$$

CREATE DEFINER=`ccheshir`@`localhost` PROCEDURE `ASSIGN_VALID` (IN `meetId` INT, IN `memberId` INT, IN `dutyId` INT, OUT `valid` VARCHAR(300))  NO SQL
BEGIN

/*DUTY_IDs*/
	SET @President = 1;
	SET @Toastmaster = 2;
	SET @Inspiration = 3;
	SET @Jokemaster = 4;
	SET @Grammarian = 5;
	SET @Timer = 6;
	SET @TableTopicsMaster = 7;
	SET @GeneralEvaluator = 8;
	SET @Speaker = 9;
	SET @Evaluator = 10;
    
/*PRESIDENT*/
	SET valid = 'DUTY_ID NOT DEFINED';

	IF(dutyId=@President) THEN
    	SET @DUTY_TITLE = 'PRESIDENT';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID=dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			END IF;
		END IF;
/*PRESIDENT*/

/*TOASTMASTER*/
	ELSEIF(dutyId=@Toastmaster) THEN
    	SET @DUTY_TITLE = 'TOASTMASTER';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID=dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was TOASTMASTER at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the TOASTMASTER at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID IN (2,3,4,5,7,9));
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED PREP DUTY PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID=dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*TOASTMASTER*/

/*INSPIRATION*/
	ELSEIF(dutyId=@Inspiration) THEN
    SET @DUTY_TITLE = 'INSPIRATION';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was INSPIRATION at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the INSPIRATION at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID IN (2,3,4,5,7,9));
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED PREP DUTY PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID = dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*INSPIRATION*/

/*JOKEMASTER*/
	ELSEIF(dutyId=@Jokemaster) THEN
    SET @DUTY_TITLE = 'JOKEMASTER';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was jokemaster at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the jokemaster at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID IN (2,3,4,5,7,9));
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED PREP DUTY PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID = dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*JOKEMASTER*/

/*GRAMMARIAN*/
	ELSEIF(dutyId=@Grammarian) THEN
    SET @DUTY_TITLE = 'GRAMMARIAN';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was GRAMMARIAN at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the GRAMMARIAN at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID IN (2,3,4,5,7,9));
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED PREP DUTY PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID = dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*GRAMMARIAN*/

/*TIMER*/
	ELSEIF(dutyId=@Timer) THEN
    SET @DUTY_TITLE = 'TIMER';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was TIMER at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the TIMER at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID=@Timer);
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED TIMER DUTY PREV MEETING');
				END IF;
			END IF;
		END IF;
/*TIMER*/

/*TABLE TOPICS MASTER*/
	ELSEIF(dutyId=@TableTopicsMaster) THEN
    SET @DUTY_TITLE = 'TABLE TOPICS MASTER';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was TABLE TOPICS at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the TABLE TOPICS at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID IN (2,3,4,5,7,9));
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED PREP DUTY PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID = dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*TABLE TOPICS MASTER*/

/*GENERAL EVALUATOR*/
	ELSEIF(dutyId=@GeneralEvaluator) THEN
    SET @DUTY_TITLE = 'GENERAL EVALUATOR';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=1) THEN
				SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ALREADY ASSIGNED');
			ELSE
/*2. check if member was GENERAL EVALUATOR at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the GENERAL EVALUATOR at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID=@GeneralEvaluator);
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY AT PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID = dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*GENERAL EVALUATOR*/

/*SPEAKER*/
	ELSEIF(dutyId=@Speaker) THEN
    SET @DUTY_TITLE = 'SPEAKER';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=2) THEN
				SET valid = CONCAT('NO - (2 ',@DUTY_TITLE, 'S) ALREADY ASSIGNED');
			ELSE
/*2. check if member was SPEAKER at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the SPEAKER at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID IN (2,3,4,5,7,9));
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED PREP DUTY PREV MEETING');
				ELSE
					SET @pmdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID = @prevMeetId);
					SET @prevPrevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@pmdate ORDER BY START_TIME DESC LIMIT 1);
					SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevPrevMeetId AND MEMBER_ID=memberId AND DUTY_ID = dutyId);
					IF(@tim=1) THEN
						SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED THIS DUTY 2 MEETINGS PRIOR TO THIS');
					END IF;
				END IF;
			END IF;
		END IF;
/*SPEAKER*/

/*EVALUATOR*/
	ELSEIF(dutyId=@Evaluator) THEN
    SET @DUTY_TITLE = 'EVALUATOR';
		SET valid = CONCAT('YES - ',@DUTY_TITLE);
/*1. check if already assigned a duty this meeting*/
		SET @duty = (SELECT DUTY_ID FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND MEMBER_ID=memberId);
		IF(@duty IS NOT NULL) THEN
			SET valid = CONCAT('NO - (',@DUTY_TITLE, ') MEMBER ASSIGNED ANOTHER DUTY');
		ELSE
			SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID=meetId AND DUTY_ID = dutyId);
			IF(@tim=2) THEN
				SET valid = CONCAT('NO - (2 ',@DUTY_TITLE, 'S) ALREADY ASSIGNED');
			ELSE
/*2. check if member was SPEAKER at previous meeting. 
	a) determine previous meeting ID
	b) check if the member was the SPEAKER at that previous meeting.*/
				SET @mdate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
				SET @prevMeetId = (SELECT MEETING_ID FROM MEETINGS WHERE DATE(START_TIME)<@mdate ORDER BY START_TIME DESC LIMIT 1);
				SET @tim = (SELECT COUNT(*) FROM ASSIGNMENTS WHERE MEETING_ID = @prevMeetId AND MEMBER_ID=memberId AND DUTY_ID=@Evaluator);
				IF(@tim=1) THEN
					SET valid = CONCAT('NO - (',@DUTY_TITLE, ') ASSIGNED EVALUATOR PREV MEETING');
				END IF;
			END IF;
		END IF;
/*EVALUATOR*/

END IF;

END$$

CREATE DEFINER=`ccheshir`@`localhost` PROCEDURE `PREVIOUS_MEETING` (IN `meetId` INT, OUT `meetDate` DATE)  NO SQL
BEGIN
    SET @meetIdDate = 
    	(SELECT DATE(START_TIME) FROM MEETINGS WHERE MEETING_ID=meetId);
        
    SET meetDate = (SELECT DATE(START_TIME) FROM MEETINGS WHERE DATE(START_TIME)<@meetIdDate ORDER BY START_TIME DESC LIMIT 1);
END$$

CREATE DEFINER=`ccheshir`@`localhost` PROCEDURE `REPLACE_DUTY` (IN `meetingId` INT, IN `memberId` INT, IN `dutyId` INT, IN `multiple` INT, OUT `valid` VARCHAR(100))  NO SQL
BEGIN

START TRANSACTION;
	SET @President = 1;
	SET @Toastmaster = 2;
	SET @Inspiration = 3;
	SET @Jokemaster = 4;
	SET @Grammarian = 5;
	SET @Timer = 6;
	SET @TableTopicsMaster = 7;
	SET @GeneralEvaluator = 8;
	SET @Speaker = 9;
	SET @Evaluator = 10;

/*PRESIDENT*/
	IF(dutyId=@President) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*PRESIDENT*/

/*TOASTMASTER*/
	IF(dutyId=@Toastmaster) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*TOASTMASTER*/

/*INSPIRATION*/
	IF(dutyId=@Inspiration) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*INSPIRATION*/

/*JOKEMASTER*/
	IF(dutyId=@Jokemaster) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*JOKEMASTER*/

/*GRAMMARIAN*/
	IF(dutyId=@Grammarian) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*GRAMMARIAN*/

/*TIMER*/
	IF(dutyId=@Timer) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*TIMER*/

/*TABLE TOPICS MASTER*/
	IF(dutyId=@TableTopicsMaster) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*TABLE TOPICS MASTER*/

/*GENERAL EVALUATOR*/
	IF(dutyId=@GeneralEvaluator) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*GENERAL EVALUATOR*/

/*SPEAKER*/
	IF(dutyId=@Speaker) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*SPEAKER*/

/*EVALUATOR*/
	IF(dutyId=@Evaluator) THEN
		
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND MEMBER_ID=memberId;
		DELETE FROM ASSIGNMENTS WHERE MEETING_ID=meetingId AND DUTY_ID=dutyId AND MULTIPLE=multiple;

		CALL ASSIGN(meetingId, memberId, dutyId, multiple,1, @VAL);

        END IF;
	COMMIT;
    SET valid = 'Replacement successful';
/*EVALUATOR*/

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ABSENCES`
--

CREATE TABLE `ABSENCES` (
  `MEMBER_ID` int(11) NOT NULL,
  `FROM_DATE` date NOT NULL,
  `TO_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `ABSENCES`
--
DELIMITER $$
CREATE TRIGGER `VALIDATE_DATES_INSERT` BEFORE INSERT ON `ABSENCES` FOR EACH ROW BEGIN
	IF NEW.FROM_DATE <= NEW.TO_DATE THEN
    	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'From date must come before To date.';
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `VALIDATE_DATES_UPDATE` BEFORE UPDATE ON `ABSENCES` FOR EACH ROW BEGIN
	IF NEW.FROM_DATE <= NEW.TO_DATE THEN
    	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'From date must come before To date.';
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `AGENDA`
--

CREATE TABLE `AGENDA` (
  `ITEM_ID` int(11) NOT NULL,
  `AGENDA_ORDER` int(11) NOT NULL,
  `DUTY_ID` int(11) NOT NULL,
  `MULTIPLE` int(11) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `DESCRIPTION2` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AGENDA`
--

INSERT INTO `AGENDA` (`ITEM_ID`, `AGENDA_ORDER`, `DUTY_ID`, `MULTIPLE`, `DESCRIPTION`, `DESCRIPTION2`) VALUES
(1, 10, 1, 0, 'Call to Order', 'Presiding Officer'),
(2, 20, 2, 0, 'Toastmaster', ''),
(3, 30, 3, 0, 'Inspiration', ''),
(4, 40, 4, 0, 'Jokemaster', ''),
(5, 50, 5, 0, 'Grammarian', ''),
(6, 60, 6, 0, 'Timer', ''),
(7, 70, 9, 0, 'Speaker 1', ''),
(8, 80, 9, 1, 'Speaker 2', ''),
(9, 90, 9, 2, 'Speaker 3', ''),
(10, 100, 7, 0, 'Table Topics Master', ''),
(11, 110, 8, 0, 'General Evaluator', ''),
(12, 120, 10, 0, 'Evaluator 1', ''),
(13, 130, 10, 1, 'Evaluator 2', ''),
(14, 140, 10, 2, 'Evaluator 3', ''),
(15, 150, 6, 0, 'Assistant\'s Reports', 'Timer'),
(16, 160, 5, 0, '', 'Grammarian'),
(17, 170, 1, 0, 'Adjournment', '');

-- --------------------------------------------------------

--
-- Table structure for table `ASSIGNMENTS`
--

CREATE TABLE `ASSIGNMENTS` (
  `MEETING_ID` int(11) NOT NULL,
  `DUTY_ID` int(11) NOT NULL,
  `MULTIPLE` int(11) NOT NULL,
  `MEMBER_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `CONFIRMED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ASSIGNMENTS`
--

INSERT INTO `ASSIGNMENTS` (`MEETING_ID`, `DUTY_ID`, `MULTIPLE`, `MEMBER_ID`, `DESCRIPTION`, `CONFIRMED`) VALUES
(1101, 1, 0, 22, '', '0000-00-00'),
(1101, 2, 0, 32, '', '0000-00-00'),
(1101, 3, 0, 17, '', '0000-00-00'),
(1101, 4, 0, 27, '', '0000-00-00'),
(1101, 5, 0, 8, '', '0000-00-00'),
(1101, 6, 0, 34, '', '0000-00-00'),
(1101, 7, 0, 14, '', '0000-00-00'),
(1101, 8, 0, 9, '', '0000-00-00'),
(1101, 9, 0, 11, '', '0000-00-00'),
(1101, 9, 1, 21, '', '0000-00-00'),
(1101, 10, 0, 29, '', '0000-00-00'),
(1101, 10, 1, 5, '', '0000-00-00'),
(1102, 1, 0, 4, '', '0000-00-00'),
(1102, 2, 0, 2, '', '0000-00-00'),
(1103, 1, 0, 1, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `DUTIES`
--

CREATE TABLE `DUTIES` (
  `DUTY_ID` int(11) NOT NULL,
  `TITLE` varchar(20) NOT NULL,
  `PREPARATION` tinyint(1) NOT NULL,
  `PERIOD` int(11) NOT NULL,
  `MULTIPLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DUTIES`
--

INSERT INTO `DUTIES` (`DUTY_ID`, `TITLE`, `PREPARATION`, `PERIOD`, `MULTIPLE`) VALUES
(1, 'Presiding Officer', 0, 1, 0),
(2, 'Toastmaster', 1, 3, 0),
(3, 'Inspiration', 1, 3, 0),
(4, 'Jokemaster', 1, 3, 0),
(5, 'Grammarian', 1, 3, 0),
(6, 'Timer', 0, 2, 0),
(7, 'Table Topics Master', 1, 3, 0),
(8, 'General Evaluator', 0, 3, 0),
(9, 'Speaker', 1, 3, 2),
(10, 'Evaluator', 0, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `MEETINGS`
--

CREATE TABLE `MEETINGS` (
  `MEETING_ID` int(11) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `LOCATION` varchar(100) NOT NULL,
  `CANCELLED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MEETINGS`
--

INSERT INTO `MEETINGS` (`MEETING_ID`, `START_TIME`, `LOCATION`, `CANCELLED`) VALUES
(1096, '2018-10-03 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1097, '2018-10-10 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1098, '2018-10-17 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1099, '2018-10-24 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1100, '2018-10-31 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1101, '2018-11-07 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1102, '2018-11-14 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1103, '2018-11-21 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1104, '2018-11-28 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1105, '2018-12-05 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1106, '2018-12-12 00:00:00', 'Argosy University, Suite 400 - Niihau Room, ASB Tower 1001 Bishop St.', 0),
(1107, '2019-01-09 00:00:00', '', 0),
(1108, '2019-01-16 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `MEETING_ROLES`
-- (See below for the actual view)
--
CREATE TABLE `MEETING_ROLES` (
`DUTY_ID` int(11)
,`MULTIPLE` int(11)
,`TITLE` varchar(20)
,`ORDR` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBERS`
--

CREATE TABLE `MEMBERS` (
  `MEMBER_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `TITLE` varchar(10) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `CELLPHONE` bigint(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `ZIPCODE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MEMBERS`
--

INSERT INTO `MEMBERS` (`MEMBER_ID`, `STATUS`, `FIRST_NAME`, `LAST_NAME`, `TITLE`, `EMAIL`, `CELLPHONE`, `ADDRESS`, `CITY`, `ZIPCODE`) VALUES
(1, 0, 'Rich', 'Halverson', 'CTM', '', 0, '', '', ''),
(2, 0, 'Harvey', 'Rackmil', 'CTM', '', 0, '', '', ''),
(3, 0, 'Cheryl', 'Yeh', 'ATMB', '', 0, '', '', ''),
(4, 0, 'Brian', 'Takahashi', 'ATM- B', '', 0, '', '', ''),
(5, 0, 'Wen', 'He', 'ACS, CL', '', 0, '', '', ''),
(6, 0, 'Jeff', 'Esmond', 'TM', '', 0, '', '', ''),
(7, 0, 'Rebecca', 'Weatherford', 'TM', '', 0, '', '', ''),
(8, 0, 'John', 'Holman', 'TM', '', 0, '', '', ''),
(9, 0, 'Adelina', 'Yim', 'TM', '', 0, '', '', ''),
(10, 0, 'Connie', 'Chang', 'TM', '', 0, '', '', ''),
(11, 0, 'Leslie', 'Kurisaki', 'TM', '', 0, '', '', ''),
(12, 0, 'Katie', 'Stula', 'TM', '', 0, '', '', ''),
(13, 0, 'Debra', 'Kohn-Lee', 'TM', '', 0, '', '', ''),
(14, 0, 'James', 'Smith', 'CC', '', 0, '', '', ''),
(15, 0, 'John', 'Ogoshi', 'TM', '', 0, '', '', ''),
(16, 0, 'Pam', 'Roth', 'TM', '', 0, '', '', ''),
(17, 0, 'Wendie', 'McAllaster', 'TM', '', 0, '', '', ''),
(18, 0, 'James', 'Donnelly', 'TM', '', 0, '', '', ''),
(19, 0, 'Gabriela', 'Noriega', 'TM', '', 0, '', '', ''),
(20, 0, 'Audrey', 'Jewell', 'TM', '', 0, '', '', ''),
(21, 0, 'William', 'Sink', 'TM', '', 0, '', '', ''),
(22, 0, 'Alberto', 'Ricordi', 'TM', '', 0, '', '', ''),
(23, 0, 'Demetria', 'Caston', 'TM', '', 0, '', '', ''),
(24, 0, 'Tina', 'Bae', 'CC', '', 0, '', '', ''),
(25, 0, 'Alexis', 'Dentino', 'TM', '', 0, '', '', ''),
(26, 0, 'Codee', 'Samala-Passos', 'TM', '', 0, '', '', ''),
(27, 0, 'Travis', 'Ito', 'TM', '', 0, '', '', ''),
(28, 0, 'Jordan', 'Nakayama', 'TM', '', 0, '', '', ''),
(29, 0, 'Gabriel', 'Nelson', 'TM', '', 0, '', '', ''),
(30, 0, 'Bart', 'Howk', 'TM', '', 0, '', '', ''),
(31, 0, 'Jin', 'Oh', 'TM', '', 0, '', '', ''),
(32, 0, 'Richard', 'Sullivan', 'ATM', '', 0, '', '', ''),
(33, 0, 'Sherman', 'White', 'TM', '', 0, '', '', ''),
(34, 0, 'Dee Dee', 'Lum', 'TM', '', 0, '', '', ''),
(35, 0, 'Ted Ting Cheng', 'Wen', 'TM', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `PREFERENCES`
--

CREATE TABLE `PREFERENCES` (
  `MEMBER_ID` int(11) NOT NULL,
  `DUTY_ID` int(11) NOT NULL,
  `WILLINGNESS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `MEETING_ROLES`
--
DROP TABLE IF EXISTS `MEETING_ROLES`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ccheshir`@`localhost` SQL SECURITY DEFINER VIEW `MEETING_ROLES`  AS  select `A`.`DUTY_ID` AS `DUTY_ID`,`A`.`MULTIPLE` AS `MULTIPLE`,`D`.`TITLE` AS `TITLE`,min(`A`.`AGENDA_ORDER`) AS `ORDR` from (`AGENDA` `A` join `DUTIES` `D` on((`A`.`DUTY_ID` = `D`.`DUTY_ID`))) group by `A`.`DUTY_ID`,`A`.`MULTIPLE` order by `ORDR` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ABSENCES`
--
ALTER TABLE `ABSENCES`
  ADD PRIMARY KEY (`MEMBER_ID`,`FROM_DATE`);

--
-- Indexes for table `AGENDA`
--
ALTER TABLE `AGENDA`
  ADD PRIMARY KEY (`ITEM_ID`);

--
-- Indexes for table `ASSIGNMENTS`
--
ALTER TABLE `ASSIGNMENTS`
  ADD PRIMARY KEY (`MEETING_ID`,`DUTY_ID`,`MULTIPLE`),
  ADD KEY `MEMBER_ID` (`MEMBER_ID`);

--
-- Indexes for table `DUTIES`
--
ALTER TABLE `DUTIES`
  ADD PRIMARY KEY (`DUTY_ID`);

--
-- Indexes for table `MEETINGS`
--
ALTER TABLE `MEETINGS`
  ADD PRIMARY KEY (`MEETING_ID`);

--
-- Indexes for table `MEMBERS`
--
ALTER TABLE `MEMBERS`
  ADD PRIMARY KEY (`MEMBER_ID`);

--
-- Indexes for table `PREFERENCES`
--
ALTER TABLE `PREFERENCES`
  ADD PRIMARY KEY (`MEMBER_ID`,`DUTY_ID`),
  ADD KEY `POSITION_ID` (`DUTY_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AGENDA`
--
ALTER TABLE `AGENDA`
  MODIFY `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `DUTIES`
--
ALTER TABLE `DUTIES`
  MODIFY `DUTY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `MEETINGS`
--
ALTER TABLE `MEETINGS`
  MODIFY `MEETING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1109;

--
-- AUTO_INCREMENT for table `MEMBERS`
--
ALTER TABLE `MEMBERS`
  MODIFY `MEMBER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
