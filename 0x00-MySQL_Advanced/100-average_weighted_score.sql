-- working on procedure again
-- creating an weight-average

DELIMITER //


CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
DECLARE Ans FLOAT;
BEGIN
    SELECT SUM(c.score * p.weight) / SUM(p.weight) INTO Ans
    FROM corrections c
    JOIN projects p ON c.project_id = p.id
    WHERE c.user_id = user_id;
    UPDATE users SET average_score = Ans
    WHERE id = user_id;
END //

DELIMITER ;