-- creating a view
-- it all about viewing


CREATE View need_meeting AS SELECT score, last_meeting FROM students
WHERE score < 80 AND (last_meeting IS NULL OR DATE_SUB(CURDATE(), INTERVAL 1 MONTH));