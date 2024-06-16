-- procedure
-- working on average

DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE scoreAvg DECIMAL(10, 2);
    SELECT AVG(score) INTO scoreAvg from corrections
    WHERE corrections.user_id = user_id;
    UPDATE users SET average_score = scoreAvg
    WHERE id = user_id;
END //

DELIMITER ;