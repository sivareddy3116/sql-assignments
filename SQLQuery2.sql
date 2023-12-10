

-- Create the database at location D:\Exercises with an initial size of 24 MB and auto growth of 8 MB
CREATE DATABASE OurExerciseDb
ON PRIMARY
    (NAME = 'OurExerciseDb_Data',
    FILENAME = 'E:\sql assignment\OurExerciseDb_Data.mdf',
    SIZE = 24MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 8MB);


USE OurExerciseDb;
 -- Create the Products table
CREATE TABLE Products3
(
    PId INT PRIMARY KEY IDENTITY(1,1),

    PName NVARCHAR(50),
    PPrice DECIMAL(18, 2) NOT NULL CHECK (PPrice >= 50 AND PPrice <= 100000),
    Company INT DEFAULT 1,
    CONSTRAINT RS_Company CHECK (Company = 1)
)

-- Insert at least 5 records into the Products table
INSERT INTO Products3(PName, PPrice) VALUES ('laptop', 75000.50);
INSERT INTO Products3(PName, PPrice) VALUES ('mobile', 12000.00);
INSERT INTO Products3(PName, PPrice) VALUES ('airpods', 5500.80);
INSERT INTO Products3 (PName, PPrice) VALUES ('watch', 9000.25);
INSERT INTO Products3(PName, PPrice) VALUES ('battery', 6500.00);

-- Select all records from the Products table
SELECT * FROM Products3;

