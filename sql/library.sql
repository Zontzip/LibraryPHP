CREATE TABLE Users 
(
	username VARCHAR(32),
	password VARCHAR(8),
	firstName VARCHAR(32),
	lastName VARCHAR(32),
	AddressLine1 VARCHAR(32),
	AddressLine2 VARCHAR(32),
	city VARCHAR(16),
	telephone VARCHAR(10),
	mobile VARCHAR(10),
CONSTRAINT User_PK PRIMARY KEY (username) 
);

CREATE TABLE Categories
(
	categoryID VARCHAR(4),
	categoryDesc VARCHAR(32),
CONSTRAINT Categories_PK PRIMARY KEY (categoryID)
);

CREATE TABLE Books
(
	ISBN VARCHAR(32),
	bookTitle VARCHAR(32),
	authour VARCHAR(32),
	edition VARCHAR(2),
	year INT(4),
	categoryID VARCHAR(4),
	reserved VARCHAR(1),
CONSTRAINT Books_PK PRIMARY KEY (ISBN),
CONSTRAINT Books_Categories_FK FOREIGN KEY (categoryID) REFERENCES Categories (categoryID)	
);

CREATE TABLE Reservations
(
	ISBN VARCHAR(32) ,
	username VARCHAR(32) ,
	reservedDate DATE ,
CONSTRAINT Reservations_Books_FK FOREIGN KEY (ISBN) REFERENCES Books (ISBN) ,
CONSTRAINT Reservations_Users_FK FOREIGN KEY (username) REFERENCES Users (username)
);

INSERT INTO `users` (`username`, `password`, `firstName`, `lastName`, `AddressLine1`, `AddressLine2`, `city`, `telephone`, `mobile`) VALUES
('Ailish', '123098', 'Ailish', 'Grant', '123 Fake St.', 'Blackrock', 'Dublin', 'n/a', '0863917597'),
('jolzantor', '123654', 'Rian', 'Jolley', '39 Ardagh Drive', 'Blackrock', 'Dublin', 'n/a', '0863917596'),
("alexzont", "944446", "Alex", "Kiernan", "14 Deansgrange Road", "Blackrock", "Dublin", "n/a", "0862335541"),
('alanjmckenna', 't1234s', 'Alan', 'Mckenna', '38 Cranley Road', 'Fairview', 'Dublin', '9998377', '856625567'),
('joecrotty', 'kj7899', 'Joseph', 'Crotty', 'Apt 5 Clyde Road', 'Donnybrook', 'Dublin', '8887889', '876654456'),
('tommy100', '12345', 'Tom', 'Behan', '14 Hyde road', 'Dalkey', 'Dublin', '9983747', '876738782');

INSERT INTO `categories` (`categoryID`, `categoryDesc`) VALUES
('001', 'Health'),
('002', 'Business'),
('003', 'Biography'),
('004', 'Technology'),
('005', 'Travel'),
('006', 'Self-Help'),
('007', 'Cookery'),
('008', 'Fiction');

INSERT INTO `books` (`ISBN`, `bookTitle`, `authour`, `edition`, `year`, `categoryID`, `reserved`) VALUES
('07H-2342', 'Catch 22', 'Joseph Heller', '1', 1961, '003', 'N'),
('09N-4532', 'Inverted Matrices', 'Alexo Nanrick', '1', 1994, '001', 'N'),
('90B-6345', 'Harry Potter and the Philosopher', 'J. K. Rowling', '1', 1997, '002', 'N'),
('91b-4523', 'Harry Potter and the Chamber', 'J. K. Rowling', '1', 1998, '002', 'N'),
('093-403992','Computers in Business', 'Alicia O Neill','3',1997,'003','N'),
('23472-8729','Exploring Peru', 'Stephanie Birchi','4',2005,'005','N'),
('237-34823','Business Staregy', 'Joe Peppard','2',2002,'002','N'),
('23u8-293849','A guide to nutrition', 'John Thorpe','2',1997,'001','N'),
('2983-3494','Cooking for children', 'Anabelle Sharpe','1',2003,'007','N'),
('82n8-308','Computers for idiots', 'Susan O Neill','5',1998,'004','N'),
('9823-23984','My life in picture', 'Kevin Graham','8',2004,'001','N'),
('9823-2403-0','DaVinci Code', 'Dan Brown','1',2003,'008','N'),
('98234-029384','My ranch in Texas', 'George Bush','1',2005,'001','N'),
('9823-98345','How to cook Italian food', 'Jamie Oliver','2',2005,'007','N'),
('9823-98487','Optimising your business', 'Cleo Blair','1',2001,'002','N'),
('988745-234','Tara Road', 'Maeve Binchy','4',2002,'008','N'),
('993-004-00','My life in bits', 'John Smith','1',2001,'001','N'),
('9987-0039882','Shooting History', 'Jon Snow','1',2003,'001','N');

commit;