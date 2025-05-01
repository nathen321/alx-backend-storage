-- This script creates a 'users' table with proper constraints
-- It's designed to be safe for repeated execution (won't fail if table exists)
CREATE TABLE IF NOT EXISTS users (id INT NOT NULL AUTO_INCREMENT, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255), PRIMARY KEY (id));
