CREATE DATABASE SCHOOLDB

USE SCHOOLDB

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ClassID INT
);



INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, ClassID)
VALUES
    (1, 'Shashank', 'KS', '2005-03-15', 1),
    (2, 'Bhumika', 'S', '2006-07-10', 2),
    (3, 'Sadashiva', 'J', '2005-09-20', 1),
    (4, 'Lakshmi', 'M', '2007-01-25', 3),
    (5, 'Rani', 'V', '2006-11-05', 2);


SELECT * FROM Student



CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);


INSERT INTO Subjects (SubjectID, SubjectName)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'History'),
    (4, 'English'),
    (5, 'Computer Science');

SELECT * FROM Subjects


CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(20)
);


INSERT INTO Classes (ClassID, ClassName)
VALUES
    (1, 'Class 1'),
    (2, 'Class 2'),
    (3, 'Class 3'),
    (4, 'Class 4'),
    (5, 'Class 5');


SELECT * FROM Classes



CREATE NONCLUSTERED INDEX IX_Student_ClassID ON Student (ClassID);


CREATE NONCLUSTERED INDEX IX_Student_LastName ON Student (LastName);


CREATE NONCLUSTERED INDEX IX_Subjects_SubjectName ON Subjects (SubjectName);


CREATE NONCLUSTERED INDEX IX_Classes_ClassName ON Classes (ClassName);