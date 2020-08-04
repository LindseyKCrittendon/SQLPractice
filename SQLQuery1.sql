--CREATE TABLE Cohort (
   -- Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
  --  CohortName VARCHAR(55) NOT NULL,
--);

--CREATE TABLE Exercise (
    --Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
   -- ExerciseName VARCHAR(55) NOT NULL,
   --ExerciseLanguage VARCHAR(55) NOT NULL,
--);

--CREATE TABLE Student (
   -- Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    --FirstName VARCHAR(55) NOT NULL,
   -- LastName VARCHAR(55) NOT NULL,
   -- SlackHandle VARCHAR(55) NOT NULL,
   -- CohortId INTEGER NOT NULL,
   -- CONSTRAINT FK_Cohort_Student FOREIGN KEY(CohortId) REFERENCES Cohort(Id),
--);

--CREATE TABLE Instructor (
   -- Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
   -- FirstName VARCHAR(55) NOT NULL,
   -- LastName VARCHAR(55) NOT NULL,
   -- SlackHandle VARCHAR(55) NOT NULL,
   -- Specialty VARCHAR(55) NOT NULL,
   -- CohortId INTEGER NOT NULL,   
   -- CONSTRAINT FK_Cohort_Instructor FOREIGN KEY(CohortId) REFERENCES Cohort(Id),
--);

--CREATE TABLE AssignedExercise (
   -- Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
  --  ExerciseId INTEGER NOT NULL,
   -- StudentId INTEGER NOT NULL,
   -- CONSTRAINT FK_Exercise_AssignedExercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id),
  --  CONSTRAINT FK_Student_AssignedExercise FOREIGN KEY(StudentId) REFERENCES Student(Id),
--);

--INSERT INTO Cohort (CohortName) VALUES ('Cohort 1');
--INSERT INTO Cohort (CohortName) VALUES ('Cohort 2');
--INSERT INTO Cohort (CohortName) VALUES ('Cohort 3');

--SELECT * FROM Cohort;

--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Chicken Monkey', 'Javascript');
--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Kennel', 'Javascript');
--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Kennel', 'React.js');
--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Treslebridge', 'C#');

--SELECT * FROM Exercise;

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Lindsey', 'Crittendon', 'LindseyCrittendon', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Joey', 'Wellman', 'Beesus', 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Jennifer', 'Johnson', 'PlantBased', 2);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Devin', 'Conroy', 'PennyHunter', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Barry', 'Griffith', 'FurryLuvar', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Derek', 'Stapleton', 'Tater', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Sable', 'Bowen', 'SableBowen', 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Mike', 'Hotchkiss', 'Orby', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Jacob', 'Perry', 'DevinChecker', 2);

--SELECT * FROM Student;

--INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Orby', 'Hotchkiss', 'MikeHandler', 'Cuddles and Cuteness', 3);
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Jordan', 'Castelloe', 'JordanCastelloe', 'SUFFERING', 3);
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Tommy', 'Spurlock', 'TommySpurlock', 'Knocking out the Candyassness', 3);
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Courtney', 'Susman', 'CourtneySusman', 'Fixing', 2);
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Karman', 'Crittendon', 'KarmyKar', 'Lovins', 1);
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, Specialty, CohortId) VALUES ('Also', 'Crittendon', 'DobbyHasNoMaster', 'Distraction', 1);

--SELECT * FROM Instructor;

--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (1, 1);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (1, 2);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (2, 3);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (2, 4);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (3, 5);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (3, 6);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 7);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 8);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 9);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 1);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 2);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 3);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (3, 4);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (4, 5);
--INSERT INTO AssignedExercise (ExerciseId, StudentId) VALUES (2, 6);

--SELECT * FROM AssignedExercise;

--SELECT FirstName, LastName FROM Instructor ORDER BY LastName;

--SELECT DISTINCT Specialty FROM Instructor;

--SELECT Student.FirstName, Student.LastName, Exercise.ExerciseLanguage 
--FROM Student JOIN AssignedExercise 
--ON Student.Id = AssignedExercise.StudentId JOIN Exercise
--ON AssignedExercise.ExerciseId = Exercise.Id;

--SELECT Student.FirstName, Student.LastName, COUNT(Student.Id) 
--AS 'Number of Exercises' 
--FROM Student JOIN AssignedExercise 
--ON Student.Id = AssignedExercise.StudentId
--GROUP BY Student.FirstName, Student.LastName;