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
