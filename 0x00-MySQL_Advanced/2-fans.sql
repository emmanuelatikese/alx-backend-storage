-- grouping and counting
-- looking at origin and num_fan

SELECT origin, SUM(fans) as nb_fans FROM metal_bands GROUP BY origin ORDER BY nb_fans DESC;