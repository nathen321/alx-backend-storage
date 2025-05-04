-- List all Glam Rock bands ranked by longevity (until 2022)
SELECT 
    band_name,
    (2022 - formed) - IF(split = 0 OR split IS NULL, 0, (2022 - split)) AS lifespan
FROM 
    metal_bands
WHERE 
    style LIKE '%Glam rock%'
    OR style = 'Glam Rock'  -- Covers different capitalization variants
ORDER BY 
    lifespan DESC;
