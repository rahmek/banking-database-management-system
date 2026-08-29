CREATE TABLE Employees (
    Employee_ID INT NOT NULL AUTO_INCREMENT,
    Employee_Number VARCHAR(20) NOT NULL UNIQUE,
    F_Name VARCHAR(50) NOT NULL,
    M_Name VARCHAR(50),
    L_Name VARCHAR(50) NOT NULL,
    Date_of_Birth DATE,
    Gender VARCHAR(10),
    National_ID VARCHAR(50) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Phone_Number VARCHAR(20) UNIQUE,
    Address VARCHAR(255),
    Position VARCHAR(100) NOT NULL,
    Employment_Type VARCHAR(30) DEFAULT 'Full-Time',
    Hire_Date DATE NOT NULL,
    Salary DECIMAL(15,2),
    Branch_ID INT,
    Employee_Status VARCHAR(20) DEFAULT 'Active',
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (Employee_ID)

);
INSERT INTO Employees
(Employee_Number, F_Name, M_Name, L_Name, Date_of_Birth, Gender,
 National_ID, Email, Phone_Number, Address, Position,
 Employment_Type, Hire_Date, Salary, Branch_ID, Employee_Status)
VALUES

('EMP0001','Abdul','Momoh','Kargbo','1990-04-12','M',
 'SL-00124567','abdul.kargbo@bank.com','076100001',
 'Freetown','Branch Manager','Full-Time','2018-03-15',8500.00,1,'Active'),

('EMP0002','Mohamed','Sorie','Kamara','1992-07-21','M',
 'SL-00124568','mohamed.kamara@bank.com','076100002',
 'Freetown','Assistant Branch Manager','Full-Time','2019-06-10',7000.00,1,'Active'),

('EMP0003','Fatmata','Kadiatu','Sesay','1995-01-18','F',
 'SL-00124569','fatmata.sesay@bank.com','076100003',
 'Freetown','Senior Teller','Full-Time','2020-02-17',4800.00,1,'Active'),

('EMP0004','Ibrahim','Abdul','Bangura','1996-09-05','M',
 'SL-00124570','ibrahim.bangura@bank.com','076100004',
 'Freetown','Teller','Full-Time','2021-08-02',3800.00,1,'Active'),

('EMP0005','Aminata','Mariama','Turay','1994-11-23','F',
 'SL-00124571','aminata.turay@bank.com','076100005',
 'Freetown','Customer Service Officer','Full-Time','2020-10-12',4200.00,1,'Active'),

('EMP0006','Alhaji','Musa','Conteh','1988-03-14','M',
 'SL-00124572','alhaji.conteh@bank.com','076100006',
 'Freetown','Credit Officer','Full-Time','2017-05-08',5500.00,1,'Active'),

('EMP0007','Hawa','Zainab','Koroma','1993-06-30','F',
 'SL-00124573','hawa.koroma@bank.com','076100007',
 'Freetown','Account Officer','Full-Time','2021-01-18',4600.00,1,'Active'),

('EMP0008','Sallieu','Ibrahim','Sesay','1991-12-09','M',
 'SL-00124574','sallieu.sesay@bank.com','076100008',
 'Freetown','IT Officer','Full-Time','2019-09-23',6000.00,1,'Active'),

('EMP0009','Khadija','Isata','Kamara','1997-02-11','F',
 'SL-00124575','khadija.kamara@bank.com','076100009',
 'Freetown','Teller','Full-Time','2022-04-04',3700.00,1,'Active'),

('EMP0010','Samuel','Peter','Johnson','1987-08-19','M',
 'SL-00124576','samuel.johnson@bank.com','076100010',
 'Freetown','Operations Officer','Full-Time','2016-11-14',5800.00,1,'Active'),

('EMP0011','Mariama','Isatu','Bangura','1996-05-26','F',
 'SL-00124577','mariama.bangura@bank.com','076100011',
 'Bo','Branch Manager','Full-Time','2017-07-03',8200.00,2,'Active'),

('EMP0012','Abdulrahman','Sorie','Kamara','1993-10-17','M',
 'SL-00124578','abdulrahman.kamara@bank.com','076100012',
 'Bo','Assistant Branch Manager','Full-Time','2020-01-20',6800.00,2,'Active'),

('EMP0013','Kumba','Adama','Sesay','1998-03-08','F',
 'SL-00124579','kumba.sesay@bank.com','076100013',
 'Bo','Teller','Full-Time','2022-02-14',3600.00,2,'Active'),

('EMP0014','Brima','Alieu','Turay','1990-12-01','M',
 'SL-00124580','brima.turay@bank.com','076100014',
 'Bo','Credit Officer','Full-Time','2019-05-27',5300.00,2,'Active'),

('EMP0015','Yainkain','Fatu','Koroma','1995-07-13','F',
 'SL-00124581','yainkain.koroma@bank.com','076100015',
 'Bo','Customer Service Officer','Full-Time','2021-09-06',4100.00,2,'Active'),

('EMP0016','Moses','Emmanuel','Cole','1989-04-22','M',
 'SL-00124582','moses.cole@bank.com','076100016',
 'Bo','Security Officer','Full-Time','2018-08-13',3300.00,2,'Active'),

('EMP0017','Adama','Kadiatu','Jalloh','1992-01-29','F',
 'SL-00124583','adama.jalloh@bank.com','076100017',
 'Kenema','Branch Manager','Full-Time','2016-04-11',8000.00,3,'Active'),

('EMP0018','Abu','Saidu','Kamara','1994-09-16','M',
 'SL-00124584','abu.kamara@bank.com','076100018',
 'Kenema','Senior Teller','Full-Time','2019-03-18',4700.00,3,'Active'),

('EMP0019','Hannah','Marie','Conteh','1997-06-07','F',
 'SL-00124585','hannah.conteh@bank.com','076100019',
 'Kenema','Teller','Full-Time','2022-06-20',3600.00,3,'Active'),

('EMP0020','Khalil','Abdulai','Sesay','1991-11-25','M',
 'SL-00124586','khalil.sesay@bank.com','076100020',
 'Kenema','Loan Officer','Full-Time','2020-07-13',5100.00,3,'Active'),

('EMP0021','Isata','Mabinty','Kamara','1996-02-28','F',
 'SL-00124587','isata.kamara@bank.com','076100021',
 'Makeni','Branch Manager','Full-Time','2017-02-06',8100.00,4,'Active'),

('EMP0022','Sorie','Abdul','Bangura','1993-08-14','M',
 'SL-00124588','sorie.bangura@bank.com','076100022',
 'Makeni','Assistant Branch Manager','Full-Time','2019-11-04',6700.00,4,'Active'),

('EMP0023','Fatmata','Kadiatu','Kamara','1998-12-19','F',
 'SL-00124589','fatmata.kamara@bank.com','076100023',
 'Makeni','Teller','Full-Time','2023-01-09',3500.00,4,'Active'),

('EMP0024','Abdulai','Musa','Koroma','1990-05-03','M',
 'SL-00124590','abdulai.koroma@bank.com','076100024',
 'Makeni','Account Officer','Full-Time','2020-08-17',4500.00,4,'Active'),

('EMP0025','Hawa','Mariama','Sesay','1995-10-27','F',
 'SL-00124591','hawa.sesay@bank.com','076100025',
 'Makeni','Customer Service Officer','Full-Time','2021-03-22',4000.00, 4,'Active'),

('EMP0026','Patrick','John','Williams','1988-06-15','M',
 'SL-00124592','patrick.williams@bank.com','076100026',
 'Freetown','Compliance Officer','Full-Time','2018-10-01',6200.00,1,'Active'),

('EMP0027','Mabinty','Fanta','Turay','1994-04-09','F',
 'SL-00124593','mabinty.turay@bank.com','076100027',
 'Freetown','Human Resources Officer','Full-Time','2020-12-07',5600.00,1,'Active'),

('EMP0028','Abdul Karim','Saidu','Jalloh','1986-01-31','M',
 'SL-00124594','abdulkarim.jalloh@bank.com','076100028',
 'Freetown','Database Administrator','Full-Time','2018-01-15',6500.00,1,'Active'),

('EMP0029','Aminata','Fatu','Conteh','1997-09-12','F',
 'SL-00124595','aminata.conteh@bank.com','076100029',
 'Freetown','Digital Banking Officer','Full-Time','2022-09-19',5200.00,1,'Active'),

('EMP0030','Mohamed','Alusine','Turay','1992-02-06','M',
 'SL-00124596','mohamed.turay@bank.com','076100030',
 'Freetown','Internal Auditor','Full-Time','2019-01-07',6300.00,1,'Active');
 
select * from employees;
