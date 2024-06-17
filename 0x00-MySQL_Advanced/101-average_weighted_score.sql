-- working on procedure again
-- creating an weight-average1

DELIMITER //


CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()

BEGIN
DECLARE Ans FLOAT;
    UPDATE users U
    (SELECT SUM(cor.score * pro.weight) / SUM(pro.weight) INTO Ans
    FROM corrections cor
    JOIN projects pro ON cor.project_id = pro.id
    GROUP BY cor.user_id) AS C
    SET U.average_score = Ans
    WHERE U.id = C.user_id;
END //

DELIMITER ;