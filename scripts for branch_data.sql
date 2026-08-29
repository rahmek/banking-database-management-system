CREATE TABLE branch (
    Branch_ID INT NOT NULL AUTO_INCREMENT,
    Branch_Code VARCHAR(20) NOT NULL UNIQUE,
    Branch_Name VARCHAR(100) NOT NULL,
    Branch_Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    District VARCHAR(50),
    Country VARCHAR(50) DEFAULT 'Sierra Leone',
    Phone_Number VARCHAR(20) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Manager_ID INT,
    Branch_Status VARCHAR(20) DEFAULT 'Active',
    Opening_Date DATE,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (Branch_ID)
);
use bank_db;

select * from  branch;

INSERT INTO branch
(Branch_Code, Branch_Name, Branch_Address, City, District, Phone_Number, Email, Branch_Status, Opening_Date)
VALUES
('BR001', 'Freetown Main Branch', 'Siaka Stevens Street', 'Freetown', 'Western Area Urban', '+23276100001', 'freetown.main@bank.com', 'Active', '2015-01-10'),
('BR002', 'Lumley Branch', 'Lumley Beach Road', 'Freetown', 'Western Area Urban', '+23276100002', 'lumley@bank.com', 'Active', '2017-05-15'),
('BR003', 'Wilberforce Branch', 'Wilberforce Street', 'Freetown', 'Western Area Urban', '+23276100003', 'wilberforce@bank.com', 'Active', '2016-08-20'),
('BR004', 'Congo Cross Branch', 'Congo Cross', 'Freetown', 'Western Area Urban', '+23276100004', 'congocross@bank.com', 'Active', '2018-02-12'),
('BR005', 'Kissy Branch', 'Kissy Road', 'Freetown', 'Western Area Urban', '+23276100005', 'kissy@bank.com', 'Active', '2017-11-18'),
('BR006', 'Jui Branch', 'Jui Junction', 'Freetown', 'Western Area Rural', '+23276100006', 'jui@bank.com', 'Active', '2020-03-09'),
('BR007', 'Waterloo Branch', 'Waterloo Main Road', 'Waterloo', 'Western Area Rural', '+23276100007', 'waterloo@bank.com', 'Active', '2019-06-14'),
('BR008', 'Hastings Branch', 'Hastings Main Road', 'Hastings', 'Western Area Rural', '+23276100008', 'hastings@bank.com', 'Active', '2021-01-25'),
('BR009', 'Bo Main Branch', 'Bo Main Street', 'Bo', 'Bo District', '+23276100009', 'bo.main@bank.com', 'Active', '2015-04-17'),
('BR010', 'Tikonko Branch', 'Tikonko Road', 'Bo', 'Bo District', '+23276100010', 'tikonko@bank.com', 'Active', '2020-09-11'),
('BR011', 'Kenema Main Branch', 'Hunt Road', 'Kenema', 'Kenema District', '+23276100011', 'kenema.main@bank.com', 'Active', '2016-07-12'),
('BR012', 'Hangha Branch', 'Hangha Road', 'Kenema', 'Kenema District', '+23276100012', 'hangha@bank.com', 'Active', '2019-10-05'),
('BR013', 'Makeni Main Branch', 'Makeni Main Street', 'Makeni', 'Bombali District', '+23276100013', 'makeni.main@bank.com', 'Active', '2016-02-19'),
('BR014', 'Magburaka Branch', 'Magburaka Main Road', 'Magburaka', 'Tonkolili District', '+23276100014', 'magburaka@bank.com', 'Active', '2020-05-22'),
('BR015', 'Koidu Branch', 'Koidu Main Street', 'Koidu', 'Kono District', '+23276100015', 'koidu@bank.com', 'Active', '2017-03-16'),
('BR016', 'Kailahun Branch', 'Kailahun Main Road', 'Kailahun', 'Kailahun District', '+23276100016', 'kailahun@bank.com', 'Active', '2021-08-10'),
('BR017', 'Port Loko Branch', 'Port Loko Main Street', 'Port Loko', 'Port Loko District', '+23276100017', 'portloko@bank.com', 'Active', '2018-04-13'),
('BR018', 'Lunsar Branch', 'Lunsar Main Road', 'Lunsar', 'Port Loko District', '+23276100018', 'lunsar@bank.com', 'Active', '2020-11-07'),
('BR019', 'Kabala Branch', 'Kabala Main Street', 'Kabala', 'Koinadugu District', '+23276100019', 'kabala@bank.com', 'Active', '2019-02-15'),
('BR020', 'Moyamba Branch', 'Moyamba Main Road', 'Moyamba', 'Moyamba District', '+23276100020', 'moyamba@bank.com', 'Active', '2021-06-18'),
('BR021', 'Pujehun Branch', 'Pujehun Main Street', 'Pujehun', 'Pujehun District', '+23276100021', 'pujehun@bank.com', 'Active', '2022-01-20'),
('BR022', 'Bonthe Branch', 'Bonthe Main Street', 'Bonthe', 'Bonthe District', '+23276100022', 'bonthe@bank.com', 'Active', '2022-07-14'),
('BR023', 'Kambia Branch', 'Kambia Main Road', 'Kambia', 'Kambia District', '+23276100023', 'kambia@bank.com', 'Active', '2019-09-21'),
('BR024', 'Masiaka Branch', 'Masiaka Highway', 'Masiaka', 'Port Loko District', '+23276100024', 'masiaka@bank.com', 'Active', '2020-12-03'),
('BR025', 'Freetown CBD Branch', 'Rawdon Street', 'Freetown', 'Western Area Urban', '+23276100025', 'cbd@bank.com', 'Active', '2014-06-05'),
('BR026', 'Goderich Branch', 'Goderich Road', 'Freetown', 'Western Area Rural', '+23276100026', 'goderich@bank.com', 'Active', '2021-04-16'),
('BR027', 'Hill Station Branch', 'Hill Station Road', 'Freetown', 'Western Area Urban', '+23276100027', 'hillstation@bank.com', 'Active', '2018-09-08'),
('BR028', 'Calaba Town Branch', 'Calaba Town Main Road', 'Freetown', 'Western Area Urban', '+23276100028', 'calabatown@bank.com', 'Active', '2020-02-14'),
('BR029', 'Eastern Police Branch', 'Eastern Police Road', 'Freetown', 'Western Area Urban', '+23276100029', 'eastern@bank.com', 'Active', '2019-05-10'),
('BR030', 'Aberdeen Branch', 'Aberdeen Main Road', 'Freetown', 'Western Area Urban', '+23276100030', 'aberdeen@bank.com', 'Active', '2022-03-25');

