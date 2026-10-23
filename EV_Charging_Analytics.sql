create database EV_Charging;
use EV_Charging;

create table EV_Customers (
      Customer_id int primary key,
      Customer_name varchar(100) not null,
      City varchar(100),
      State varchar(100),
      Vehical_Model varchar(50),
      Battery_Capacity_kwh decimal(5,2),
      Veh_Reg_Date date
);
alter table EV_Customers
rename column Vehical_Model to Vehicle_Model;

create table Charging_Stations (
      Station_id int primary key,
      Station_name varchar(100),
      City varchar(100),
      State varchar(100),
      Operator varchar(50),
      Charger_Type varchar(50),
      Price_per_kwh decimal(10,2),
      Connectors int
);

create table Charging_Session (
      Session_id int primary key,
      Station_id int,
      Customer_id int,
      Session_Date date,
      Start_time time,
      Duration_Minutes int,
      Energy_kwh decimal(5,2),
      Total_Cost decimal(10,2),
      Payment_Method varchar(30),
      foreign key (Customer_id)
      references EV_Customers(Customer_id),
      foreign key (Station_id)
      references Charging_Stations(Station_id)
);

insert into EV_Customers(Customer_id,Customer_name,City,State,Vehicle_Model,Battery_Capacity_kwh,Veh_Reg_Date) value
(1, 'Kavya Raj', 'Vellore', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2025-09-22'),
(2, 'Priya Kumar', 'Kanchipuram', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-10-20'),
(3, 'Meena Ravi', 'Tirunelveli', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2023-02-11'),
(4, 'Kavya Kumar', 'Kanchipuram', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-12-19'),
(5, 'Lakshmi Raj', 'Tirunelveli', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-06-10'),
(6, 'Nithya Selvam', 'Tirunelveli', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-05-18'),
(7, 'Deepa Raj', 'Thanjavur', 'Tamil Nadu', 'MG ZS EV', 50.3, '2023-07-27'),
(8, 'Nithya Sundaram', 'Salem', 'Tamil Nadu', 'MG ZS EV', 50.3, '2024-03-23'),
(9, 'Priya Murugan', 'Thanjavur', 'Tamil Nadu', 'Citroen eC3', 29.2, '2024-03-31'),
(10, 'Prakash Ravi', 'Hosur', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-03-17'),
(11, 'Ramesh Balan', 'Dindigul', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2025-04-19'),
(12, 'Arun Balan', 'Salem', 'Tamil Nadu', 'Citroen eC3', 29.2, '2024-07-17'),
(13, 'Meena Kumar', 'Kanchipuram', 'Tamil Nadu', 'MG ZS EV', 50.3, '2024-03-08'),
(14, 'Suresh Balan', 'Erode', 'Tamil Nadu', 'MG ZS EV', 50.3, '2023-09-15'),
(15, 'Karthik Ravi', 'Coimbatore', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-01-31'),
(16, 'Arun Ravi', 'Namakkal', 'Tamil Nadu', 'Tata Punch EV', 35, '2025-04-16'),
(17, 'Deepa Kumar', 'Tiruchirappalli', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-02-22'),
(18, 'Ramesh Kumar', 'Salem', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-02-29'),
(19, 'Lakshmi Kumar', 'Vellore', 'Tamil Nadu', 'MG ZS EV', 50.3, '2024-09-07'),
(20, 'Deepa Ravi', 'Vellore', 'Tamil Nadu', 'Tata Punch EV', 35, '2023-08-06'),
(21, 'Anitha Krishnan', 'Tirunelveli', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-12-27'),
(22, 'Vignesh Ravi', 'Hosur', 'Tamil Nadu', 'Tata Tiago EV', 24, '2023-06-02'),
(23, 'Suresh Selvam', 'Salem', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2025-06-02'),
(24, 'Vignesh Balan', 'Chennai', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-04-29'),
(25, 'Nithya Murugan', 'Chennai', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2023-07-17'),
(26, 'Prakash Raj', 'Tiruppur', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-06-16'),
(27, 'Vignesh Ravi', 'Namakkal', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-08-16'),
(28, 'Nithya Ravi', 'Salem', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2025-02-24'),
(29, 'Karthik Ravi', 'Erode', 'Tamil Nadu', 'MG ZS EV', 50.3, '2023-06-11'),
(30, 'Anitha Kumar', 'Madurai', 'Tamil Nadu', 'Citroen eC3', 29.2, '2024-11-17'),
(31, 'Manoj Murugan', 'Madurai', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-11-23'),
(32, 'Priya Kumar', 'Kanchipuram', 'Tamil Nadu', 'Citroen eC3', 29.2, '2024-03-08'),
(33, 'Nithya Kumar', 'Dindigul', 'Tamil Nadu', 'MG ZS EV', 50.3, '2025-06-17'),
(34, 'Deepa Ravi', 'Tirunelveli', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-11-25'),
(35, 'Manoj Krishnan', 'Vellore', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-03-06'),
(36, 'Ramesh Kumar', 'Coimbatore', 'Tamil Nadu', 'MG ZS EV', 50.3, '2023-10-27'),
(37, 'Priya Murugan', 'Thanjavur', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-07-06'),
(38, 'Ramesh Raj', 'Chennai', 'Tamil Nadu', 'Tata Punch EV', 35, '2023-11-10'),
(39, 'Anitha Raj', 'Dindigul', 'Tamil Nadu', 'Tata Punch EV', 35, '2024-01-20'),
(40, 'Vignesh Selvam', 'Thanjavur', 'Tamil Nadu', 'Citroen eC3', 29.2, '2025-07-10'),
(41, 'Ramesh Raj', 'Dindigul', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-02-01'),
(42, 'Anitha Kumar', 'Hosur', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-12-28'),
(43, 'Arun Sundaram', 'Nagercoil', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2023-11-14'),
(44, 'Karthik Raj', 'Thanjavur', 'Tamil Nadu', 'Citroen eC3', 29.2, '2025-03-29'),
(45, 'Anitha Krishnan', 'Hosur', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-03-11'),
(46, 'Meena Sundaram', 'Hosur', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-06-09'),
(47, 'Anitha Ravi', 'Tiruchirappalli', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-10-21'),
(48, 'Vignesh Krishnan', 'Tirunelveli', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-01-14'),
(49, 'Divya Sundaram', 'Kanchipuram', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-06-27'),
(50, 'Divya Kumar', 'Salem', 'Tamil Nadu', 'Tata Punch EV', 35, '2023-06-27'),
(51, 'Prakash Ravi', 'Vellore', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-10-03'),
(52, 'Arun Selvam', 'Thanjavur', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-04-17'),
(53, 'Lakshmi Murugan', 'Tiruppur', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2024-12-03'),
(54, 'Ramesh Selvam', 'Coimbatore', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-02-13'),
(55, 'Manoj Balan', 'Chennai', 'Tamil Nadu', 'MG ZS EV', 50.3, '2025-05-30'),
(56, 'Nithya Ravi', 'Dindigul', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2025-07-21'),
(57, 'Nithya Raj', 'Tirunelveli', 'Tamil Nadu', 'Tata Punch EV', 35, '2023-06-30'),
(58, 'Manoj Murugan', 'Madurai', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2023-04-07'),
(59, 'Deepa Balan', 'Vellore', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2025-04-05'),
(60, 'Arun Selvam', 'Thanjavur', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-10-26'),
(61, 'Karthik Kumar', 'Salem', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-02-16'),
(62, 'Anitha Sundaram', 'Salem', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-07-06'),
(63, 'Arun Sundaram', 'Chennai', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-01-03'),
(64, 'Ramesh Krishnan', 'Namakkal', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-03-10'),
(65, 'Priya Balan', 'Erode', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-05-03'),
(66, 'Prakash Raj', 'Madurai', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-08-11'),
(67, 'Nithya Balan', 'Namakkal', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2025-05-14'),
(68, 'Suresh Sundaram', 'Tirunelveli', 'Tamil Nadu', 'MG ZS EV', 50.3, '2023-06-12'),
(69, 'Nithya Murugan', 'Erode', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-08-11'),
(70, 'Deepa Kumar', 'Dindigul', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-04-15'),
(71, 'Saravanan Sundaram', 'Vellore', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2023-12-17'),
(72, 'Divya Krishnan', 'Thanjavur', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-07-31'),
(73, 'Nithya Raj', 'Tiruchirappalli', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2025-09-04'),
(74, 'Anitha Krishnan', 'Namakkal', 'Tamil Nadu', 'Citroen eC3', 29.2, '2023-05-22'),
(75, 'Saravanan Ravi', 'Nagercoil', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-04-05'),
(76, 'Karthik Selvam', 'Vellore', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-10-12'),
(77, 'Lakshmi Ravi', 'Erode', 'Tamil Nadu', 'Tata Nexon EV', 40.5, '2025-09-25'),
(78, 'Nithya Krishnan', 'Nagercoil', 'Tamil Nadu', 'Tata Punch EV', 35, '2024-09-22'),
(79, 'Kavya Balan', 'Chennai', 'Tamil Nadu', 'Tata Tiago EV', 24, '2023-02-06'),
(80, 'Divya Krishnan', 'Namakkal', 'Tamil Nadu', 'MG ZS EV', 50.3, '2024-12-01'),
(81, 'Nithya Selvam', 'Tiruchirappalli', 'Tamil Nadu', 'Tata Punch EV', 35, '2024-07-13'),
(82, 'Priya Ravi', 'Tiruppur', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-10-17'),
(83, 'Deepa Krishnan', 'Dindigul', 'Tamil Nadu', 'Tata Tiago EV', 24, '2024-08-23'),
(84, 'Meena Ravi', 'Tiruppur', 'Tamil Nadu', 'Tata Tiago EV', 24, '2025-08-29'),
(85, 'Kavya Kumar', 'Namakkal', 'Tamil Nadu', 'Tata Punch EV', 35, '2023-04-06'),
(86, 'Saravanan Kumar', 'Kanchipuram', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2023-11-27'),
(87, 'Meena Murugan', 'Vellore', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-09-12'),
(88, 'Deepa Murugan', 'Erode', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-08-23'),
(89, 'Vignesh Raj', 'Chennai', 'Tamil Nadu', 'Tata Punch EV', 35, '2025-06-02'),
(90, 'Ramesh Ravi', 'Tiruchirappalli', 'Tamil Nadu', 'MG ZS EV', 50.3, '2024-07-11'),
(91, 'Ramesh Ravi', 'Chennai', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2023-08-20'),
(92, 'Anitha Krishnan', 'Madurai', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-06-24'),
(93, 'Nithya Krishnan', 'Thanjavur', 'Tamil Nadu', 'Citroen eC3', 29.2, '2024-06-29'),
(94, 'Saravanan Kumar', 'Tiruchirappalli', 'Tamil Nadu', 'Tata Tiago EV', 24, '2023-07-16'),
(95, 'Saravanan Ravi', 'Madurai', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2024-12-12'),
(96, 'Divya Ravi', 'Tiruppur', 'Tamil Nadu', 'MG ZS EV', 50.3, '2023-04-30'),
(97, 'Priya Balan', 'Coimbatore', 'Tamil Nadu', 'BYD Atto 3', 60.5, '2023-08-20'),
(98, 'Ramesh Murugan', 'Erode', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-01-18'),
(99, 'Anitha Balan', 'Thanjavur', 'Tamil Nadu', 'Mahindra XUV400', 39.4, '2024-09-17'),
(100, 'Prakash Krishnan', 'Coimbatore', 'Tamil Nadu', 'Citroen eC3', 29.2, '2024-11-22'); 

insert into Charging_Stations(Station_id, Station_name, City, State, Operator, Charger_Type, Price_per_kwh, Connectors) values
(1, 'Chennai EV Point 001', 'Chennai', 'Tamil Nadu', 'Green Volt TN', 'AC Slow', 9, 6),
(2, 'Coimbatore EV Point 002', 'Coimbatore', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 2),
(3, 'Salem EV Point 003', 'Salem', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 3),
(4, 'Namakkal EV Point 004', 'Namakkal', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 6),
(5, 'Madurai EV Point 005', 'Madurai', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 3),
(6, 'Tiruchirappalli EV Point 006', 'Tiruchirappalli', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 3),
(7, 'Erode EV Point 007', 'Erode', 'Tamil Nadu', 'Green Volt TN', 'DC Rapid', 19, 2),
(8, 'Tirunelveli EV Point 008', 'Tirunelveli', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 2),
(9, 'Vellore EV Point 009', 'Vellore', 'Tamil Nadu', 'Green Volt TN', 'DC Fast', 15, 4),
(10, 'Hosur EV Point 010', 'Hosur', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 3),
(11, 'Tiruppur EV Point 011', 'Tiruppur', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 2),
(12, 'Thanjavur EV Point 012', 'Thanjavur', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 6),
(13, 'Dindigul EV Point 013', 'Dindigul', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 6),
(14, 'Kanchipuram EV Point 014', 'Kanchipuram', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 2),
(15, 'Nagercoil EV Point 015', 'Nagercoil', 'Tamil Nadu', 'TN EV Connect', 'DC Rapid', 19, 3),
(16, 'Chennai EV Point 016', 'Chennai', 'Tamil Nadu', 'TN EV Connect', 'DC Rapid', 19, 6),
(17, 'Coimbatore EV Point 017', 'Coimbatore', 'Tamil Nadu', 'Green Volt TN', 'DC Rapid', 19, 6),
(18, 'Salem EV Point 018', 'Salem', 'Tamil Nadu', 'Southern EV Hub', 'AC Slow', 9, 3),
(19, 'Namakkal EV Point 019', 'Namakkal', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 3),
(20, 'Madurai EV Point 020', 'Madurai', 'Tamil Nadu', 'Green Volt TN', 'DC Fast', 15, 3),
(21, 'Tiruchirappalli EV Point 021', 'Tiruchirappalli', 'Tamil Nadu', 'Charge Tamil', 'AC Slow', 9, 2),
(22, 'Erode EV Point 022', 'Erode', 'Tamil Nadu', 'Southern EV Hub', 'AC Slow', 9, 4),
(23, 'Tirunelveli EV Point 023', 'Tirunelveli', 'Tamil Nadu', 'Southern EV Hub', 'AC Slow', 9, 6),
(24, 'Vellore EV Point 024', 'Vellore', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 4),
(25, 'Hosur EV Point 025', 'Hosur', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 4),
(26, 'Tiruppur EV Point 026', 'Tiruppur', 'Tamil Nadu', 'Green Volt TN', 'AC Slow', 9, 6),
(27, 'Thanjavur EV Point 027', 'Thanjavur', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 6),
(28, 'Dindigul EV Point 028', 'Dindigul', 'Tamil Nadu', 'Green Volt TN', 'DC Fast', 15, 3),
(29, 'Kanchipuram EV Point 029', 'Kanchipuram', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 6),
(30, 'Nagercoil EV Point 030', 'Nagercoil', 'Tamil Nadu', 'TN EV Connect', 'DC Rapid', 19, 6),
(31, 'Chennai EV Point 031', 'Chennai', 'Tamil Nadu', 'Eco Plug TN', 'DC Fast', 15, 2),
(32, 'Coimbatore EV Point 032', 'Coimbatore', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 6),
(33, 'Salem EV Point 033', 'Salem', 'Tamil Nadu', 'Charge Tamil', 'DC Fast', 15, 2),
(34, 'Namakkal EV Point 034', 'Namakkal', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 2),
(35, 'Madurai EV Point 035', 'Madurai', 'Tamil Nadu', 'TN EV Connect', 'DC Rapid', 19, 3),
(36, 'Tiruchirappalli EV Point 036', 'Tiruchirappalli', 'Tamil Nadu', 'Eco Plug TN', 'DC Rapid', 19, 3),
(37, 'Erode EV Point 037', 'Erode', 'Tamil Nadu', 'Charge Tamil', 'DC Fast', 15, 4),
(38, 'Tirunelveli EV Point 038', 'Tirunelveli', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 3),
(39, 'Vellore EV Point 039', 'Vellore', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 2),
(40, 'Hosur EV Point 040', 'Hosur', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 4),
(41, 'Tiruppur EV Point 041', 'Tiruppur', 'Tamil Nadu', 'Eco Plug TN', 'DC Fast', 15, 4),
(42, 'Thanjavur EV Point 042', 'Thanjavur', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 2),
(43, 'Dindigul EV Point 043', 'Dindigul', 'Tamil Nadu', 'Charge Tamil', 'AC Slow', 9, 4),
(44, 'Kanchipuram EV Point 044', 'Kanchipuram', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 3),
(45, 'Nagercoil EV Point 045', 'Nagercoil', 'Tamil Nadu', 'TN EV Connect', 'DC Rapid', 19, 3),
(46, 'Chennai EV Point 046', 'Chennai', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 3),
(47, 'Coimbatore EV Point 047', 'Coimbatore', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 3),
(48, 'Salem EV Point 048', 'Salem', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 2),
(49, 'Namakkal EV Point 049', 'Namakkal', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 6),
(50, 'Madurai EV Point 050', 'Madurai', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 4),
(51, 'Tiruchirappalli EV Point 051', 'Tiruchirappalli', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 3),
(52, 'Erode EV Point 052', 'Erode', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 6),
(53, 'Tirunelveli EV Point 053', 'Tirunelveli', 'Tamil Nadu', 'Green Volt TN', 'DC Fast', 15, 6),
(54, 'Vellore EV Point 054', 'Vellore', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 6),
(55, 'Hosur EV Point 055', 'Hosur', 'Tamil Nadu', 'Charge Tamil', 'DC Rapid', 19, 2),
(56, 'Tiruppur EV Point 056', 'Tiruppur', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 2),
(57, 'Thanjavur EV Point 057', 'Thanjavur', 'Tamil Nadu', 'Eco Plug TN', 'DC Rapid', 19, 2),
(58, 'Dindigul EV Point 058', 'Dindigul', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 4),
(59, 'Kanchipuram EV Point 059', 'Kanchipuram', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 2),
(60, 'Nagercoil EV Point 060', 'Nagercoil', 'Tamil Nadu', 'TN EV Connect', 'DC Fast', 15, 3),
(61, 'Chennai EV Point 061', 'Chennai', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 2),
(62, 'Coimbatore EV Point 062', 'Coimbatore', 'Tamil Nadu', 'Southern EV Hub', 'DC Fast', 15, 3),
(63, 'Salem EV Point 063', 'Salem', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 2),
(64, 'Namakkal EV Point 064', 'Namakkal', 'Tamil Nadu', 'Charge Tamil', 'DC Fast', 15, 3),
(65, 'Madurai EV Point 065', 'Madurai', 'Tamil Nadu', 'Green Volt TN', 'AC Slow', 9, 6),
(66, 'Tiruchirappalli EV Point 066', 'Tiruchirappalli', 'Tamil Nadu', 'Green Volt TN', 'DC Rapid', 19, 3),
(67, 'Erode EV Point 067', 'Erode', 'Tamil Nadu', 'Eco Plug TN', 'DC Rapid', 19, 2),
(68, 'Tirunelveli EV Point 068', 'Tirunelveli', 'Tamil Nadu', 'Eco Plug TN', 'AC Slow', 9, 3),
(69, 'Vellore EV Point 069', 'Vellore', 'Tamil Nadu', 'Southern EV Hub', 'DC Rapid', 19, 4),
(70, 'Hosur EV Point 070', 'Hosur', 'Tamil Nadu', 'TN EV Connect', 'AC Slow', 9, 6);

insert into Charging_Session(Session_id, Station_id, Customer_id, Session_Date, Start_time,Duration_Minutes, Energy_kwh, Total_Cost, Payment_Method)
values
(1, 15, 1, '2026-07-28', '10:15:00', 45, 43.95, 835.05, 'Card'),
(2, 4, 2, '2025-07-01', '16:30:00', 45, 5.99, 113.81, 'Card'),
(3, 36, 3, '2025-10-01', '09:30:00', 25, 36.49, 693.31, 'UPI'),
(4, 32, 4, '2026-04-27', '20:25:00', 30, 12.98, 116.82, 'Wallet'),
(5, 29, 5, '2025-08-22', '12:30:00', 30, 5.95, 89.25, 'Wallet'),
(6, 18, 6, '2025-10-13', '14:25:00', 20, 43.68, 393.12, 'Cash'),
(7, 14, 7, '2026-07-04', '09:20:00', 40, 42.57, 638.55, 'Card'),
(8, 70, 8, '2026-08-18', '19:25:00', 35, 6.53, 58.77, 'Wallet'),
(9, 12, 9, '2026-03-23', '09:30:00', 75, 44.37, 843.03, 'Card'),
(10, 55, 10, '2025-09-18', '06:40:00', 15, 33.35, 633.65, 'Card'),
(11, 5, 11, '2026-01-08', '16:45:00', 45, 7.80, 148.20, 'Wallet'),
(12, 4, 12, '2025-05-08', '22:20:00', 120, 41.00, 779.00, 'Cash'),
(13, 12, 13, '2025-12-01', '10:15:00', 45, 32.89, 624.91, 'Cash'),
(14, 28, 14, '2026-01-24', '11:45:00', 90, 34.93, 523.95, 'Wallet'),
(15, 30, 15, '2026-02-20', '15:20:00', 60, 38.35, 728.65, 'Card'),
(16, 65, 16, '2026-03-17', '16:35:00', 75, 29.27, 263.43, 'Cash'),
(17, 4, 17, '2026-03-29', '21:55:00', 90, 13.55, 257.45, 'Card'),
(18, 26, 18, '2025-03-28', '16:05:00', 35, 25.62, 230.58, 'Card'),
(19, 70, 19, '2025-11-14', '10:00:00', 30, 37.26, 335.34, 'UPI'),
(20, 54, 20, '2025-09-08', '08:35:00', 50, 29.45, 441.75, 'Cash'),
(21, 29, 21, '2026-10-07', '18:35:00', 75, 12.78, 191.70, 'Cash'),
(22, 58, 22, '2025-09-07', '06:05:00', 25, 31.24, 468.60, 'Cash'),
(23, 36, 23, '2025-08-13', '22:35:00', 25, 37.16, 706.04, 'UPI'),
(24, 1, 24, '2026-07-25', '09:35:00', 30, 41.70, 375.30, 'Card'),
(25, 21, 25, '2026-04-21', '16:35:00', 90, 26.25, 236.25, 'Cash'),
(26, 55, 26, '2026-07-16', '21:35:00', 50, 40.89, 776.91, 'Wallet'),
(27, 44, 27, '2025-09-11', '22:35:00', 90, 16.09, 305.71, 'Card'),
(28, 36, 28, '2025-10-09', '15:15:00', 50, 8.10, 153.90, 'Wallet'),
(29, 20, 29, '2025-12-10', '08:10:00', 40, 40.72, 610.80, 'Card'),
(30, 28, 30, '2025-08-25', '12:05:00', 45, 32.76, 491.40, 'Cash'),
(31, 44, 31, '2026-02-22', '19:00:00', 40, 26.70, 507.30, 'Card'),
(32, 14, 32, '2026-03-07', '06:45:00', 45, 41.19, 617.85, 'Cash'),
(33, 12, 33, '2026-05-04', '15:30:00', 15, 42.71, 811.49, 'Cash'),
(34, 49, 34, '2026-07-06', '13:35:00', 120, 34.39, 309.51, 'Card'),
(35, 13, 35, '2025-10-07', '18:25:00', 45, 24.43, 219.87, 'Cash'),
(36, 46, 36, '2025-06-19', '06:30:00', 50, 41.78, 376.02, 'UPI'),
(37, 45, 37, '2025-03-27', '20:10:00', 90, 22.14, 420.66, 'UPI'),
(38, 34, 38, '2025-09-24', '20:25:00', 45, 18.09, 162.81, 'Wallet'),
(39, 6, 39, '2026-01-24', '19:20:00', 35, 35.08, 526.20, 'UPI'),
(40, 59, 40, '2026-04-27', '07:25:00', 15, 34.96, 314.64, 'Card'),
(41, 69, 41, '2025-03-12', '06:15:00', 90, 6.61, 125.59, 'Card'),
(42, 16, 42, '2025-01-21', '10:35:00', 75, 11.10, 210.90, 'UPI'),
(43, 49, 43, '2026-08-01', '14:25:00', 30, 23.60, 212.40, 'Card'),
(44, 11, 44, '2026-09-13', '09:10:00', 75, 43.55, 391.95, 'Wallet'),
(45, 38, 45, '2025-04-21', '15:45:00', 75, 6.03, 54.27, 'Cash'),
(46, 47, 46, '2026-02-11', '13:05:00', 120, 12.93, 193.95, 'Wallet'),
(47, 25, 47, '2026-09-07', '07:25:00', 20, 36.85, 331.65, 'Cash'),
(48, 9, 48, '2026-01-15', '16:00:00', 20, 25.24, 378.60, 'Cash'),
(49, 6, 49, '2026-05-17', '17:50:00', 20, 22.34, 335.10, 'Cash'),
(50, 30, 50, '2025-06-06', '22:50:00', 45, 12.05, 228.95, 'Wallet'),
(51, 38, 51, '2026-09-23', '20:30:00', 60, 35.99, 323.91, 'Wallet'),
(52, 11, 52, '2025-11-27', '08:20:00', 30, 38.23, 344.07, 'Cash'),
(53, 30, 53, '2025-09-07', '18:25:00', 50, 27.79, 528.01, 'UPI'),
(54, 13, 54, '2026-05-22', '12:25:00', 40, 12.27, 110.43, 'Wallet'),
(55, 49, 55, '2025-12-15', '14:40:00', 35, 40.21, 361.89, 'UPI'),
(56, 36, 56, '2026-06-14', '19:35:00', 30, 8.42, 159.98, 'Card'),
(57, 59, 57, '2026-05-03', '20:00:00', 90, 33.47, 301.23, 'UPI'),
(58, 47, 58, '2025-10-29', '13:20:00', 30, 21.18, 317.70, 'Wallet'),
(59, 21, 59, '2026-04-30', '19:55:00', 60, 26.24, 236.16, 'Wallet'),
(60, 48, 60, '2025-12-27', '15:20:00', 120, 23.15, 208.35, 'Card'),
(61, 46, 61, '2025-05-04', '09:55:00', 120, 12.70, 114.30, 'Card'),
(62, 27, 62, '2025-07-16', '14:55:00', 30, 34.54, 656.26, 'Wallet'),
(63, 35, 63, '2025-04-13', '17:10:00', 30, 16.85, 320.15, 'Wallet'),
(64, 10, 64, '2025-01-15', '14:00:00', 120, 26.37, 501.03, 'UPI'),
(65, 22, 65, '2026-07-21', '10:50:00', 35, 32.90, 296.10, 'Cash'),
(66, 69, 66, '2025-04-16', '21:35:00', 15, 27.96, 531.24, 'Cash'),
(67, 32, 67, '2025-12-15', '14:35:00', 25, 43.62, 392.58, 'UPI'),
(68, 21, 68, '2025-03-08', '07:10:00', 45, 24.67, 222.03, 'Card'),
(69, 60, 69, '2026-07-31', '13:05:00', 35, 8.41, 126.15, 'Cash'),
(70, 49, 70, '2026-09-13', '13:40:00', 75, 36.63, 329.67, 'Cash'),
(71, 35, 71, '2026-04-07', '19:20:00', 50, 16.89, 320.91, 'UPI'),
(72, 29, 72, '2026-09-17', '12:50:00', 120, 8.97, 134.55, 'Card'),
(73, 42, 73, '2025-09-28', '13:10:00', 90, 8.25, 156.75, 'UPI'),
(74, 8, 74, '2025-06-10', '21:20:00', 15, 21.34, 405.46, 'UPI'),
(75, 30, 75, '2025-08-26', '20:05:00', 35, 33.28, 632.32, 'Card'),
(76, 5, 76, '2025-09-28', '12:30:00', 90, 28.59, 543.21, 'UPI'),
(77, 41, 77, '2026-07-12', '14:10:00', 30, 30.91, 463.65, 'UPI'),
(78, 52, 78, '2025-03-03', '15:35:00', 25, 36.71, 330.39, 'UPI'),
(79, 35, 79, '2026-04-25', '18:20:00', 120, 17.16, 326.04, 'Cash'),
(80, 9, 80, '2026-03-25', '19:55:00', 20, 28.92, 433.80, 'Wallet'),
(81, 28, 81, '2026-09-11', '13:50:00', 35, 6.03, 90.45, 'UPI'),
(82, 41, 82, '2025-10-03', '11:35:00', 75, 6.61, 99.15, 'Cash'),
(83, 28, 83, '2025-10-12', '19:50:00', 25, 44.88, 673.20, 'Cash'),
(84, 64, 84, '2025-04-04', '16:25:00', 50, 18.92, 283.80, 'UPI'),
(85, 51, 85, '2025-06-14', '21:20:00', 40, 21.47, 193.23, 'Cash'),
(86, 59, 86, '2026-07-18', '16:20:00', 15, 23.19, 208.71, 'Wallet'),
(87, 19, 87, '2025-04-29', '06:50:00', 45, 39.60, 752.40, 'Cash'),
(88, 34, 88, '2026-02-28', '17:45:00', 15, 12.50, 112.50, 'Cash'),
(89, 18, 89, '2026-10-03', '12:20:00', 50, 35.40, 318.60, 'Card'),
(90, 32, 90, '2025-10-22', '21:05:00', 50, 40.23, 362.07, 'UPI'),
(91, 69, 91, '2026-10-08', '11:20:00', 75, 36.97, 702.43, 'UPI'),
(92, 34, 92, '2026-07-20', '09:35:00', 45, 8.73, 78.57, 'UPI'),
(93, 55, 93, '2025-06-07', '15:40:00', 50, 42.31, 803.89, 'Wallet'),
(94, 52, 94, '2026-03-02', '13:35:00', 50, 44.21, 397.89, 'Card'),
(95, 47, 95, '2026-01-28', '22:55:00', 30, 41.87, 628.05, 'Card'),
(96, 29, 96, '2025-03-13', '19:25:00', 35, 35.91, 538.65, 'Wallet'),
(97, 18, 97, '2025-01-03', '21:10:00', 35, 34.04, 306.36, 'Cash'),
(98, 66, 98, '2026-07-06', '18:35:00', 50, 18.80, 357.20, 'Wallet'),
(99, 64, 99, '2025-07-13', '18:15:00', 120, 14.55, 218.25, 'Cash'),
(100, 12, 100, '2025-02-14', '18:30:00', 40, 34.79, 661.01, 'Card'),
(101, 47, 15, '2026-05-23', '16:05:00', 15, 10.05, 150.75, 'Cash'),
(102, 44, 81, '2025-04-13', '06:55:00', 60, 41.42, 786.98, 'Card'),
(103, 52, 88, '2026-02-24', '08:35:00', 90, 43.80, 394.20, 'Wallet'),
(104, 42, 77, '2025-12-13', '08:25:00', 75, 32.71, 621.49, 'Cash'),
(105, 16, 50, '2025-11-21', '21:40:00', 90, 33.75, 641.25, 'UPI'),
(106, 44, 77, '2026-09-25', '15:15:00', 20, 14.39, 273.41, 'UPI'),
(107, 36, 68, '2026-03-21', '09:35:00', 20, 35.41, 672.79, 'Card'),
(108, 40, 71, '2025-11-03', '07:20:00', 15, 6.84, 129.96, 'Wallet'),
(109, 58, 88, '2026-01-19', '22:30:00', 45, 10.82, 162.30, 'Card'),
(110, 59, 88, '2025-06-24', '18:45:00', 25, 8.16, 73.44, 'Card'),
(111, 69, 97, '2026-05-25', '20:50:00', 75, 10.72, 203.68, 'Wallet'),
(112, 2, 99, '2026-04-16', '20:20:00', 35, 31.67, 475.05, 'Card'),
(113, 59, 15, '2025-03-17', '15:50:00', 50, 42.81, 385.29, 'Cash'),
(114, 31, 56, '2025-09-14', '12:30:00', 50, 38.81, 582.15, 'Cash'),
(115, 35, 59, '2025-04-20', '17:45:00', 30, 20.25, 384.75, 'Wallet'),
(116, 70, 93, '2025-10-30', '18:20:00', 15, 44.12, 397.08, 'UPI'),
(117, 43, 65, '2026-08-03', '07:45:00', 90, 36.13, 325.17, 'Cash'),
(118, 44, 65, '2025-10-21', '17:15:00', 30, 29.28, 556.32, 'Card'),
(119, 61, 81, '2026-09-28', '10:50:00', 35, 32.11, 288.99, 'UPI'),
(120, 63, 82, '2026-10-05', '20:00:00', 90, 6.58, 59.22, 'Wallet'),
(121, 65, 78, '2025-05-15', '16:55:00', 20, 41.39, 372.51, 'Cash'),
(122, 26, 20, '2025-06-29', '17:40:00', 30, 10.29, 92.61, 'Wallet'),
(123, 48, 98, '2025-06-18', '21:20:00', 35, 41.56, 374.04, 'Wallet'),
(124, 21, 70, '2025-04-28', '10:15:00', 50, 43.52, 391.68, 'Cash'),
(125, 68, 1, '2026-07-25', '18:00:00', 40, 8.61, 77.49, 'Wallet'),
(126, 42, 63, '2026-07-04', '14:45:00', 20, 23.19, 440.61, 'Cash'),
(127, 3, 15, '2026-10-16', '13:35:00', 40, 9.33, 83.97, 'UPI'),
(128, 47, 40, '2026-09-27', '13:50:00', 60, 18.12, 271.80, 'UPI'),
(129, 31, 8, '2026-10-13', '15:50:00', 50, 41.38, 620.70, 'Cash'),
(130, 31, 73, '2025-04-30', '07:20:00', 25, 6.81, 102.15, 'Cash'),
(131, 11, 11, '2025-04-29', '10:30:00', 20, 14.39, 129.51, 'Cash'),
(132, 63, 9, '2026-01-15', '19:45:00', 90, 42.98, 386.82, 'Card'),
(133, 69, 99, '2026-03-01', '21:45:00', 90, 8.96, 170.24, 'Cash'),
(134, 17, 17, '2025-10-14', '12:35:00', 15, 32.61, 619.59, 'Cash'),
(135, 61, 71, '2025-08-30', '17:40:00', 40, 8.97, 80.73, 'Wallet'),
(136, 22, 34, '2025-03-04', '09:35:00', 45, 16.04, 144.36, 'UPI'),
(137, 68, 78, '2025-08-06', '06:00:00', 90, 30.58, 275.22, 'Wallet'),
(138, 55, 28, '2025-09-07', '12:05:00', 25, 36.48, 693.12, 'Card'),
(139, 70, 97, '2026-08-24', '13:25:00', 30, 37.52, 337.68, 'Card'),
(140, 26, 92, '2026-09-03', '10:10:00', 15, 16.09, 144.81, 'Wallet'),
(141, 40, 52, '2025-06-28', '06:10:00', 20, 31.44, 597.36, 'UPI'),
(142, 48, 57, '2026-01-02', '06:10:00', 30, 28.55, 256.95, 'Wallet'),
(143, 67, 58, '2025-02-23', '22:05:00', 25, 34.67, 658.73, 'UPI'),
(144, 16, 32, '2026-05-03', '22:45:00', 50, 36.12, 686.28, 'UPI'),
(145, 29, 9, '2026-04-08', '07:55:00', 60, 13.86, 207.90, 'Wallet'),
(146, 44, 3, '2026-04-15', '07:35:00', 90, 43.56, 827.64, 'Cash'),
(147, 30, 76, '2026-03-13', '20:05:00', 90, 9.32, 177.08, 'UPI'),
(148, 29, 1, '2025-11-26', '10:20:00', 75, 10.93, 163.95, 'Wallet'),
(149, 10, 91, '2026-01-26', '20:40:00', 75, 26.22, 498.18, 'Cash'),
(150, 8, 30, '2025-04-12', '12:30:00', 120, 9.58, 182.02, 'Cash'),
(151, 9, 5, '2025-08-22', '20:30:00', 45, 18.56, 278.40, 'Cash'),
(152, 43, 10, '2025-04-08', '14:25:00', 40, 22.07, 198.63, 'Card'),
(153, 66, 31, '2026-05-01', '08:05:00', 20, 8.65, 164.35, 'Cash'),
(154, 36, 86, '2025-04-09', '10:40:00', 120, 34.55, 656.45, 'UPI'),
(155, 63, 28, '2026-08-24', '09:30:00', 60, 27.47, 247.23, 'Wallet'),
(156, 70, 17, '2026-03-10', '15:45:00', 120, 7.06, 63.54, 'Wallet'),
(157, 61, 32, '2025-12-27', '12:10:00', 20, 28.12, 253.08, 'Cash'),
(158, 61, 53, '2025-08-18', '17:05:00', 20, 19.00, 171.00, 'Wallet'),
(159, 25, 13, '2026-08-11', '06:45:00', 30, 37.29, 335.61, 'Wallet'),
(160, 13, 85, '2025-01-30', '15:25:00', 25, 15.93, 143.37, 'Wallet'),
(161, 56, 46, '2025-01-07', '18:05:00', 25, 39.79, 358.11, 'Card'),
(162, 55, 53, '2026-10-11', '22:15:00', 15, 8.67, 164.73, 'Cash'),
(163, 60, 94, '2026-03-06', '17:20:00', 50, 18.64, 279.60, 'Wallet'),
(164, 7, 87, '2026-08-05', '07:10:00', 75, 8.40, 159.60, 'Card'),
(165, 13, 8, '2026-09-25', '14:35:00', 15, 31.96, 287.64, 'Cash'),
(166, 52, 94, '2026-05-13', '14:15:00', 75, 22.68, 204.12, 'UPI'),
(167, 44, 14, '2025-12-20', '21:40:00', 45, 9.44, 179.36, 'Wallet'),
(168, 32, 25, '2025-02-16', '07:00:00', 30, 20.81, 187.29, 'Card'),
(169, 25, 69, '2025-11-05', '14:20:00', 30, 35.69, 321.21, 'Wallet'),
(170, 58, 18, '2025-05-03', '19:10:00', 15, 24.90, 373.50, 'Card'),
(171, 55, 24, '2026-01-25', '22:40:00', 60, 33.15, 629.85, 'Wallet'),
(172, 36, 60, '2025-03-15', '07:30:00', 45, 39.47, 749.93, 'UPI'),
(173, 32, 10, '2026-04-16', '19:45:00', 20, 39.48, 355.32, 'Cash'),
(174, 57, 71, '2026-03-04', '06:25:00', 35, 9.61, 182.59, 'Card'),
(175, 13, 7, '2026-09-25', '17:05:00', 50, 38.28, 344.52, 'Cash'),
(176, 70, 2, '2025-04-19', '18:40:00', 30, 22.43, 201.87, 'UPI'),
(177, 12, 97, '2026-02-10', '13:25:00', 35, 34.83, 661.77, 'Card'),
(178, 31, 22, '2025-03-20', '22:40:00', 60, 30.33, 454.95, 'Card'),
(179, 53, 63, '2025-12-24', '10:15:00', 40, 34.10, 511.50, 'UPI'),
(180, 62, 28, '2025-05-30', '10:50:00', 35, 12.89, 193.35, 'UPI'),
(181, 52, 8, '2025-07-01', '20:50:00', 90, 24.76, 222.84, 'Wallet'),
(182, 22, 49, '2026-10-05', '08:35:00', 40, 11.04, 99.36, 'Cash'),
(183, 1, 50, '2026-10-09', '07:25:00', 35, 36.85, 331.65, 'UPI'),
(184, 34, 59, '2025-11-14', '07:25:00', 50, 23.08, 207.72, 'Wallet'),
(185, 37, 55, '2025-03-20', '08:45:00', 90, 39.57, 593.55, 'Cash'),
(186, 63, 20, '2026-04-19', '07:35:00', 75, 27.17, 244.53, 'Card'),
(187, 25, 38, '2025-11-26', '10:00:00', 75, 24.03, 216.27, 'Cash'),
(188, 28, 8, '2025-04-16', '08:40:00', 40, 44.30, 664.50, 'Card'),
(189, 70, 8, '2025-02-10', '20:40:00', 30, 33.30, 299.70, 'Card'),
(190, 41, 8, '2026-01-08', '18:30:00', 40, 41.72, 625.80, 'Wallet'),
(191, 7, 75, '2026-09-05', '16:05:00', 15, 36.57, 694.83, 'Wallet'),
(192, 62, 65, '2025-04-07', '15:20:00', 60, 32.14, 482.10, 'Card'),
(193, 68, 21, '2025-12-08', '10:25:00', 20, 28.31, 254.79, 'Wallet'),
(194, 8, 66, '2026-02-06', '08:20:00', 25, 28.80, 547.20, 'Cash'),
(195, 11, 24, '2025-12-03', '22:05:00', 25, 31.80, 286.20, 'Cash'),
(196, 9, 77, '2026-06-05', '15:10:00', 40, 5.73, 85.95, 'Card'),
(197, 9, 87, '2025-12-16', '10:10:00', 50, 12.68, 190.20, 'UPI'),
(198, 31, 52, '2025-10-30', '22:00:00', 20, 25.31, 379.65, 'Wallet'),
(199, 16, 73, '2026-09-25', '10:10:00', 25, 28.89, 548.91, 'Card'),
(200, 32, 75, '2026-10-02', '07:30:00', 25, 33.85, 304.65, 'Wallet'),
(201, 6, 80, '2025-09-01', '20:15:00', 50, 29.42, 441.30, 'Card'),
(202, 11, 54, '2025-11-13', '12:25:00', 50, 41.16, 370.44, 'Cash'),
(203, 67, 41, '2026-04-18', '22:40:00', 35, 36.12, 686.28, 'Cash'),
(204, 34, 27, '2025-06-15', '10:20:00', 30, 37.05, 333.45, 'UPI'),
(205, 41, 31, '2026-05-08', '09:55:00', 40, 27.18, 407.70, 'UPI'),
(206, 34, 51, '2025-10-19', '14:35:00', 20, 35.52, 319.68, 'Card'),
(207, 17, 86, '2026-03-24', '13:35:00', 20, 42.86, 814.34, 'Wallet'),
(208, 39, 59, '2025-01-28', '22:25:00', 45, 7.13, 135.47, 'Card'),
(209, 41, 97, '2026-01-31', '06:25:00', 20, 20.00, 300.00, 'UPI'),
(210, 10, 2, '2025-12-10', '15:35:00', 25, 10.50, 199.50, 'Card'),
(211, 59, 80, '2026-04-26', '08:00:00', 50, 29.61, 266.49, 'Wallet'),
(212, 13, 10, '2025-08-09', '22:30:00', 25, 26.95, 242.55, 'UPI'),
(213, 69, 28, '2025-10-23', '07:15:00', 30, 17.05, 323.95, 'Cash'),
(214, 65, 34, '2026-10-17', '09:35:00', 75, 23.28, 209.52, 'UPI'),
(215, 17, 45, '2026-10-10', '10:20:00', 60, 28.00, 532.00, 'Cash'),
(216, 9, 32, '2025-01-02', '19:10:00', 75, 19.11, 286.65, 'UPI'),
(217, 48, 37, '2026-06-21', '22:40:00', 40, 7.71, 69.39, 'UPI'),
(218, 21, 57, '2026-02-04', '18:25:00', 50, 6.74, 60.66, 'Wallet'),
(219, 70, 91, '2025-01-17', '17:15:00', 40, 36.54, 328.86, 'UPI'),
(220, 39, 79, '2026-08-19', '10:00:00', 120, 35.27, 670.13, 'Wallet'),
(221, 68, 2, '2026-07-14', '11:50:00', 40, 37.54, 337.86, 'Cash'),
(222, 39, 85, '2026-05-06', '10:05:00', 90, 12.29, 233.51, 'Cash'),
(223, 14, 18, '2025-02-07', '12:00:00', 35, 13.06, 195.90, 'Wallet'),
(224, 34, 15, '2025-11-14', '21:20:00', 60, 20.93, 188.37, 'UPI'),
(225, 14, 96, '2025-07-15', '07:50:00', 35, 19.28, 289.20, 'Wallet'),
(226, 20, 35, '2025-10-07', '19:30:00', 20, 36.97, 554.55, 'Cash'),
(227, 37, 78, '2026-01-31', '21:55:00', 40, 43.95, 659.25, 'Cash'),
(228, 27, 92, '2026-01-12', '08:55:00', 60, 15.67, 297.73, 'Cash'),
(229, 44, 27, '2025-03-22', '11:40:00', 45, 29.10, 552.90, 'Wallet'),
(230, 34, 65, '2025-11-25', '15:20:00', 20, 8.20, 73.80, 'Cash'),
(231, 63, 33, '2026-09-10', '20:25:00', 120, 22.04, 198.36, 'Cash'),
(232, 7, 12, '2025-02-13', '17:45:00', 120, 39.80, 756.20, 'Cash'),
(233, 55, 36, '2025-10-09', '07:05:00', 90, 44.20, 839.80, 'Cash'),
(234, 6, 1, '2026-01-08', '11:00:00', 60, 37.04, 555.60, 'Card'),
(235, 43, 99, '2026-09-15', '07:10:00', 90, 36.25, 326.25, 'UPI'),
(236, 17, 82, '2025-08-30', '18:45:00', 90, 19.65, 373.35, 'UPI'),
(237, 34, 21, '2026-09-12', '17:25:00', 25, 32.16, 289.44, 'Cash'),
(238, 57, 71, '2025-03-20', '17:30:00', 75, 10.51, 199.69, 'Wallet'),
(239, 55, 72, '2025-10-13', '06:55:00', 30, 43.42, 824.98, 'Card'),
(240, 2, 15, '2026-05-27', '09:20:00', 60, 20.48, 307.20, 'Wallet'),
(241, 10, 89, '2026-04-02', '15:55:00', 30, 44.85, 852.15, 'Cash'),
(242, 20, 70, '2025-07-24', '08:35:00', 20, 10.43, 156.45, 'Card'),
(243, 5, 48, '2026-04-01', '16:50:00', 20, 37.42, 710.98, 'Wallet'),
(244, 19, 56, '2025-03-08', '15:10:00', 60, 26.69, 507.11, 'Card'),
(245, 17, 6, '2026-01-06', '12:10:00', 60, 13.97, 265.43, 'Card'),
(246, 40, 47, '2026-05-21', '17:35:00', 15, 19.44, 369.36, 'Card'),
(247, 6, 46, '2026-09-19', '18:55:00', 20, 7.63, 114.45, 'Cash'),
(248, 27, 88, '2026-06-23', '08:10:00', 45, 35.77, 679.63, 'Wallet'),
(249, 32, 86, '2025-03-17', '22:25:00', 50, 23.63, 212.67, 'Card'),
(250, 14, 46, '2026-07-19', '10:30:00', 90, 28.51, 427.65, 'UPI');

select Customer_id, sum(Total_Cost) as Spent_amount
from Charging_Session
group by Customer_id
order by Spent_amount Desc
limit 10;

select cs.Station_id,cs.Station_name,cs.City, sum(cse.Total_Cost) as Total_revenue
from Charging_Session cse
inner join Charging_Stations cs on cse.Station_id = cs.Station_id
group by cs.Station_id,cs.Station_name,cs.City
order by Total_revenue Desc
limit 5;

select ec.Customer_id, ec.Customer_name, count(distinct cse.Station_id) as Diff_Stations
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
group by ec.Customer_id, ec.Customer_name
having count(cse.Station_id) >3;

select Station_id,avg(Energy_kwh) as avg_consumption
from Charging_Session
group by Station_id
order by avg_consumption desc
limit 1;

select ec.Customer_id,ec.Customer_name, sum(cse.Total_Cost) as Total_Expenditure
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
group by ec.Customer_id, ec.Customer_name
having sum(cse.Total_Cost) > ( 
        select avg(Customer_Expenditure)
        from( select sum(Total_Cost) as Customer_Expenditure
        from Charging_Session
        group by Customer_id) as Customer_Total)
order by Total_Expenditure desc;

select Station_id,sum(Total_Cost) AS Station_Revenue,sum(Total_Cost) * 100.0 /(select sum(Total_Cost)from Charging_Session) as Revenue_Percentage
from Charging_Session
group by Station_id
order by Revenue_Percentage DESC;

select cs.City, sum(cse.Total_Cost) AS Total_Revenue
from Charging_Stations cs
inner join Charging_Session cse on cs.Station_id = cse.Station_id
group by cs.City
order by Total_Revenue desc
limit 3;

select Station_id,count(*) as Total_Sessions,sum(Total_Cost) as Total_Revenue,avg(Total_Cost) as Avg_Revenue_Per_Session
from Charging_Session
group by Station_id
having count(*) > 5 and avg(Total_Cost) < (
       select avg(Total_Cost)
       from Charging_Session)
order by Avg_Revenue_Per_Session asc;

select ec.Customer_id,ec.Customer_name
from EV_Customers ec
left join Charging_Session cse on ec.Customer_id = cse.Customer_id
where cse.Customer_id is null;

select cs.Station_id,cs.Station_Name
from Charging_Stations cs
left join Charging_Session cse on cs.Station_id = cse.Station_id
where cse.Station_id is null;

select ec.Customer_id,ec.Customer_name,sum(cse.Energy_kwh) as Total_Energy_Consumed,count(cse.Session_id) as Total_Sessions 
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
group by ec.Customer_id, ec.Customer_name
order by Total_Energy_Consumed desc
limit 5;

select cs.City,cs.Station_id,count(cse.Session_id) as Total_Sessions
from Charging_Stations cs
inner join Charging_Session cse on cs.Station_id = cse.Station_id
group by cs.City, cs.Station_id
having count(cse.Session_id) = (select max(City_Stations.Total_Sessions)
    from (select cs.City,cs.Station_id,count(cse.Session_id) as Total_Sessions
        from Charging_Stations cs
        inner join Charging_Session cse on cs.Station_id = cse.Station_id
        group by cs.City, cs.Station_id) as City_Stations
    where City_Stations.City = cs.City)
order by cs.City;

select cs.Charger_Type,avg(cse.Duration_Minutes) as Avg_Charging_Duration
from Charging_Stations cs
inner join Charging_Session cse on cs.Station_id = cse.Station_id
group by cs.Charger_Type
order by Avg_Charging_Duration desc;

select ec.Customer_id,ec.Customer_name,avg(cse.Energy_kwh) as Avg_Energy_Per_Session 
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
group by ec.Customer_id, ec.Customer_name
having avg(cse.Energy_kwh) > (
    select avg(Energy_kwh)
    from Charging_Session)
order by Avg_Energy_Per_Session desc;

select ec.Customer_id,ec.Customer_name,cse.Session_id,cse.Total_Cost   
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id    
where cse.Total_Cost = (
    select max(cse2.Total_Cost)
    from Charging_Session cse2
    where cse2.Customer_id = ec.Customer_id)
order by ec.Customer_id;

select cs.Station_id,avg(cse.Total_Cost) as Avg_Charging_Cost,count(cse.Session_id) as Total_Sessions
from Charging_Stations cs
inner join Charging_Session cse on cs.Station_id = cse.Station_id
group by cs.Station_id
having count(cse.Session_id) >= 3
order by Avg_Charging_Cost desc
limit 3;

select cse.Session_Date,sum(cse.Total_Cost) as Daily_Revenue 
from Charging_Session cse
group by cse.Session_Date
order by Daily_Revenue desc
limit 1;

select ec.Customer_id,ec.Customer_name,count(distinct cs.Charger_Type) as Different_Charger_Types   
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id    
inner join Charging_Stations cs on cse.Station_id = cs.Station_id
group by ec.Customer_id, ec.Customer_name
having count(distinct cs.Charger_Type) > 1
order by Different_Charger_Types desc;

select cs.City,sum(cse.Energy_kwh) as Total_Energy_Consumed,sum(cse.Total_Cost) as Total_Revenue    
from Charging_Stations cs
inner join Charging_Session cse on cs.Station_id = cse.Station_id
group by cs.City
order by Total_Revenue desc;

select ec.Customer_id,ec.Customer_name,cse.Session_Date as Latest_Session_Date,cse.Total_Cost as Latest_Session_Cost,
		cse_prev.Total_Cost as Previous_Session_Cost
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id    
inner join Charging_Session cse_prev on ec.Customer_id = cse_prev.Customer_id
where cse.Session_Date > cse_prev.Session_Date and cse.Total_Cost > cse_prev.Total_Cost and not exists (
        select 1
        from Charging_Session cse_newer
        where cse_newer.Customer_id = ec.Customer_id and cse_newer.Session_Date > cse.Session_Date)
    and not exists (
        select 1
        from Charging_Session cse_older
        where cse_older.Customer_id = ec.Customer_id and cse_older.Session_Date > cse_prev.Session_Date
          and cse_older.Session_Date < cse.Session_Date)
order by ec.Customer_id;

select City, Station_id, Total_Revenue,rank() over (partition by City order by Total_Revenue desc) as Revenue_Rank   
from ( select cs.City,cs.Station_id,sum(cse.Total_Cost) as Total_Revenue    
    from Charging_Stations cs
    inner join Charging_Session cse on cs.Station_id = cse.Station_id
    group by cs.City, cs.Station_id) as station_revenue
order by City, Revenue_Rank;

select cse.Session_Date,sum(cse.Total_Cost) as Daily_Revenue,sum(sum(cse.Total_Cost)) over (order by cse.Session_Date) as Cumulative_Revenue 
from Charging_Session cse
group by cse.Session_Date
order by cse.Session_Date;

select Station_id,Total_Revenue
from (select cse.Station_id,sum(cse.Total_Cost) as Total_Revenue,
        dense_rank() over (order by sum(cse.Total_Cost) desc) as Revenue_Rank
    from Charging_Session cse
    group by cse.Station_id) as Station_Revenue
where Revenue_Rank = 2;

select Customer_id,Customer_name,Total_Spending,Spending_Rank
from (select ec.Customer_id,ec.Customer_name,sum(cse.Total_Cost) as Total_Spending,
        dense_rank() over (order by sum(cse.Total_Cost) desc) as Spending_Rank  
    from EV_Customers ec
    inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
    group by ec.Customer_id, ec.Customer_name) as Customer_Spending
where Spending_Rank <= 10
order by Spending_Rank;

select ec.Customer_id,ec.Customer_name,sum(cse.Total_Cost) as Total_Spending,sum(cse.Total_Cost) * 100.0 / (select sum(Total_Cost)
        from Charging_Session) as Revenue_Percentage
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
group by ec.Customer_id, ec.Customer_name
order by Revenue_Percentage desc;

select cs.City,cs.Station_id,sum(cse.Total_Cost) as Total_Revenue  
from Charging_Stations cs
inner join Charging_Session cse on cs.Station_id = cse.Station_id
group by cs.City, cs.Station_id
having sum(cse.Total_Cost) > (select avg(Station_Revenue)
    from (select cs2.Station_id, sum(cse2.Total_Cost) as Station_Revenue
        from Charging_Stations cs2
        inner join Charging_Session cse2 on cs2.Station_id = cse2.Station_id
        where cs2.City = cs.City
        group by cs2.Station_id ) as City_Stations)
order by cs.City, Total_Revenue desc;

select ec.Customer_id,ec.Customer_name,min(cse.Session_Date) as First_Charging_Date,max(cse.Session_Date) as Latest_Charging_Date,
    datediff(max(cse.Session_Date),min(cse.Session_Date)) as Days_Between   
from EV_Customers ec
inner join Charging_Session cse on ec.Customer_id = cse.Customer_id
group by ec.Customer_id, ec.Customer_name
order by ec.Customer_id;

with Session_Energy as (select ec.Customer_id,ec.Customer_name,cse.Session_id,cse.Session_Date,cse.Start_time,cse.Energy_kwh,
        lag(cse.Energy_kwh) over (partition by ec.Customer_id order by cse.Session_Date, cse.Start_time) as Previous_Energy
    from EV_Customers ec
    inner join Charging_Session cse on ec.Customer_id = cse.Customer_id)
select Customer_id,Customer_name,Session_Date,Energy_kwh as Current_Energy,Previous_Energy
from Session_Energy
where Energy_kwh > Previous_Energy
order by Customer_id, Session_Date, Start_time;

with Station_Revenue as (select cse.Station_id,sum(cse.Total_Cost) as Total_Revenue  
    from Charging_Session cse
    group by cse.Station_id),
Revenue_Difference as (select Station_id,Total_Revenue,lag(Total_Revenue) over (order by Total_Revenue desc) as Previous_Station_Revenue
    from Station_Revenue)
select Station_id,Total_Revenue,Previous_Station_Revenue,Total_Revenue - Previous_Station_Revenue as Revenue_Difference 
from Revenue_Difference
order by Total_Revenue desc;

with Station_Performance as (select cs.Station_id,cs.Station_Name,cs.City,count(cse.Session_id) as Total_Sessions,
        sum(cse.Energy_kwh) as Total_Energy_Consumed,
        sum(cse.Total_Cost) as Total_Revenue,
        avg(cse.Total_Cost) as Avg_Session_Cost
    from Charging_Stations cs
    left join Charging_Session cse on cs.Station_id = cse.Station_id
    group by cs.Station_id,cs.Station_Name,cs.City)
select Station_id,Station_Name,City,Total_Sessions,Total_Energy_Consumed,Total_Revenue,Avg_Session_Cost,rank()
     over (partition by City order by Total_Revenue desc) as Revenue_Rank
from Station_Performance
order by City, Revenue_Rank;

