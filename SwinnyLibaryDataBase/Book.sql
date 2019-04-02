CREATE TABLE [dbo].[Book]
(
	[ISBN] NVARCHAR(50) NOT NULL PRIMARY KEY,
	[StudentID] NVARCHAR(20),
	[Title] NVARCHAR(50) NOT NULL,
	[YearPublished] INT NOT NULL,
	[AuthorID] NVARCHAR(20) NOT NULL,
	[AuthorFirstName] NVARCHAR(100) NOT NULL,
	[AuthorLastname] NVARCHAR(100) NOT NULL,
	[AuthorTFN] NVARCHAR(50) NOT NULL,
	Constraint FK_BOOK_STUDENT FOREIGN KEY (StudentID) REFERENCES dbo.Student(StudentID)  


)
