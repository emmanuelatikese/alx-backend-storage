-- creating a view
-- it all about viewing


CREATE View need_meeting
AS SELECT name FROM students
WHERE score < 80 AND
last_meeting IS NULL OR last_meeting < DATE_SUB(NOW(), INTERVAL 1 MONTH;