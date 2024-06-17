-- working on procedure again
-- creating an weight-average

DELIMITER //


CREATE PROCEDURE ComputeAverageWeightedScoreForUser(user_id INT)

BEGIN
DECLARE Ans FLOAT;
    SELECT SUM(cor.score * pro.weight) / SUM(pro.weight) INTO Ans
    FROM corrections cor
    JOIN projects pro ON cor.project_id = pro.id
    WHERE cor.user_id = user_id;
    UPDATE users SET average_score = Ans
    WHERE id = user_id;
END //

DELIMITER ;