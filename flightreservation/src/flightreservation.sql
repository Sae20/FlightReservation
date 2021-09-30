drop database reservation;
create database reservation;
use reservation;

create table user
(
id int not null auto_increment,
first_name varchar(30),
last_name varchar(30), 
email varchar(50),
password varchar(550),
primary key(id),
unique key (email)
);

create table flight
(
id int not null auto_increment,
flight_number varchar(30),
operating_airlines varchar(30), 
departure_city varchar(30),
arrival_city varchar(30), 
date_of_departure date not null,
departuretime timestamp default current_timestamp,
primary key(id)
);




create table passenger
(
id int not null auto_increment,
first_name varchar(256),
last_name varchar(256), 
middle_name varchar(256),
email varchar(50),
phone varchar(10),
primary key(id)
);


create table reservation
(
id int not null auto_increment,
checked_in tinyint(1),
number_of_bags int, 
passenger_id int,
flight_id int,
created timestamp default current_timestamp,
primary key(id),
foreign key (passenger_id) references passenger(id) on delete cascade, 
foreign key (flight_id) references flight(id) 
);

show tables;

select * from user;
select * from flight;






insert into flight values(1,'KF1','Kingfisher','DEL',
'LKO',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 03:14:07');

insert into flight values(2,'AA2','Air India','DEL',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 03:27:12');

insert into flight values(3,'IG3','IndiGO','DEL',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 04:00:00');

insert into flight values(4,'SP4','SpiceJet','DEL',
'BLR',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 05:25:00');

insert into flight values(5,'VT5','Vistara','DEL',
'CHN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 06:55:00');

insert into flight values(6,'GA6','GoAir','DEL',
'CHN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 07:15:00');

insert into flight values(7,'AS7','Air Aisa','DEL',
'SRT',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 08:30:00');

insert into flight values(8,'KF8','Kingfisher','DEL',
'AHM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 09:14:07');

insert into flight values(9,'AA9','Air India','DEL',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 10:27:12');

insert into flight values(10,'IG10','IndiGO','DEL',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 11:00:00');

insert into flight values(11,'SP11','SpiceJet','DEL',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 12:25:00');

insert into flight values(12,'VT12','Vistara','DEL',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 13:55:00');

insert into flight values(14,'GA13','GoAir','MUM',
'LKO',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 14:15:00');

insert into flight values(15,'AS14','Air Aisa','PUN',
'LKO',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 15:30:00');





insert into flight values(16,'KF1','Kingfisher','LKO',
'DEL',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 16:14:07');

insert into flight values(17,'AA2','Air India','PUN',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 17:27:12');

insert into flight values(18,'IG3','IndiGO','CHN',
'LKO',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 18:00:00');

insert into flight values(19,'SP4','SpiceJet','LKO',
'CHN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 18:25:00');

insert into flight values(20,'VT5','Vistara','DEL',
'GHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 19:55:00');

insert into flight values(21,'GA6','GoAir','KOL',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 20:15:00');

insert into flight values(22,'AS7','Air Aisa','DEL',
'KOL',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 22:30:00');

insert into flight values(23,'KF8','Kingfisher','KOL',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 23:14:07');

insert into flight values(24,'AA9','Air India','KOL',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 00:27:12');

insert into flight values(25,'IG10','IndiGO','MUM',
'CHN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 23:00:00');

insert into flight values(26,'SP11','SpiceJet','CHN',
'DEL',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 23:25:00');

insert into flight values(27,'VT12','Vistara','CHN',
'GHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 02:55:00');

insert into flight values(28,'GA13','GoAir','AHM',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 00:15:00');

insert into flight values(29,'AS14','Air Aisa','AHM',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 01:00:00');


insert into flight values(30,'KF1','Kingfisher','PUN',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 03:14:07');

insert into flight values(31,'AA2','Air India','MUM',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 03:27:12');

insert into flight values(32,'IG3','IndiGO','HYD',
'DEL',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 04:00:00');

insert into flight values(33,'SP4','SpiceJet','HYD',
'CHN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 05:25:00');

insert into flight values(34,'VT5','Vistara','HYD',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 06:55:00');

insert into flight values(35,'GA6','GoAir','HYD',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 07:15:00');

insert into flight values(36,'AS7','Air Aisa','MUM',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 08:30:00');

insert into flight values(37,'KF8','Kingfisher','HYD',
'AHM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 09:14:07');

insert into flight values(38,'AA9','Air India','STR',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 10:27:12');

insert into flight values(39,'IG10','IndiGO','DEL',
'KAS',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 11:00:00');

insert into flight values(40,'SP11','SpiceJet','PUN',
'KAS',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 12:25:00');

insert into flight values(41,'VT12','Vistara','MUM',
'KAS',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 13:55:00');

insert into flight values(42,'GA13','GoAir','KAS',
'MUM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 14:15:00');

insert into flight values(43,'AS14','Air Aisa','KAS',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 15:30:00');





insert into flight values(44,'KF1','Kingfisher','KAS',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 16:14:07');

insert into flight values(45,'AA2','Air India','KAS',
'AHM',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 17:27:12');

insert into flight values(46,'IG3','IndiGO','AHM',
'KAS',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 18:00:00');

insert into flight values(47,'SP4','SpiceJet','HYD',
'KAS',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 18:25:00');

insert into flight values(48,'VT5','Vistara','BHW',
'LKO',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 19:55:00');

insert into flight values(49,'GA6','GoAir','LKO',
'BHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 20:15:00');

insert into flight values(50,'AS7','Air Aisa','PUN',
'BHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 22:30:00');

insert into flight values(51,'KF8','Kingfisher','BHW',
'PUN',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 23:14:07');

insert into flight values(52,'AA9','Air India','BHW',
'HYD',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 00:27:12');

insert into flight values(53,'IG10','IndiGO','HYD',
'BHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 23:00:00');

insert into flight values(54,'SP11','SpiceJet','KAS',
'BHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 23:25:00');

insert into flight values(55,'VT12','Vistara','KAS',
'KAS',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 02:55:00');

insert into flight values(56,'GA13','GoAir','DEL',
'BHW',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 00:15:00');

insert into flight values(57,'AS14','Air Aisa','BHW',
'DEL',STR_TO_DATE('05-10-2021','%d-%m-%Y'),'2021-10-05 01:00:00');
















insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','DEL',
'LKO',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 03:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','DEL',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 03:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','DEL',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 04:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','DEL',
'BLR',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 05:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','DEL',
'CHN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 06:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','DEL',
'CHN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 07:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','DEL',
'SRT',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 08:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','DEL',
'AHM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 09:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','DEL',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 10:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','DEL',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 11:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','DEL',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 12:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','DEL',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 13:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','MUM',
'LKO',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 14:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','PUN',
'LKO',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 15:30:00');





insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','LKO',
'DEL',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 16:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','PUN',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 17:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','CHN',
'LKO',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 18:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','LKO',
'CHN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 18:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','DEL',
'GHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 19:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','KOL',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 20:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','DEL',
'KOL',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 22:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','KOL',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 23:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','KOL',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 00:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','MUM',
'CHN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 23:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','CHN',
'DEL',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 23:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','CHN',
'GHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 02:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','AHM',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 00:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','AHM',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 01:00:00');


insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','PUN',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 03:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','MUM',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 03:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','HYD',
'DEL',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 04:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','HYD',
'CHN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 05:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','HYD',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 06:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','HYD',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 07:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','MUM',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 08:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','HYD',
'AHM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 09:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','STR',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 10:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','DEL',
'KAS',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 11:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','PUN',
'KAS',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 12:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','MUM',
'KAS',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 13:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','KAS',
'MUM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 14:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','KAS',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 15:30:00');





insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','KAS',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 16:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','KAS',
'AHM',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 17:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','AHM',
'KAS',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 18:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','HYD',
'KAS',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 18:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','BHW',
'LKO',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 19:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','LKO',
'BHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 20:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','PUN',
'BHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 22:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','BHW',
'PUN',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 23:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','BHW',
'HYD',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 00:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','HYD',
'BHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 23:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','KAS',
'BHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 23:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','KAS',
'KAS',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 02:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','DEL',
'BHW',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 00:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','BHW',
'DEL',STR_TO_DATE('06-10-2021','%d-%m-%Y'),'2021-10-06 01:00:00');

#----------------------------------------------------------------



insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','DEL',
'LKO',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 03:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','DEL',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 03:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','DEL',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 04:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','DEL',
'BLR',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 05:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','DEL',
'CHN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 06:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','DEL',
'CHN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 07:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','DEL',
'SRT',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 08:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','DEL',
'AHM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 09:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','DEL',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 10:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','DEL',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 11:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','DEL',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 12:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','DEL',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 13:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','MUM',
'LKO',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 14:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','PUN',
'LKO',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 15:30:00');





insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','LKO',
'DEL',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 16:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','PUN',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 17:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','CHN',
'LKO',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 18:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','LKO',
'CHN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 18:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','DEL',
'GHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 19:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','KOL',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 20:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','DEL',
'KOL',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 22:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','KOL',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 23:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','KOL',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 00:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','MUM',
'CHN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 23:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','CHN',
'DEL',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 23:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','CHN',
'GHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 02:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','AHM',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 00:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','AHM',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 01:00:00');


insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','PUN',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 03:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','MUM',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 03:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','HYD',
'DEL',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 04:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','HYD',
'CHN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 05:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','HYD',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 06:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','HYD',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 07:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','MUM',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 08:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','HYD',
'AHM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 09:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','STR',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 10:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','DEL',
'KAS',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 11:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','PUN',
'KAS',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 12:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','MUM',
'KAS',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 13:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','KAS',
'MUM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 14:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','KAS',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 15:30:00');





insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF1','Kingfisher','KAS',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 16:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA2','Air India','KAS',
'AHM',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 17:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG3','IndiGO','AHM',
'KAS',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 18:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP4','SpiceJet','HYD',
'KAS',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 18:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT5','Vistara','BHW',
'LKO',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 19:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA6','GoAir','LKO',
'BHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 20:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS7','Air Aisa','PUN',
'BHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 22:30:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('KF8','Kingfisher','BHW',
'PUN',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 23:14:07');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AA9','Air India','BHW',
'HYD',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 00:27:12');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('IG10','IndiGO','HYD',
'BHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 23:00:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('SP11','SpiceJet','KAS',
'BHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 23:25:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('VT12','Vistara','KAS',
'KAS',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 02:55:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('GA13','GoAir','DEL',
'BHW',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 00:15:00');

insert into flight (flight_number,operating_airlines,departure_city,arrival_city,date_of_departure,departuretime)values('AS14','Air Aisa','BHW',
'DEL',STR_TO_DATE('07-10-2021','%d-%m-%Y'),'2021-10-07 01:00:00');

select * from reservation;