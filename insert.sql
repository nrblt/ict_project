CREATE TABLE bus_stops(
st_id Decimal(12),
stop_num DECIMAL(12),
ntime_id INT,
bus_name VARCHAR(255),
PRimary KEY(st_id),
FOREIGN KEy(ntime_id) REFERENCES Needed_time(ntime_id)
);
INSERT INTO bus_stops(st_id, stop_num, bus_name, ntime_id)
VALUES
('1', '15', 'Busmate', 1),
('2', '20', 'Kompan', 2),
('3', '11', 'Oneness', 3),
('4', '15', 'KOMBAN', 4),
('5', '30', 'Arifin', 5),
('6', '45', 'Sevenz', 6),
('7', '41', 'Saho', 7),
('8', '32', 'King', 8),
('9', '27', 'Companion', 9),
('10', '25', 'Star tour', 10),
('11', '19', 'Zed King', 11),
('12', '34', 'Tesorito', 12),
('13', '60', 'Humsafar', 13),
('14', '34', 'Daviran', 14),
('15', '29', 'Tiger', 15),
('16', '31', 'Watsica', 16),
('17', '26', 'Lamplant', 17),
('18', '14', 'Littel-Bayern', 18),
('19', '50', 'Mustan', 19),
('20', '51', 'Toyoto', 20); 
 
CREATE TABLE Fare(
fare_id INT,
farecost decimal(12),
category VARCHAR(50),
bcat_id decimal(12),
primary key (fare_id),
foreign key(bcat_id) references BusCategory(bcat_id)
);

INSERT INTO Fare(fare_id, farecost, category)
values
(1, 1.91, 'deluxe'),
(2, 2.94, 'public'),
(3, 2.70, 'normal'),
(4, 3.07, 'normal'),
(5, 4.08, 'deluxe'),
(6, 6.98, 'public'),
(7, 7.87, 'public'),
(8, 3.82, 'deluxe'),
(9, 0.98, 'normal'),
(10, 8.88, 'deluxe'),
(11, 6.86, 'deluxe'),
(12, 8.71, 'public'),
(13, 3.12, 'normal'),
(14, 1.84, 'public'),
(15, 5.06, 'public'),
(16, 2.12, 'deluxe'),
(17, 3.79, 'normal'),
(18, 6.33, 'public'),
(19, 5.76, 'deluxe'),
(20, 8.31, 'normal');




create table city(
city_id decimal(12),
city_name VARCHAR(255),
loc_name varchar(50),
bus_type text,
foreign key(loc_name) REFERENCES Location(loc_name)
);
insert into city(city_id, city_name, loc_name, bus_type)
VALUES
('101', 'Nur-sultan', 'Lantern Lane-George Street', 'Coach'),
('102', 'Almaty', 'Main Street West-11th Street', 'School bus'),
('103', 'Semey', 'Front Street South-7th Avenue', 'Shuttle bus'),
('104', 'Karaganda', 'Eagle Street-Forest Avenue', 'Minibus'),
('105', 'Aktobe', 'Park Avenue-Taylor Street', NULL),
('106', 'Shymkent', 'Catherine Street-Beechwood Drive', 'Double-decker bus'),
('107', 'New york', 'Route 29-Cedar Street', 'Single-decker bus'),
('108', 'London', '9th Street-Elizabeth Street', NULL),
('109', 'Knoxville', 'Railroad Street-Magnolia Avenue', 'High-floor bus'),
('110', 'Faiyum', 'Route 10-14th Street', 'Trolleybus'),
('111', 'Nagpur', 'Lincoln Avenue-4th Avenue', 'Articulated bus'),
('112', 'Valencia', 'Maple Street-Spring Street', 'Gyrobus'),
('113', 'Krasnoyarsk', 'Schoolhouse Lane-York Street', 'Minibus'),
('114', 'BAMAKO', 'Locust Lane-Woodland Road', 'Tram'),
('115', 'Málaga', 'Meadow Lane-Strawberry Lane', 'Minibus'),
('116', 'Greensboro', 'Carriage Drive-Pennsylvania Avenue', NULL),
('117', 'Constanta', 'Cleveland Avenue-Mill Road', 'School bus'),
('118', 'AMSTERDAM', 'Columbia Street-Grant Street', 'Minicoach'),
('119', 'Brno', 'Franklin Court-6th Street', 'Gyrobus'),
('120', 'Macapá', 'Beech Street-Fairway Drive', 'High-floor bus');

CREATE TABLE Needed_time(
ntime_id INT,
time_id Decimal(12),
departure_t TIME,
arrival_t TIME,
DAY TEXT NOT NULL,
PRIMARY KEY (ntime_id),
FOREIGN KEY (time_id) REFERENCES Timetable(time_id)
);
INSERT INTO Needed_time(ntime_id, departure_t, arrival_t, day, time_id)
VALUES
(1, '6:18 AM', '4:20 PM', 'Monday','001'),
(2, '9:07 AM', '11:05 PM', 'Tuesday','002'),
(3, '6:15 AM', '1:47 PM', 'Wednesday','003'),
(4, '9:10 AM', '6:59 AM', 'Thursday','004'),
(5, '10:06 AM', '7:19 AM', 'Friday','005'),
(6, '10:40 AM', '12:18 PM', 'Saturday','006'),
(7, '11:24 PM', '2:52 PM', 'Sunday','007'),
(8, '1:46 AM', '9:25 PM', 'Monday','008'),
(9, '4:28 AM', '3:21 AM', 'Tuesday','009'),
(10, '7:34 AM', '7:05 AM', 'Wednesday','010'),
(11, '3:31 AM', '12:35 PM', 'Thursday','011'),
(12, '5:02 AM', '2:34 PM', 'Friday','012'),
(13, '12:26 AM', '3:58 PM', 'Saturday','013'),
(14, '2:49 AM', '6:56 AM', 'Sunday','014'),
(15, '2:04 PM', '3:21 PM', 'Monday','015'),
(16, '10:02 AM', '2:16 PM', 'Tuesday','016'),
(17, '6:21 PM', '5:50 AM', 'Wednesday','017'),
(18, '11:39 PM', '8:20 AM', 'Thursday','018'),
(19, '5:16 PM', '2:07 PM', 'Friday', '019'),
(20, '10:43 AM', '3:07 AM', 'Saturday','020');

 
CREATE TABLE Distance(
dist VARCHAR(50),
bus_name VARCHAR(255),
loc_name tEXT,
ntime_id int,
primary key(dist),
foreign key(ntime_id) REFERENCES Needed_time(ntime_id)
);
insert into distance(ntime_id, bus_name, loc_name, dist)
values 
(1, 'Busmate', 'Lantern Lane-George Street','120km'),
(2, 'Kompan', 'Main Street West-11th Street','200km'),
(3, 'Oneness', 'Front Street South-7th Avenue', '103km'),
(4, 'KOMBAN', 'Eagle Street-Forest Avenue', '97km'),
(5, 'Arifin', 'Park Avenue-Taylor Street', '157km'),
(6, 'Sevenz', 'Catherine Street-Beechwood Drive', '300km'),
(7, 'Saho', 'Route 29-Cedar Street', '140km'),
(8, 'King', '9th Street-Elizabeth Street', '170km'),
(9, 'Companion', 'Railroad Street-Magnolia Avenue', '320km'),
(10, 'Star tour', 'Route 10-14th Street', '130km'),
(11, 'Zed king', 'Lincoln Avenue-4th Avenue', '270km'),
(12, 'Tesorito', 'Maple Street-Spring Street', '303km'),
(13, 'Humsafar', 'Schoolhouse Lane-York Street', '1000km'),
(14, 'Daviran', 'Locust Lane-Woodland Road', '1340km'),
(15, 'Tiger', 'Meadow Lane-Strawberry Lane', '1200km'),
(16, 'Watsica', 'Carriage Drive-Pennsylvania Avenue', '1100km'),
(17, 'Lampland', 'Cleveland Avenue-Mill Road', '1600km'),
(18, 'Littel-Bayern', 'Columbia Street-Grant Street','600km'),
(19, 'Mustan', 'Franklin Court-6th Street', '700km'),
(20, 'Toyoto', 'Beech Street-Fairway Drive', '900km');

 

CREATE TABLE Location(
  loc_id decimal(12),
  loc_name varchar(50),
  user_id INT,
  dist varchar(50),
  foreign key(dist) references Distance(dist),
  FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

alter table location
add constraint location_pk PRIMARY key (loc_name);

INSERT INTO location(loc_id, loc_name, dist)
    VALUES
(1,'Lantern Lane-George Street','120km'),
(2,'Main Street West-11th Street','200km'),
(3,'Front Street South-7th Avenue','103km'),
(4,'Eagle Street-Forest Avenue', '97km'),
(5,'Park Avenue-Taylor Street', '157km'),
(6,'Catherine Street-Beechwood Drive', '300km'),
(7,'Route 29-Cedar Street', '140km'),
(8,'9th Street-Elizabeth Street', '170km'),
(9,'Railroad Street-Magnolia Avenue', '320km'),
(10,'Route 10-14th Street', '130km'),
(11,'Lincoln Avenue-4th Avenue', '270km'),
(12,'Maple Street-Spring Street', '303km'),
(13,'Schoolhouse Lane-York Street', '1000km'),
(14,'Locust Lane-Woodland Road', '1340km'),
(15,'Meadow Lane-Strawberry Lane', '1200km'),
(16,'Carriage Drive-Pennsylvania Avenue', '1100km'),
(17,'Cleveland Avenue-Mill Road', '1600km'),
(18,'Columbia Street-Grant Street','600km'),
(19,'Franklin Court-6th Street', '700km'),
(20,'Beech Street-Fairway Drive', '900km');


CREATE TABLE Users (
  user_id INT,
  user_name VARCHAR(255),
  password TEXT,
  repassword TEXT,
  PRIMARY KEY(user_id)
);
INSERT INTO Users(user_id, user_name,password,repassword)
    VALUES
(101, 'Carlyn','cztFFWF','cztFFWF'),
(102, 'Lynnea','3EmnamcJy','3EmnamcJy'),
(103, 'Ericha','YyEin5qCtx','YyEin5qCtx'),
(104, 'Stevana','oiBL1s','oiBL1s'),
(105, 'Ewell','sAp4Qx','sAp4Qx'),
(106, 'Kenyon','hbBFt438','hbBFt438'),
(107, 'Emmeline','m1eMg6','m1eMg6'),
(108, 'Kary','QGgCYLxqY','QGgCYLxqY'),
(109, 'Ambrosi','gzsRB3yEgfmK','gzsRB3yEgfmK'),
(110, 'Jefferson','q7Saqp','q7Saqp'),
(111, 'Zorine','DmzBJZ','DmzBJZ'),
(112, 'Fabio','G0qyEr8H','G0qyEr8H'),
(113, 'Micki','cP6OjQo1hF','cP6OjQo1hF'),
(114, 'Leeland','UN4SQsT','UN4SQsT'),
(115, 'Berry','et3XAPWiwG','et3XAPWiwG'),
(116, 'Albertine','aSHdcBx3H','aSHdcBx3H'),
(117, 'Adena','JKu96I','JKu96I'),
(118, 'Hillyer','3820e9dMI','3820e9dMI'),
(119, 'Shaw','vYKpayKb','vYKpayKb'),
(120, 'Ynes','UnXfcpI9d','UnXfcpI9d');

 

CREATE TABLE Bus (
  bus_id INT,
  bus_name VARCHAR(255),
  bus_type TEXT,
  bus_number INT,
  totalseats INT,
  aviableseats INT,
  PRIMARY KEY(bus_id)
);
INSERT INTO bus(bus_id, bus_name, bus_type, bus_number, totalseats, aviableseats)
    VALUES
(1, 'Busmate', 'Coach','2019','30','5'),
(2, 'Kompan', 'School bus','2023','25','6'),
(3, 'Oneness', 'Shuttle bus','2000','20','10'),
(4, 'KOMBAN', 'Minibus','2001','15','8'),
(5, 'Arifin', 'Minicoach','2002','15','9'),
(6, 'Sevenz', 'Double-decker bus','2018','40','16'),
(7, 'Saho', 'Single-decker bus','2007','20','17'),
(8, 'King', 'Low-floor bus','2003','12','18'),
(9, 'Companion', 'High-floor bus','2004','24','9'),
(10, 'Star tour', 'Trolleybus','2017','35','20'),
(11, 'Zed King', 'Articulated bus','2045','30','14'),
(12, 'Tesorito', 'Gyrobus','2001','25','5'),
(13, 'Humsafar', 'Minibus','2005','12','6'),
(14, 'Daviran', 'Tram','2011','45','30'),
(15, 'Tiger', 'Minibus','2009','15','12'),
(16, 'Watsica', 'Trolleybus','2008','40','27'),
(17, 'Lampland', 'School bus','2015','30','21'),
(18, 'Littel-Bayern', 'Minicoach','2016','10','3'),
(19, 'Mustan', 'Gyrobus','2012','20','4'),
(20, 'Toyoto', 'High-floor bus','2013','35','13');


 

CREATE TABLE BusCategory(
  bcat_id decimal(12),
  category varchar(50),
  bus_id INT,
  PRIMARY KEY(bcat_id),
  FOREIGN KEY(bus_id) REFERENCES Bus(bus_id)
);
INSERT INTO buscategory(bcat_id, category)
    VALUES
(1, 'deluxe'),
(2, 'public'),
(3, 'normal'),
(4, 'normal'),
(5, 'deluxe'),
(6, 'public'),
(7, 'public'),
(8, 'deluxe'),
(9, 'normal'),
(10, 'deluxe'),
(11, 'deluxe'),
(12, 'public'),
(13, 'normal'),
(14, 'public'),
(15, 'public'),
(16, 'deluxe'),
(17, 'normal'),
(18, 'public'),
(19, 'deluxe'),
(20, 'normal');
 
CREATE TABLE timetable (
   time_id decimal(12),
   tripstart varchar(50),
   tripend varchar(50),
   day TEXT NOT NULL,
   platform_id decimal(12),
   bus_id INT,
   PRIMARY KEY(time_id),
   FOREIGN KEY(bus_id) REFERENCES bus(bus_id)
);
INSERT INTO timetable(time_id, tripstart,tripend,day,platform_id,bus_id)
   VALUES
('001', '8:00 AM','8:00 PM','Monday','11','1'),
('002', '7:00 AM','7:00 PM','Tuesday','12','2'),
('003', '6:00 AM','6:00 PM','Wednsday','13','3'),
('004', '5:00 AM','7:00 PM','Thursday','14','4'),
('005', '7:30 AM','8:00 PM','Friday','15','5'),
('006', '8:20 AM','6:30 PM','Sunday','16','6'),
('007', '6:30 AM','6:30 PM','Saturday','17','7'),
('008', '5:45 AM','7:00 PM','Monday','18','8'),
('009', '6:55 AM','5:55 PM','Tuesday','19','9'),
('010', '7:45 AM','7:45 PM','Wednsday','20','10'),
('011', '8:30 AM','8:00 PM','Thursday','21','11'),
('012', '9:00 AM','8:40 PM','Friday','22','12'),
('013', '9:30 AM','6:00 PM','Sunday','23','13'),
('014', '7:50 AM','6:30 PM','Saturday','24','14'),
('015', '5:50 AM','5:50 PM','Monday','25','15'),
('016', '8:20 AM','4:40 PM','Tuesday','26','16'),
('017', '9:00 AM','8:30 PM','Wednsday','27','17'),
('018', '6:00 AM','4:40 PM','Thurday','28','18'),
('019', '8:45 AM','8:30 AM','Friday','29','19'),
('020', '10:00 AM','7:00 PM','Sunday','30','20');
