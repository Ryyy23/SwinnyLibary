/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


IF '$(LoadTestData)' = 'true'

BEGIN 
DELETE FROM Book;
DELETE FROM Student;

INSERT INTO Book(ISBN,StudentID,Title,YearPublished,AuthorID,AuthorFirstName,AuthorLastname,AuthorTFN) VALUES
('978-3-16-148410-0',NULL,'Relationships with Databases, the ins and outs', 1970, 32567, 'Edgar','Codd', 150111222),
('978-3-16- 148410-1',NULL,'Normalisation, how to make a database geek fit in', 1973, 32567, 'Edgar', 'Codd', 150111222),
('978-3-16- 148410-2',NULL, 'TCP/IP, the protocol for the masses', 1983, 76543, 'Vinton', 'Cerf', 150222333),
('978-3-16- 148410-3',NULL, 'The Man, the Bombe, and the Enigma',1940, 12345, 'Vinton', 'Cerf', 150222333);

INSERT INTO Student(StudentID,FirstName,LastName,Email,Mobile) VALUES
('s12345678', 'Fred', 'Flintstone', '12345678@student.swin.edu.au', 0400555111),
('s23456789', 'Barney', 'Rubble', '23456789@student.swin.edu.au', 0400555222),
('s34567890', 'Bam-Bam', 'Rubble', '34567890@student.swin.edu.au', 0400555333);
END;