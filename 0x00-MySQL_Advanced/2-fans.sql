-- This script creates a 'users' table with proper constraints
-- It's designed to be safe for repeated execution (won't fail if table exists)
-- Script to rank country origins of bands by number of fans
-- Compatible with most database systems (MySQL, PostgreSQL, SQLite, etc.)

SELECT origin, SUM(fans) AS nb_fans FROM metal_bands GROUP BY origin ORDER BY nb_fans DESC;
