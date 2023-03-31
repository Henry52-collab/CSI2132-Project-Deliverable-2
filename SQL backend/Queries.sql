-- Hotel
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
(11111,10001,'FOUR',1000,'250 René-Lévesque Boulevard West Montreal, Quebec H2Z 1Z8','admin@Marriott.com'),
(11112,10001,'FOUR',1000,'2359 Banff Trail NW Calgary, Alberta T2M-4L2','admin@Marriott.com'),
(11113,10001,'FOUR',1000,'151 Bass Pro Mills Drive Vaughan, Ontario L4K 0E6','admin@Marriott.com'),
(11114,10001,'FIVE',1000,'13475 Central Avenue Surrey, British Columbia V3T 0L8','admin@Marriott.com'),
(11115,10001,'FIVE',1000,'340 de la Gauchetiere O Montreal, Quebec H2Z0C3','admin@Marriott.com'),
(11116,10001,'FIVE',1000,'1 Centennial Drive Kananaskis Village, Alberta T0L 2H0','admin@Marriott.com'),
(11117,10001,'THREE',1000,'1709 Lower Water Street Halifax, Nova Scotia B3J 1S5','admin@Marriott.com'),
(11118,10001,'THREE',1000,'184 Adolphus Street St Andrews, New Brunswick E5B 1T7','admin@Marriott.com');

-- Populate hotel JinJiang




-- Populate hotel Hilton 



-- Populate hotel IHG




-- Populate hotel Wyndham





-- DROP TABLE Hotel; 

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

-- Room
CREATE TABLE Room(
	Room_ID INT,
    Hotel_ID INT,
    Hotel_ChainID INT,
    Price NUMERIC(10,10),
    Capacity INT NOT NULL,
    view VARCHAR(100) NOT NULL,
    extension BOOL NOT NULL,
    PRIMARY KEY (Room_ID,Hotel_ID,Hotel_ChainID),
    FOREIGN KEY(Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY (Hotel_ChainID) REFERENCES HotelChain(HotelChainID)
);

DROP TABLE Room;

-- Customer
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

-- Rental 
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



-- Manager



-- The user should be able to see two specific Views.
-- You have to implement the views as SQL views. 
-- View 1: the first view is the number of available rooms per area. 
-- View 2: the second view is the capacity of all the rooms of a specific hotel.
-- Contains the total number of available rooms within the same city 
-- How to update room number in hotel?

CREATE VIEW Available_Rooms AS
SELECT A.address,B.name,A.Hotel_ID,A.number_Of_Rooms,A.category
FROM Hotel A,Hotelchain B
WHERE A.Hotel_Chain_ID = B.HotelChainID;

Drop view available_rooms;