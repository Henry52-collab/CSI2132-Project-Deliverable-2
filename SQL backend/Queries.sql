-- Hotel----------------------------------------------------------------------------------------------------------
CREATE TABLE Hotel(
	Hotel_ID INT,
    Hotel_Chain_ID INT,
    category VARCHAR(100) NOT NULL,
    number_Of_Rooms INT NOT NULL,
    address VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (Hotel_ID,Hotel_Chain_ID),
    FOREIGN KEY(Hotel_Chain_ID) REFERENCES HotelChain(HotelChainID),
    CHECK (category IN ('ONE','TWO','THREE','FOUR','FIVE','SIX'))
);

-- Populate hotel Mariott
INSERT INTO hotel
VALUES
(11111,10001,'FOUR',5,'250 René-Lévesque Boulevard West ,Montreal,Quebec H2Z 1Z8','admin@Marriott.com'),
(11112,10001,'FOUR',5,'2359 Banff Trail NW ,Calgary,Alberta T2M-4L2','admin@Marriott.com'),
(11113,10001,'FOUR',5,'151 Bass Pro Mills Drive ,Vaughan, OntarioL4K 0E6','admin@Marriott.com'),
(11114,10001,'FIVE',5,'13475 Central Avenue ,Surrey, British Columbia V3T 0L8','admin@Marriott.com'),
(11115,10001,'FIVE',5,'340 de la Gauchetiere O ,Montreal,Quebec H2Z0C3','admin@Marriott.com'),
(11116,10001,'FIVE',5,'1 Centennial Drive ,Kananaskis Village,Alberta T0L 2H0','admin@Marriott.com'),
(11117,10001,'THREE',5,'1709 Lower Water Street ,Halifax,Nova Scotia B3J 1S5','admin@Marriott.com'),
(11118,10001,'THREE',5,'184 Adolphus Street ,St Andrews,New Brunswick E5B 1T7','admin@Marriott.com');

-- Populate hotel JinJiang
INSERT INTO hotel
value
(12111,10002,'THREE',5,'240 René-Lévesque Boulevard West ,Montreal, Quebec H2Z 1Z8','admin@JinJiang.com'),
(12112,10002,'THREE',5,'2378 Banff Trail NW ,Calgary,Alberta T2M-4L2','admin@JinJiang.com'),
(12113,10002,'FOUR',5,'2077 Bass Pro Mills Drive ,Vaughan,Ontario L4K 0E6','admin@JinJiang.com'),
(12114,10002,'FOUR',5,'13476 Central Avenue ,Surrey,British Columbia V3T 0L8','admin@JinJiang.com'),
(12115,10002,'FOUR',5,'341 de la Gauchetiere O ,Montreal,Quebec H2Z0C3','admin@JinJiang.com'),
(12116,10002,'FOUR',5,'2 Centennial Drive ,Kananaskis Village,Alberta T0L 2H0','admin@JinJiang.com'),
(12117,10002,'TWO',5,'1710 Lower Water Street ,Halifax,Nova Scotia B3J 1S5','admin@JinJiang.com'),
(12118,10002,'TWO',5,'185 Adolphus Street ,St Andrews,New Brunswick E5B 1T7','admin@JinJiang.com');

-- Populate hotel Hilton 
INSERT INTO hotel
VALUES
(13111,10003,'FIVE',5,'985 St Laurent Blvd ,Montreal,Quebec H2Z 1J4','admin@Hilton.com'),
(13112,10003,'FIVE',5,'711 4 St. SE Suite A ,Calgary,AlbertaT2G 1N3','admin@Hilton.com'),
(13113,10003,'FOUR',5,'3201 Hwy 7 ,Vaughan,Ontario L4K 5Z7','admin@Hilton.com'),
(13114,10003,'FOUR',5,'111 Robson St,Vancouver,British Columbia V6B 2A8','admin@Hilton.com'),
(13115,10003,'FOUR',5,'6939 Decarie Blvd ,Montreal,Quebec H3W 3E4','admin@Hilton.com'),
(13116,10003,'THREE',5,'393 Gregg Ave ,Hinton,Alberta T7V 1N1','admin@Hilton.com'),
(13117,10003,'THREE',5,'1960 Brunswick St ,Halifax,Nova Scotia B3J 2G75','admin@Hilton.com'),
(13118,10003,'THREE',5,'1 Market Square ,Saint John,New Brunswick E2L 4Z6','admin@Hilton.com');

-- Populate hotel IHG
INSERT INTO hotel
VALUES
(14111,10004,'FIVE',5,'1390 René-Lévesque Blvd W ,Montreal,Quebec H3G 0E3','admin@IHG.com'),
(14112,10004,'FIVE',5,'64 East Lake Ave NE ,Airdrie,Alberta T4A 2G8','admin@IHG.com'),
(14113,10004,'FIVE',5,'225 Front St W ,Toronto,Ontario M5V 2X3','admin@IHG.com'),
(14114,10004,'FIVE',5,'10688 No 6 Rd ,Richmond,British Columbia V6W 1E7','admin@IHG.com'),
(14115,10004,'FOUR',5,'10888 Chem. de la Côte de Liesse , Montréal,Quebec H8T 1A6','admin@IHG.com'),
(14116,10004,'FOUR',5,'4721 49 St ,Whitecourt,AlbertaT7S 0E8','admin@IHG.com'),
(14117,10004,'FOUR',5,'335 John Savage Ave ,Dartmouth,Nova Scotia B3B 0J3','admin@IHG.com'),
(14118,10004,'THREE',5,'425 Boulevard Adelard Savoie ,Dieppe,New Brunswick E1A 7E6','admin@IHG.com');

-- Populate hotel Wyndham








DROP TABLE Hotel; 
-- -----------------------------------------------------------------------------------------------------------
-- Hotel chain
CREATE TABLE HotelChain(
	Name VARCHAR(10),
	HotelChainID INT PRIMARY KEY,
	numberOfHotels INT,
	Address VARCHAR(30),
	Email VARCHAR(30)
);

-- Insert five hotel chains
INSERT INTO HotelChain
VALUES
('Marriott',10001,7500,'111 Marriott street','admin@Marriott.com'),
('JinJiang',10002,7500,'111 JinJiang street','admin@JinJinang.com'),
('Hilton',10003,7500,'111 Hilton street','admin@Hilton.com'),
('IHG',10004,7500,'111 IHG street','admin@IHG.com'),
('Wyndham',10005,7500,'111 Wyndham street','admin@Wyndham.com');

Drop table hotelChain;

SELECT * FROM HotelChain;

-- Room----------------------------------------------------------------------------------------------------------------
CREATE TABLE Room(
	Room_ID INT,
    Hotel_ID INT,
    Hotel_ChainID INT,
    Price INT,
    Capacity INT NOT NULL,
    view VARCHAR(100) NOT NULL,
    extension BOOL NOT NULL,
    availability BOOl NOT NULL,
    PRIMARY KEY (Room_ID,Hotel_ID,Hotel_ChainID),
    FOREIGN KEY(Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY (Hotel_ChainID) REFERENCES HotelChain(HotelChainID)
);

DROP TABLE Room;
-- ------------------------------------------------------------------------------------------------

-- Populate rooms

-- Insert rooms into Marriott hotels
-- 11111
INSERT INTO Room
VALUES
(000,11111,10001,120,3,'sea',false,true),
(001,11111,10001,130,2,'mountain',false,true),
(002,11111,10001,150,1,'mountain',true,true),
(003,11111,10001,120,3,'mountain',false,true),
(004,11111,10001,130,2,'mountain',false,true);

-- 11112
INSERT INTO Room
VALUES
(005,11112,10001,120,3,'sea',true,true),
(006,11112,10001,130,2,'mountain',false,true),
(007,11112,10001,150,1,'sea',false,true),
(008,11112,10001,120,3,'sea',false,true),
(009,11112,10001,130,2,'mountain',false,true);

-- 11113
INSERT INTO Room
VALUES
(010,11113,10001,120,3,'sea',false,true),
(011,11113,10001,130,2,'mountain',false,true),
(012,11113,10001,150,1,'sea',false,true),
(013,11113,10001,120,3,'sea',true,true),
(014,11113,10001,130,2,'mountain',false,true);

-- 11114
INSERT INTO Room
VALUES
(015,11114,10001,120,3,'sea',true,true),
(016,11114,10001,130,2,'mountain',true,true),
(017,11114,10001,150,1,'sea',true,true),
(018,11114,10001,120,3,'sea',true,true),
(019,11114,10001,130,2,'mountain',false,true);

-- 11115
INSERT INTO Room
VALUES
(020,11114,10001,120,3,'sea',true,true),
(021,11114,10001,130,2,'mountain',true,true),
(022,11114,10001,150,1,'sea',true,true),
(023,11114,10001,120,3,'sea',true,true),
(024,11114,10001,130,2,'mountain',true,true);

-- 11116
INSERT INTO Room
VALUES
(025,11114,10001,120,3,'sea',false,true),
(026,11114,10001,130,2,'sea',false,true),
(027,11114,10001,150,1,'sea',true,true),
(028,11114,10001,120,3,'sea',true,true),
(029,11114,10001,130,2,'sea',true,true);

-- 11117
INSERT INTO Room
VALUES
(030,11114,10001,120,3,'moutain',false,true),
(031,11114,10001,130,2,'moutain',false,true),
(032,11114,10001,150,1,'moutain',true,true),
(033,11114,10001,120,3,'moutain',true,true),
(034,11114,10001,130,2,'moutain',true,true);

-- 11118
INSERT INTO Room
VALUES
(035,11114,10001,120,3,'moutain',false,true),
(036,11114,10001,130,2,'moutain',false,true),
(037,11114,10001,150,1,'moutain',false,true),
(038,11114,10001,120,3,'moutain',false,true),
(039,11114,10001,130,2,'moutain',false,true);

-- Insert rooms into JingJiang hotels 
-- 12111
INSERT INTO Room
VALUES
(100,12111,10002,120,3,'sea',false,true),
(101,12111,10002,130,2,'sea',false,true),
(102,12111,10002,150,1,'sea',false,true),
(103,12111,10002,120,3,'sea',false,true),
(104,12111,10002,130,2,'sea',false,true);

-- 12112
INSERT INTO Room
VALUES
(105,12112,10002,120,3,'mountain',false,true),
(106,12112,10002,130,2,'sea',true,true),
(107,12112,10002,150,1,'mountain',false,true),
(108,12112,10002,120,3,'sea',false,true),
(109,12112,10002,130,2,'sea',false,true);

-- 12113
INSERT INTO Room
VALUES
(110,12113,10002,120,3,'mountain',false,true),
(111,12113,10002,130,2,'sea',true,true),
(112,12113,10002,150,1,'mountain',false,true),
(113,12113,10002,120,3,'sea',false,true),
(114,12113,10002,130,2,'mountain',true,true);

-- 12114
INSERT INTO Room
VALUES
(115,12114,10002,120,3,'mountain',false,true),
(116,12114,10002,130,2,'mountain',false,true),
(117,12114,10002,150,1,'mountain',false,true),
(118,12114,10002,120,3,'sea',false,true),
(119,12114,10002,130,2,'mountain',true,true);

-- 12115
INSERT INTO Room
VALUES
(120,12115,10002,120,3,'sea',true,true),
(121,12115,10002,130,2,'mountain',true,true),
(122,12115,10002,150,1,'mountain',false,true),
(123,12115,10002,120,3,'sea',false,true),
(124,12115,10002,130,2,'mountain',true,true);

-- 12116
INSERT INTO Room
VALUES
(125,12116,10002,120,3,'sea',false,true),
(126,12116,10002,130,2,'sea',true,true),
(127,12116,10002,150,1,'mountain',false,true),
(128,12116,10002,120,3,'sea',false,true),
(129,12116,10002,130,2,'mountain',true,true);

-- 12117
INSERT INTO Room
VALUES
(130,12117,10002,120,3,'sea',true,true),
(131,12117,10002,130,2,'sea',true,true),
(132,12117,10002,150,1,'sea',false,true),
(133,12117,10002,120,3,'sea',false,true),
(134,12117,10002,130,2,'mountain',false,true);

-- 12118
INSERT INTO Room
VALUES
(135,12118,10002,120,3,'sea',false,true),
(136,12118,10002,130,2,'mountain',true,true),
(137,12118,10002,150,1,'mountain',false,true),
(138,12118,10002,120,3,'sea',false,true),
(139,12118,10002,130,2,'mountain',false,true);

-- Insert rooms into Hilton hotels
-- 13111
INSERT INTO Room
VALUES
(000,13111,10003,120,3,'sea',false,true),
(001,13111,10003,130,2,'mountain',false,true),
(002,13111,10003,150,1,'mountain',true,true),
(003,13111,10003,120,3,'mountain',false,true),
(004,13111,10003,130,2,'mountain',false,true);

-- 13112
INSERT INTO Room
VALUES
(000,13112,10003,120,3,'sea',false,true),
(001,13112,10003,130,2,'mountain',false,true),
(002,13112,10003,150,1,'mountain',true,true),
(003,13112,10003,120,3,'mountain',false,true),
(004,13112,10003,130,2,'mountain',false,true);

-- 13113
INSERT INTO Room
VALUES
(000,13113,10003,120,3,'sea',false,true),
(001,13113,10003,130,2,'mountain',false,true),
(002,13113,10003,150,1,'mountain',true,true),
(003,13113,10003,120,3,'mountain',false,true),
(004,13113,10003,130,2,'mountain',false,true);

-- 13114
INSERT INTO Room
VALUES
(000,13114,10003,120,3,'sea',false,true),
(001,13114,10003,130,2,'mountain',false,true),
(002,13114,10003,150,1,'mountain',true,true),
(003,13114,10003,120,3,'mountain',false,true),
(004,13114,10003,130,2,'mountain',false,true);

-- 13115
INSERT INTO Room
VALUES
(000,13115,10003,120,3,'sea',false,true),
(001,13115,10003,130,2,'mountain',false,true),
(002,13115,10003,150,1,'mountain',true,true),
(003,13115,10003,120,3,'mountain',false,true),
(004,13115,10003,130,2,'mountain',false,true);

-- 13116
INSERT INTO Room
VALUES
(000,13116,10003,120,3,'sea',false,true),
(001,13116,10003,130,2,'mountain',false,true),
(002,13116,10003,150,1,'mountain',true,true),
(003,13116,10003,120,3,'mountain',false,true),
(004,13116,10003,130,2,'mountain',false,true);

-- 13117
INSERT INTO Room
VALUES
(000,13117,10003,120,3,'sea',false,true),
(001,13117,10003,130,2,'mountain',false,true),
(002,13117,10001,150,1,'mountain',true,true),
(003,13117,10003,120,3,'mountain',false,true),
(004,13117,10003,130,2,'mountain',false,true);

-- 13118
INSERT INTO Room
VALUES
(000,13118,10003,120,3,'sea',false,true),
(001,13118,10003,130,2,'mountain',false,true),
(002,13118,10003,150,1,'mountain',true,true),
(003,13118,10003,120,3,'mountain',false,true),
(004,13118,10003,130,2,'mountain',false,true);

-- Insert rooms into IHG hotels
-- 14111
INSERT INTO Room
VALUES
(000,14111,10004,120,3,'sea',false,true),
(001,14111,10004,130,2,'mountain',false,true),
(002,14111,10004,150,1,'mountain',true,true),
(003,14111,10004,120,3,'mountain',false,true),
(004,14111,10004,130,2,'mountain',false,true);

-- 14112
INSERT INTO Room
VALUES
(000,14112,10004,120,3,'sea',false,true),
(001,14112,10004,130,2,'mountain',false,true),
(002,14112,10004,150,1,'mountain',true,true),
(003,14112,10004,120,3,'mountain',false,true),
(004,14112,10004,130,2,'mountain',false,true);

-- 14113
INSERT INTO Room
VALUES
(000,14113,10004,120,3,'sea',false,true),
(001,14113,10004,130,2,'mountain',false,true),
(002,14113,10004,150,1,'mountain',true,true),
(003,14113,10004,120,3,'mountain',false,true),
(004,14113,10004,130,2,'mountain',false,true);

-- 14114
INSERT INTO Room
VALUES
(000,14114,10004,120,3,'sea',false,true),
(001,14114,10004,130,2,'mountain',false,true),
(002,14114,10004,150,1,'mountain',true,true),
(003,14114,10004,120,3,'mountain',false,true),
(004,14114,10004,130,2,'mountain',false,true);

-- 14115
INSERT INTO Room
VALUES
(000,14115,10004,120,3,'sea',false,true),
(001,14115,10004,130,2,'mountain',false,true),
(002,14115,10004,150,1,'mountain',true,true),
(003,14115,10004,120,3,'mountain',false,true),
(004,14115,10004,130,2,'mountain',false,true);

-- 14116
INSERT INTO Room
VALUES
(000,14116,10004,120,3,'sea',false,true),
(001,14116,10004,130,2,'mountain',false,true),
(002,14116,10004,150,1,'mountain',true,true),
(003,14116,10004,120,3,'mountain',false,true),
(004,14116,10004,130,2,'mountain',false,true);

-- 14117
INSERT INTO Room
VALUES
(000,14117,10004,120,3,'sea',false,true),
(001,14117,10004,130,2,'mountain',false,true),
(002,14117,10004,150,1,'mountain',true,true),
(003,14117,10004,120,3,'mountain',false,true),
(004,14117,10004,130,2,'mountain',false,true);

-- 14118
INSERT INTO Room
VALUES
(000,14118,10004,120,3,'sea',false,true),
(001,14118,10004,130,2,'mountain',false,true),
(002,14118,10004,150,1,'mountain',true,true),
(003,14118,10004,120,3,'mountain',false,true),
(004,14118,10004,130,2,'mountain',false,true);

-- Insert rooms into Wyndham hotels



-- Customer--------------------------------------------------------------------------------------------
CREATE TABLE Customer(
	CustomerID INT,
    First_name VARCHAR(100) NOT NULL,
    Middle_name VARCHAR(100) NOT NULL,
    Last_name VARCHAR(100) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    SIN INT,
    Date_Of_Registration DATE,
    PRIMARY KEY (CustomerID,SIN)
);

DROP TABLE Customer;

-- Rental -----------------------------------------------------------------------------------------------
CREATE TABLE Rental(
	Rental_ID INT NOT NULL PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Room_ID INT NOT NULL,
    Hotel_ID INT NOT NULL,
    Hotel_Chain_ID INT NOT NULL,
    Start_Date DATE,
    End_Date DATE,
    Paid BOOL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(CustomerID),
    FOREIGN KEY(Room_ID) REFERENCES Room(Room_ID),
    FOREIGN KEY(Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY(Hotel_Chain_ID) REFERENCES HotelChain(HotelChainID)
);

-- DROP TABLE Rental;

-- Employee




-- Booking



-- Manager--------------------------------------------------------------------------------------------------------



-- The user should be able to see two specific Views.
-- You have to implement the views as SQL views. 
-- View 1: the first view is the number of available rooms per area. 
-- Contains the total number of available rooms within the same city 
-- How to update room number in hotel?
-- Add attribute city to hotel?  
SELECT SUBSTRING_INDEX(SUBSTRING(A.address,LOCATE(',',A.address) + 1,LENGTH(A.address)),',',1) FROM hotel A;
SELECT COUNT(R.Room_ID) FROM Room R WHERE R.availability = true ;

CREATE VIEW Available_Rooms AS
SELECT SUBSTRING_INDEX(SUBSTRING(A.address,LOCATE(',',A.address) + 1,LENGTH(A.address)),',',1) AS city, SUM(R.Room_ID) AS NumberOfRooms
FROM hotel A, hotelchain B, Room R
WHERE R.availability = true
AND R.Hotel_ID = A.Hotel_ID
GROUP BY city;

SELECT * FROM Available_Rooms;
SELECT * FROM room;

UPDATE Room
SET availability = false
WHERE Room_ID = 000;

Drop view available_rooms;

select * FROM room;

-- View 2: the second view is the capacity of all the rooms of a specific hotel.
CREATE VIEW Capacity AS
SELECT hotelchain.Name,SUM(room.Capacity) AS hotelCapacity,hotel.Hotel_ID
FROM hotel,hotelchain,room
WHERE hotel.Hotel_Chain_ID = hotelchain.HotelChainID AND room.Hotel_ID = hotel.Hotel_ID
GROUP BY hotelchain.Name,room.Hotel_ID;

-- Test
UPDATE room
SET capacity = 5
WHERE room_ID  = 000;

drop view capacity;
SELECT * FROM capacity;


-- Implement at least three indexes on the relations of your database 
-- and justify why you have chosen these indexes: explain what type of queries and data updates you are expecting on your database 
-- and how these indexes are useful to accelerate querying the database.

-- The customer might be intersted in seeing all availble rooms with a mountain view or a sea view.
-- The query:
-- SELECT * FROM Room WHERE view = mountain;
-- As there are a lot of records present in table room, it would increase efficiency to create an index on room(view).
CREATE INDEX view_index ON room(view);
DROP INDEX  view_index ON room;
-- The hotel staff might need to search up a customer with a specific name and to check if the given customer is a resident of the hotel.
-- The query:
-- SELECT * FROM Customer WHERE first_name = John AND middle_name = Chris AND last_name = Doe;
-- As there are a lot of customer that exist in the database,creating an index on customer(First_name,middle_name,last_name)
-- would increase search efficiency 
CREATE INDEX room_index ON customer(First_name,middle_name,last_name);
DROP INDEX  room_index ON customer;
-- An index on the room attribute capacity might be needed because the database frequently filters using catagory of rooms.
-- The application will have a function for the users to search for hotels under a specific category using the query:
-- SELECT FROM hotel WHERE category = 'FIVE';
-- Search for a specified value for the category attribute is far more efficient than scanning through all the tuples
-- of the relation. 
CREATE INDEX category_index ON Hotel(category);
DROP INDEX category_index ON hotel;


-- Queries
SELECT * FROM Room WHERE extension = true AND view = 'mountain';
SELECT * FROM hotel WHERE number_Of_Rooms > 3 AND category = 'FOUR';
SELECT * FROM hotelChain WHERE Name = 'IHG' OR Name = 'Marriott';
SELECT * FROM Room WHERE Room.hotel_ID IN (SELECT hotel_ID FROM hotel);
