-- grouping and counting
-- looking at band name and main style

SELECT band_name, COALESCE(split, 2022) - formed as lifespan from metal_bands
WHERE metal_bands.style LIKE '%Glam rock%';