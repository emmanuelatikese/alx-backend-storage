-- grouping and counting
-- looking at origin and num_fan

SELECT origin, SUM(fans) as `nb_fans` from metal_bands
GROUP BY origin;