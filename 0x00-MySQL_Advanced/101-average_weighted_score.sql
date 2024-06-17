-- working on procedure again
-- creating an weight-average1

DELIMITER //


CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()

BEGIN
    UPDATE users U
    JOIN (
        SELECT cor.user_id, 
               SUM(cor.score * pro.weight) / SUM(pro.weight) AS Ans
        FROM corrections cor
        JOIN projects pro ON cor.project_id = pro.id
        GROUP BY cor.user_id
    ) AS C ON U.id = C.user_id
    SET U.average_score = C.Ans;
END //

DELIMITER ;