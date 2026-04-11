-- 1. Create the Users table if it doesn't exist
CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- 2. Now insert the 10 records
INSERT INTO Users (Name, Email) VALUES 
('Juan Dela Cruz', 'juan@email.com'),
('Maria Santos', 'maria.santos@provider.net'),
('Antonio Luna', 'aluna@history.org'),
('Corazon Aquino', 'cory.aquino@freedom.ph'),
('Jose Rizal', 'j.rizal@illustrado.com'),
('Gabriela Silang', 'g.silang@resistance.com'),
('Andres Bonifacio', 'andres.b@katipunan.org'),
('Pia Wurtzbach', 'pia.w@universe.com'),
('Manny Pacquiao', 'pacman@boxing.ph'),
('Catriona Gray', 'catriona.g@lava.com');