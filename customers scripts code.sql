create database Bank_DB;
use  bank_db;

 create table CUSTOMERS(
 Cus_ID int not null primary key auto_increment ,
 Cus_Number varchar(20) not null unique,
 F_Name varchar(20) not null,
 M_Name varchar(20),
 L_Name varchar(20) not null,
 Date_of_birth date not null,
 Gender varchar(1),
 Nationality varchar(30),
National_ID varchar(50) unique,
Email VARCHAR(100) UNIQUE,
Phone_Number VARCHAR(20) unique,
Occupation VARCHAR(100),
Marital_Status VARCHAR(20),
Customer_Type VARCHAR(30) NOT NULL,
Registration_Date DATE DEFAULT (CURRENT_DATE),
Customer_Status VARCHAR(20) DEFAULT 'Active',
Created_At timestamp DEFAULT current_timestamp,
UpdatedAt timestamp DEFAULT current_timestamp on update current_timestamp
);



 INSERT INTO Customers
(
    Cus_Number,
    F_Name,
    M_Name,
    L_Name,
    Date_of_birth,
    Gender,
    Nationality,
    National_ID,
    Email,
    Phone_Number,
    Occupation,
    Marital_Status,
    Customer_Type
)
VALUES
('CUS000121','Abdul','Sorie','Kamara','1990-01-14','M','Sierra Leonean','SLID100121','abdul.kamara121@gmail.com','+23276100121','Accountant','Married','Business'),
('CUS000122','Fatmata','Kadiatu','Sesay','1996-03-22','F','Sierra Leonean','SLID100122','fatmata.sesay122@gmail.com','+23276100122','Teacher','Single','Individual'),
('CUS000123','Ibrahim','Mohamed','Bangura','1988-07-09','M','Sierra Leonean','SLID100123','ibrahim.bangura123@gmail.com','+23276100123','Engineer','Married','business'),
('CUS000124','Aminata','Hawa','Koroma','1994-11-18','F','Sierra Leonean','SLID100124','aminata.koroma124@gmail.com','+23276100124','Nurse','Single','Individual'),
('CUS000125','Mohamed','Abdul','Turay','1985-05-27','M','Sierra Leonean','SLID100125','mohamed.turay125@gmail.com','+23276100125','Businessman','Married','Individual'),
('CUS000126','Kadiatu','Mabinty','Conteh','1998-01-06','F','Sierra Leonean','SLID100126','kadiatu.conteh126@gmail.com','+23276100126','Student','Single','Individual'),
('CUS000127','Lansana','Sorie','Jalloh','1991-09-13','M','Sierra Leonean','SLID100127','lansana.jalloh127@gmail.com','+23276100127','IT Officer','Married','Individual'),
('CUS000128','Hawa','Mariama','Fofana','1993-04-25','F','Sierra Leonean','SLID100128','hawa.fofana128@gmail.com','+23276100128','Pharmacist','Single','Individual'),
('CUS000129','Alusine','Ibrahim','Sesay','1987-12-02','M','Sierra Leonean','SLID100129','alusine.sesay129@gmail.com','+23276100129','Banker','Married','Individual'),
('CUS000130','Adama','Fatmata','Kamara','1997-06-16','F','Sierra Leonean','SLID100130','adama.kamara130@gmail.com','+23276100130','Administrator','Single','Individual'),

('CUS000131','Brima','Abdul','Koroma','1989-02-28','M','Sierra Leonean','SLID100131','brima.koroma131@gmail.com','+23276100131','Accountant','Married','Individual'),
('CUS000132','Mariama','Kumba','Bangura','1995-08-11','F','Sierra Leonean','SLID100132','mariama.bangura132@gmail.com','+23276100132','Teacher','Single','Individual'),
('CUS000133','Sorie','Mohamed','Fofana','1984-10-19','M','Sierra Leonean','SLID100133','sorie.fofana133@gmail.com','+23276100133','Contractor','Married','Individual'),
('CUS000134','Isatu','Adama','Jalloh','1992-03-07','F','Sierra Leonean','SLID100134','isatu.jalloh134@gmail.com','+23276100134','Nurse','Married','Individual'),
('CUS000135','Musa','Ibrahim','Conteh','1986-07-23','M','Sierra Leonean','SLID100135','musa.conteh135@gmail.com','+23276100135','Technician','Single','Individual'),
('CUS000136','Zainab','Hawa','Turay','1999-11-15','F','Sierra Leonean','SLID100136','zainab.turay136@gmail.com','+23276100136','Student','Single','Individual'),
('CUS000137','Sahr','Abdul','Sesay','1990-05-04','M','Sierra Leonean','SLID100137','sahr.sesay137@gmail.com','+23276100137','Trader','Married','Individual'),
('CUS000138','Mabinty','Kadiatu','Koroma','1996-09-26','F','Sierra Leonean','SLID100138','mabinty.koroma138@gmail.com','+23276100138','Teacher','Single','Individual'),
('CUS000139','Abdulai','Sorie','Bangura','1983-01-17','M','Sierra Leonean','SLID100139','abdulai.bangura139@gmail.com','+23276100139','Driver','Married','Individual'),
('CUS000140','Fatmata','Mariama','Kamara','1994-06-08','F','Sierra Leonean','SLID100140','fatmata.kamara140@gmail.com','+23276100140','Accountant','Single','Individual'),

('CUS000141','Joseph','Patrick','Williams','1988-04-15','M','Sierra Leonean','SLID100141','joseph.williams141@gmail.com','+23276100141','Lawyer','Married','Individual'),
('CUS000142','Esther','Marie','Johnson','1995-10-27','F','Sierra Leonean','SLID100142','esther.johnson142@gmail.com','+23276100142','Administrator','Single','Individual'),
('CUS000143','Samuel','David','Cole','1987-08-06','M','Sierra Leonean','SLID100143','samuel.cole143@gmail.com','+23276100143','Manager','Married','Individual'),
('CUS000144','Grace','Amara','Taylor','1993-12-21','F','Sierra Leonean','SLID100144','grace.taylor144@gmail.com','+23276100144','Teacher','Single','Individual'),
('CUS000145','Daniel','Michael','Smith','1990-02-12','M','Sierra Leonean','SLID100145','daniel.smith145@gmail.com','+23276100145','Developer','Married','Individual'),
('CUS000146','Mary','Elizabeth','Brown','1997-05-30','F','Sierra Leonean','SLID100146','mary.brown146@gmail.com','+23276100146','Nurse','Single','Individual'),
('CUS000147','Robert','James','Davies','1985-09-17','M','Sierra Leonean','SLID100147','robert.davies147@gmail.com','+23276100147','Architect','Married','Individual'),
('CUS000148','Lucy','Mariam','Roberts','1996-01-25','F','Sierra Leonean','SLID100148','lucy.roberts148@gmail.com','+23276100148','Designer','Single','Individual'),
('CUS000149','Thomas','Peter','Wilson','1989-06-14','M','Sierra Leonean','SLID100149','thomas.wilson149@gmail.com','+23276100149','Consultant','Married','Individual'),
('CUS000150','Rebecca','Sarah','Thomas','1992-11-03','F','Sierra Leonean','SLID100150','rebecca.thomas150@gmail.com','+23276100150','Pharmacist','Single','Individual'),

('CUS000151','Alhaji','Sorie','Jalloh','1986-03-19','M','Sierra Leonean','SLID100151','alhaji.jalloh151@gmail.com','+23276100151','Trader','Married','Individual'),
('CUS000152','Kumba','Adama','Sesay','1998-07-28','F','Sierra Leonean','SLID100152','kumba.sesay152@gmail.com','+23276100152','Student','Single','Individual'),
('CUS000153','Lamin','Ibrahim','Kamara','1991-10-05','M','Sierra Leonean','SLID100153','lamin.kamara153@gmail.com','+23276100153','Engineer','Married','Individual'),
('CUS000154','Ramatu','Fatmata','Koroma','1995-04-13','F','Sierra Leonean','SLID100154','ramatu.koroma154@gmail.com','+23276100154','Nurse','Single','Individual'),
('CUS000155','Saidu','Mohamed','Fofana','1984-12-22','M','Sierra Leonean','SLID100155','saidu.fofana155@gmail.com','+23276100155','Mechanic','Married','Individual'),
('CUS000156','Kadie','Hawa','Conteh','1997-02-09','F','Sierra Leonean','SLID100156','kadie.conteh156@gmail.com','+23276100156','Teacher','Single','Individual'),
('CUS000157','Abubakar','Abdul','Bangura','1989-08-17','M','Sierra Leonean','SLID100157','abubakar.bangura157@gmail.com','+23276100157','Businessman','Married','Individual'),
('CUS000158','Hawa','Kadiatu','Turay','1994-06-29','F','Sierra Leonean','SLID100158','hawa.turay158@gmail.com','+23276100158','Accountant','Single','Individual'),
('CUS000159','Sorie','Ibrahim','Jalloh','1987-01-31','M','Sierra Leonean','SLID100159','sorie.jalloh159@gmail.com','+23276100159','Banker','Married','Individual'),
('CUS000160','Aminata','Mariama','Sesay','1999-09-12','F','Sierra Leonean','SLID100160','aminata.sesay160@gmail.com','+23276100160','Student','Single','Individual'),

('CUS000161','Mohamed','Sorie','Kamara','1990-04-07','M','Sierra Leonean','SLID100161','mohamed.kamara161@gmail.com','+23276100161','IT Specialist','Married','Individual'),
('CUS000162','Fatmata','Adama','Bangura','1996-12-18','F','Sierra Leonean','SLID100162','fatmata.bangura162@gmail.com','+23276100162','Teacher','Single','Individual'),
('CUS000163','Ibrahim','Abdul','Koroma','1985-05-11','M','Sierra Leonean','SLID100163','ibrahim.koroma163@gmail.com','+23276100163','Engineer','Married','Individual'),
('CUS000164','Kadiatu','Mabinty','Fofana','1993-08-24','F','Sierra Leonean','SLID100164','kadiatu.fofana164@gmail.com','+23276100164','Nurse','Single','Individual'),
('CUS000165','Brima','Mohamed','Conteh','1988-11-06','M','Sierra Leonean','SLID100165','brima.conteh165@gmail.com','+23276100165','Contractor','Married','Individual'),
('CUS000166','Adama','Kumba','Jalloh','1997-03-15','F','Sierra Leonean','SLID100166','adama.jalloh166@gmail.com','+23276100166','Administrator','Single','Individual'),
('CUS000167','Lansana','Sorie','Sesay','1986-09-27','M','Sierra Leonean','SLID100167','lansana.sesay167@gmail.com','+23276100167','Trader','Married','Individual'),
('CUS000168','Zainab','Hawa','Kamara','1995-01-13','F','Sierra Leonean','SLID100168','zainab.kamara168@gmail.com','+23276100168','Accountant','Single','Individual'),
('CUS000169','Sahr','Ibrahim','Turay','1991-07-20','M','Sierra Leonean','SLID100169','sahr.turay169@gmail.com','+23276100169','Banker','Married','Individual'),
('CUS000170','Mabinty','Fatmata','Koroma','1998-10-31','F','Sierra Leonean','SLID100170','mabinty.koroma170@gmail.com','+23276100170','Student','Single','Individual'),

('CUS000171','Abdulai','Mohamed','Fofana','1984-02-18','M','Sierra Leonean','SLID100171','abdulai.fofana171@gmail.com','+23276100171','Driver','Married','Individual'),
('CUS000172','Isatu','Kadiatu','Sesay','1994-05-26','F','Sierra Leonean','SLID100172','isatu.sesay172@gmail.com','+23276100172','Nurse','Single','Individual'),
('CUS000173','Musa','Abdul','Bangura','1989-12-14','M','Sierra Leonean','SLID100173','musa.bangura173@gmail.com','+23276100173','Technician','Married','Individual'),
('CUS000174','Mariama','Hawa','Conteh','1996-06-03','F','Sierra Leonean','SLID100174','mariama.conteh174@gmail.com','+23276100174','Teacher','Single','Individual'),
('CUS000175','Alusine','Sorie','Koroma','1987-03-29','M','Sierra Leonean','SLID100175','alusine.koroma175@gmail.com','+23276100175','Businessman','Married','Individual'),
('CUS000176','Fatmata','Mabinty','Kamara','1993-09-16','F','Sierra Leonean','SLID100176','fatmata.kamara176@gmail.com','+23276100176','Pharmacist','Single','Individual'),
('CUS000177','Ibrahim','Sorie','Jalloh','1985-08-05','M','Sierra Leonean','SLID100177','ibrahim.jalloh177@gmail.com','+23276100177','Engineer','Married','Individual'),
('CUS000178','Hawa','Adama','Turay','1997-11-22','F','Sierra Leonean','SLID100178','hawa.turay178@gmail.com','+23276100178','Student','Single','Individual'),
('CUS000179','Sorie','Mohamed','Sesay','1990-01-09','M','Sierra Leonean','SLID100179','sorie.sesay179@gmail.com','+23276100179','Accountant','Married','Individual'),
('CUS000180','Aminata','Kumba','Fofana','1995-04-30','F','Sierra Leonean','SLID100180','aminata.fofana180@gmail.com','+23276100180','Administrator','Single','Individual'),

('CUS000181','Samuel','David','Johnson','1988-07-16','M','Sierra Leonean','SLID100181','samuel.johnson181@gmail.com','+23276100181','Manager','Married','Individual'),
('CUS000182','Esther','Marie','Williams','1993-02-24','F','Sierra Leonean','SLID100182','esther.williams182@gmail.com','+23276100182','HR Officer','Single','Individual'),
('CUS000183','Joseph','Patrick','Cole','1986-10-08','M','Sierra Leonean','SLID100183','joseph.cole183@gmail.com','+23276100183','Lawyer','Married','Individual'),
('CUS000184','Grace','Amara','Smith','1998-05-19','F','Sierra Leonean','SLID100184','grace.smith184@gmail.com','+23276100184','Teacher','Single','Individual'),
('CUS000185','Daniel','Michael','Brown','1989-09-27','M','Sierra Leonean','SLID100185','daniel.brown185@gmail.com','+23276100185','Developer','Married','Individual'),
('CUS000186','Mary','Elizabeth','Davies','1994-12-11','F','Sierra Leonean','SLID100186','mary.davies186@gmail.com','+23276100186','Nurse','Single','Individual'),
('CUS000187','Robert','James','Taylor','1983-06-15','M','Sierra Leonean','SLID100187','robert.taylor187@gmail.com','+23276100187','Architect','Married','Individual'),
('CUS000188','Lucy','Mariam','Roberts','1996-03-28','F','Sierra Leonean','SLID100188','lucy.roberts188@gmail.com','+23276100188','Designer','Single','Individual'),
('CUS000189','Thomas','Peter','Wilson','1987-11-04','M','Sierra Leonean','SLID100189','thomas.wilson189@gmail.com','+23276100189','Consultant','Married','Individual'),
('CUS000190','Rebecca','Sarah','Thomas','1992-08-13','F','Sierra Leonean','SLID100190','rebecca.thomas190@gmail.com','+23276100190','Pharmacist','Single','Individual'),

('CUS000191','Alhaji','Ibrahim','Kamara','1985-01-26','M','Sierra Leonean','SLID100191','alhaji.kamara191@gmail.com','+23276100191','Trader','Married','Individual'),
('CUS000192','Kumba','Fatmata','Sesay','1997-05-08','F','Sierra Leonean','SLID100192','kumba.sesay192@gmail.com','+23276100192','Student','Single','Individual'),
('CUS000193','Lamin','Sorie','Bangura','1990-09-21','M','Sierra Leonean','SLID100193','lamin.bangura193@gmail.com','+23276100193','Engineer','Married','Individual'),
('CUS000194','Ramatu','Hawa','Koroma','1995-02-17','F','Sierra Leonean','SLID100194','ramatu.koroma194@gmail.com','+23276100194','Nurse','Single','Individual'),
('CUS000195','Saidu','Abdul','Fofana','1988-06-23','M','Sierra Leonean','SLID100195','saidu.fofana195@gmail.com','+23276100195','Mechanic','Married','Individual'),
('CUS000196','Kadie','Mabinty','Conteh','1998-10-05','F','Sierra Leonean','SLID100196','kadie.conteh196@gmail.com','+23276100196','Teacher','Single','Individual'),
('CUS000197','Abubakar','Mohamed','Jalloh','1986-04-12','M','Sierra Leonean','SLID100197','abubakar.jalloh197@gmail.com','+23276100197','Businessman','Married','Individual'),
('CUS000198','Hawa','Kadiatu','Turay','1993-12-29','F','Sierra Leonean','SLID100198','hawa.turay198@gmail.com','+23276100198','Accountant','Single','Individual'),
('CUS000199','Sorie','Ibrahim','Sesay','1989-07-07','M','Sierra Leonean','SLID100199','sorie.sesay199@gmail.com','+23276100199','Banker','Married','Individual'),
('CUS000200','Aminata','Mariama','Kamara','1996-11-18','F','Sierra Leonean','SLID100200','aminata.kamara200@gmail.com','+23276100200','Administrator','Single','Individual'),

('CUS000001', 'Abdulai', 'Momoh', 'Kargbo', '1998-05-15', 'M', 'Sierra Leonean', 'SLID100001', 'abdulai.kargbo@gmail.com', '+23276100001', 'IT Officer', 'Single', 'Individual'),

('CUS000002', 'Aminata', 'Mariama', 'Sesay', '1995-09-21', 'F', 'Sierra Leonean', 'SLID100002', 'aminata.sesay@gmail.com', '+23276100002', 'Accountant', 'Married', 'Individual'),

('CUS000003', 'Mohamed', 'Sorie', 'Kamara', '1990-03-11', 'M', 'Sierra Leonean', 'SLID100003', 'mohamed.kamara@gmail.com', '+23276100003', 'Businessman', 'Married', 'Individual'),

('CUS000004', 'Fatmata', 'Kadiatu', 'Koroma', '1997-07-18', 'F', 'Sierra Leonean', 'SLID100004', 'fatmata.koroma@gmail.com', '+23276100004', 'Teacher', 'Single', 'Individual'),

('CUS000005', 'Ibrahim', 'Abdul', 'Bangura', '1988-12-05', 'M', 'Sierra Leonean', 'SLID100005', 'ibrahim.bangura@gmail.com', '+23276100005', 'Engineer', 'Married', 'Individual'),

('CUS000006', 'Hawa', 'Mabinty', 'Conteh', '1993-04-27', 'F', 'Sierra Leonean', 'SLID100006', 'hawa.conteh@gmail.com', '+23276100006', 'Nurse', 'Single', 'Individual'),

('CUS000007', 'Alusine', 'Sorie', 'Jalloh', '1985-08-14', 'M', 'Sierra Leonean', 'SLID100007', 'alusine.jalloh@gmail.com', '+23276100007', 'Doctor', 'Married', 'Individual'),

('CUS000008', 'Kadiatu', 'Zainab', 'Turay', '1999-01-30', 'F', 'Sierra Leonean', 'SLID100008', 'kadiatu.turay@gmail.com', '+23276100008', 'Student', 'Single', 'Individual'),

('CUS000009', 'Sorie', 'Abdul', 'Sesay', '1992-06-19', 'M', 'Sierra Leonean', 'SLID100009', 'sorie.sesay@gmail.com', '+23276100009', 'Banker', 'Married', 'Individual'),

('CUS000010', 'Mariama', 'Adama', 'Kamara', '1996-10-12', 'F', 'Sierra Leonean', 'SLID100010', 'mariama.kamara@gmail.com', '+23276100010', 'Marketing Officer', 'Single', 'Individual'),

('CUS000011', 'Joseph', 'Patrick', 'Williams', '1987-02-23', 'M', 'Sierra Leonean', 'SLID100011', 'joseph.williams@gmail.com', '+23276100011', 'Lawyer', 'Married', 'Individual'),

('CUS000012', 'Isatu', 'Marie', 'Johnson', '1994-11-08', 'F', 'Sierra Leonean', 'SLID100012', 'isatu.johnson@gmail.com', '+23276100012', 'Administrator', 'Single', 'Individual'),

('CUS000013', 'Musa', 'Abdulrahman', 'Kamara', '1989-05-17', 'M', 'Sierra Leonean', 'SLID100013', 'musa.kamara@gmail.com', '+23276100013', 'Civil Servant', 'Married', 'Individual'),

('CUS000014', 'Sarah', 'Kumba', 'Conteh', '1991-03-25', 'F', 'Sierra Leonean', 'SLID100014', 'sarah.conteh@gmail.com', '+23276100014', 'Pharmacist', 'Married', 'Individual'),

('CUS000015', 'Brima', 'Sorie', 'Fofana', '1986-09-09', 'M', 'Sierra Leonean', 'SLID100015', 'brima.fofana@gmail.com', '+23276100015', 'Entrepreneur', 'Married', 'Individual'),

('CUS000016', 'Zainab', 'Fatmata', 'Bangura', '1998-12-16', 'F', 'Sierra Leonean', 'SLID100016', 'zainab.bangura@gmail.com', '+23276100016', 'Student', 'Single', 'Individual'),

('CUS000017', 'Patrick', 'Michael', 'Cole', '1984-07-02', 'M', 'Sierra Leonean', 'SLID100017', 'patrick.cole@gmail.com', '+23276100017', 'Architect', 'Married', 'Individual'),

('CUS000018', 'Adama', 'Khadija', 'Turay', '1995-01-26', 'F', 'Sierra Leonean', 'SLID100018', 'adama.turay@gmail.com', '+23276100018', 'HR Officer', 'Single', 'Individual'),

('CUS000019', 'Lamin', 'Sorie', 'Jalloh', '1990-10-04', 'M', 'Sierra Leonean', 'SLID100019', 'lamin.jalloh@gmail.com', '+23276100019', 'Business Consultant', 'Married', 'Individual'),

('CUS000020', 'Mabinty', 'Kadiatu', 'Koroma', '1997-06-13', 'F', 'Sierra Leonean', 'SLID100020', 'mabinty.koroma@gmail.com', '+23276100020', 'Teacher', 'Single', 'Individual'),


('CUS000021','Samuel','David','Johnson','1989-04-12','M','Sierra Leonean','SLID100021','samuel.johnson21@gmail.com','+23276100021','Accountant','Married','Individual'),
('CUS000022','Khadija','Mariam','Sesay','1996-08-23','F','Sierra Leonean','SLID100022','khadija.sesay22@gmail.com','+23276100022','Teacher','Single','Individual'),
('CUS000023','Abdul','Sorie','Bangura','1991-02-17','M','Sierra Leonean','SLID100023','abdul.bangura23@gmail.com','+23276100023','Engineer','Married','Individual'),
('CUS000024','Isatu','Mabinty','Koroma','1994-11-06','F','Sierra Leonean','SLID100024','isatu.koroma24@gmail.com','+23276100024','Nurse','Single','Individual'),
('CUS000025','Lansana','Mohamed','Kamara','1987-06-29','M','Sierra Leonean','SLID100025','lansana.kamara25@gmail.com','+23276100025','Businessman','Married','Individual'),
('CUS000026','Fatmata','Kadiatu','Turay','1999-03-14','F','Sierra Leonean','SLID100026','fatmata.turay26@gmail.com','+23276100026','Student','Single','Individual'),
('CUS000027','Ibrahim','Sorie','Conteh','1985-09-21','M','Sierra Leonean','SLID100027','ibrahim.conteh27@gmail.com','+23276100027','Banker','Married','Individual'),
('CUS000028','Aminata','Hawa','Jalloh','1993-01-18','F','Sierra Leonean','SLID100028','aminata.jalloh28@gmail.com','+23276100028','Pharmacist','Married','Individual'),
('CUS000029','Musa','Abdul','Fofana','1990-07-25','M','Sierra Leonean','SLID100029','musa.fofana29@gmail.com','+23276100029','IT Specialist','Single','Individual'),
('CUS000030','Adama','Kumba','Sesay','1997-12-09','F','Sierra Leonean','SLID100030','adama.sesay30@gmail.com','+23276100030','Administrator','Single','Individual'),

('CUS000031','Mohamed','Sorie','Koroma','1988-05-16','M','Sierra Leonean','SLID100031','mohamed.koroma31@gmail.com','+23276100031','Civil Servant','Married','Individual'),
('CUS000032','Mariama','Fatmata','Kamara','1995-10-27','F','Sierra Leonean','SLID100032','mariama.kamara32@gmail.com','+23276100032','Marketing Officer','Single','Individual'),
('CUS000033','Brima','Abdul','Bangura','1983-03-08','M','Sierra Leonean','SLID100033','brima.bangura33@gmail.com','+23276100033','Contractor','Married','Individual'),
('CUS000034','Kadiatu','Zainab','Conteh','1992-06-11','F','Sierra Leonean','SLID100034','kadiatu.conteh34@gmail.com','+23276100034','Doctor','Married','Individual'),
('CUS000035','Alhaji','Ibrahim','Turay','1986-01-30','M','Sierra Leonean','SLID100035','alhaji.turay35@gmail.com','+23276100035','Trader','Married','Individual'),
('CUS000036','Hawa','Mabinty','Fofana','1998-09-04','F','Sierra Leonean','SLID100036','hawa.fofana36@gmail.com','+23276100036','Teacher','Single','Individual'),
('CUS000037','Sorie','Abdul','Jalloh','1991-11-19','M','Sierra Leonean','SLID100037','sorie.jalloh37@gmail.com','+23276100037','Technician','Married','Individual'),
('CUS000038','Isatu','Kumba','Sesay','1996-04-07','F','Sierra Leonean','SLID100038','isatu.sesay38@gmail.com','+23276100038','Nurse','Single','Individual'),
('CUS000039','Abdulai','Sorie','Kamara','1984-08-13','M','Sierra Leonean','SLID100039','abdulai.kamara39@gmail.com','+23276100039','Driver','Married','Individual'),
('CUS000040','Mabinty','Adama','Koroma','1993-02-26','F','Sierra Leonean','SLID100040','mabinty.koroma40@gmail.com','+23276100040','Accountant','Single','Individual'),

('CUS000041','Patrick','Michael','Cole','1985-05-22','M','Sierra Leonean','SLID100041','patrick.cole41@gmail.com','+23276100041','Architect','Married','Individual'),
('CUS000042','Sarah','Kumba','Johnson','1990-10-15','F','Sierra Leonean','SLID100042','sarah.johnson42@gmail.com','+23276100042','Lawyer','Married','Individual'),
('CUS000043','Emmanuel','Peter','Williams','1989-12-03','M','Sierra Leonean','SLID100043','emmanuel.williams43@gmail.com','+23276100043','Engineer','Single','Individual'),
('CUS000044','Esther','Marie','Thomas','1995-07-17','F','Sierra Leonean','SLID100044','esther.thomas44@gmail.com','+23276100044','Teacher','Single','Individual'),
('CUS000045','George','Albert','Smith','1982-04-29','M','Sierra Leonean','SLID100045','george.smith45@gmail.com','+23276100045','Manager','Married','Individual'),
('CUS000046','Hannah','Elizabeth','Brown','1993-09-12','F','Sierra Leonean','SLID100046','hannah.brown46@gmail.com','+23276100046','HR Officer','Married','Individual'),
('CUS000047','Daniel','Samuel','Davies','1988-01-24','M','Sierra Leonean','SLID100047','daniel.davies47@gmail.com','+23276100047','Business Analyst','Single','Individual'),
('CUS000048','Joyce','Amara','Taylor','1997-06-05','F','Sierra Leonean','SLID100048','joyce.taylor48@gmail.com','+23276100048','Receptionist','Single','Individual'),
('CUS000049','Victor','James','Roberts','1991-03-19','M','Sierra Leonean','SLID100049','victor.roberts49@gmail.com','+23276100049','Developer','Married','Individual'),
('CUS000050','Alice','Mary','Wilson','1994-11-28','F','Sierra Leonean','SLID100050','alice.wilson50@gmail.com','+23276100050','Designer','Single','Individual'),

('CUS000051','Francis','Abdul','Bangura','1986-08-09','M','Sierra Leonean','SLID100051','francis.bangura51@gmail.com','+23276100051','Electrician','Married','Individual'),
('CUS000052','Kumba','Mabinty','Kamara','1998-02-14','F','Sierra Leonean','SLID100052','kumba.kamara52@gmail.com','+23276100052','Student','Single','Individual'),
('CUS000053','Saidu','Mohamed','Jalloh','1987-05-31','M','Sierra Leonean','SLID100053','saidu.jalloh53@gmail.com','+23276100053','Mechanic','Married','Individual'),
('CUS000054','Ramatu','Hawa','Turay','1996-09-20','F','Sierra Leonean','SLID100054','ramatu.turay54@gmail.com','+23276100054','Nurse','Single','Individual'),
('CUS000055','Alie','Sorie','Fofana','1992-12-11','M','Sierra Leonean','SLID100055','alie.fofana55@gmail.com','+23276100055','Sales Officer','Married','Individual'),
('CUS000056','Kadie','Adama','Conteh','1999-04-23','F','Sierra Leonean','SLID100056','kadie.conteh56@gmail.com','+23276100056','Student','Single','Individual'),
('CUS000057','Abubakar','Ibrahim','Sesay','1983-07-06','M','Sierra Leonean','SLID100057','abubakar.sesay57@gmail.com','+23276100057','Trader','Married','Individual'),
('CUS000058','Zainab','Mariama','Koroma','1991-10-18','F','Sierra Leonean','SLID100058','zainab.koroma58@gmail.com','+23276100058','Accountant','Single','Individual'),
('CUS000059','Sahr','Abdul','Kamara','1989-02-09','M','Sierra Leonean','SLID100059','sahr.kamara59@gmail.com','+23276100059','Banker','Married','Individual'),
('CUS000060','Aminata','Kadiatu','Bangura','1995-06-27','F','Sierra Leonean','SLID100060','aminata.bangura60@gmail.com','+23276100060','Teacher','Single','Individual'),

('CUS000061','Mohamed','Abdulai','Fofana','1985-11-14','M','Sierra Leonean','SLID100061','mohamed.fofana61@gmail.com','+23276100061','Engineer','Married','Individual'),
('CUS000062','Fatmata','Mabinty','Sesay','1997-03-22','F','Sierra Leonean','SLID100062','fatmata.sesay62@gmail.com','+23276100062','Nurse','Single','Individual'),
('CUS000063','Ibrahim','Sorie','Koroma','1990-08-16','M','Sierra Leonean','SLID100063','ibrahim.koroma63@gmail.com','+23276100063','IT Officer','Married','Individual'),
('CUS000064','Kadiatu','Hawa','Kamara','1994-01-05','F','Sierra Leonean','SLID100064','kadiatu.kamara64@gmail.com','+23276100064','Administrator','Single','Individual'),
('CUS000065','Brima','Mohamed','Turay','1988-06-12','M','Sierra Leonean','SLID100065','brima.turay65@gmail.com','+23276100065','Businessman','Married','Individual'),
('CUS000066','Adama','Mariam','Jalloh','1996-10-29','F','Sierra Leonean','SLID100066','adama.jalloh66@gmail.com','+23276100066','Pharmacist','Single','Individual'),
('CUS000067','Lansana','Abdul','Conteh','1984-04-18','M','Sierra Leonean','SLID100067','lansana.conteh67@gmail.com','+23276100067','Driver','Married','Individual'),
('CUS000068','Hawa','Fatmata','Fofana','1998-07-24','F','Sierra Leonean','SLID100068','hawa.fofana68@gmail.com','+23276100068','Student','Single','Individual'),
('CUS000069','Sorie','Ibrahim','Sesay','1992-12-02','M','Sierra Leonean','SLID100069','sorie.sesay69@gmail.com','+23276100069','Technician','Married','Individual'),
('CUS000070','Mariama','Kumba','Koroma','1993-05-13','F','Sierra Leonean','SLID100070','mariama.koroma70@gmail.com','+23276100070','Marketing Officer','Single','Individual'),

('CUS000071','Abdulai','Sorie','Bangura','1986-09-26','M','Sierra Leonean','SLID100071','abdulai.bangura71@gmail.com','+23276100071','Contractor','Married','Individual'),
('CUS000072','Isatu','Adama','Kamara','1995-02-18','F','Sierra Leonean','SLID100072','isatu.kamara72@gmail.com','+23276100072','Teacher','Single','Individual'),
('CUS000073','Musa','Ibrahim','Turay','1989-11-07','M','Sierra Leonean','SLID100073','musa.turay73@gmail.com','+23276100073','Accountant','Married','Individual'),
('CUS000074','Khadija','Mabinty','Conteh','1997-04-15','F','Sierra Leonean','SLID100074','khadija.conteh74@gmail.com','+23276100074','Nurse','Single','Individual'),
('CUS000075','Alhassan','Mohamed','Jalloh','1983-08-28','M','Sierra Leonean','SLID100075','alhassan.jalloh75@gmail.com','+23276100075','Businessman','Married','Individual'),
('CUS000076','Fatmata','Hawa','Sesay','1991-01-19','F','Sierra Leonean','SLID100076','fatmata.sesay76@gmail.com','+23276100076','Doctor','Married','Individual'),
('CUS000077','Sahr','Abdul','Koroma','1990-06-03','M','Sierra Leonean','SLID100077','sahr.koroma77@gmail.com','+23276100077','Banker','Single','Individual'),
('CUS000078','Aminata','Kumba','Bangura','1996-12-17','F','Sierra Leonean','SLID100078','aminata.bangura78@gmail.com','+23276100078','HR Officer','Single','Individual'),
('CUS000079','Ibrahim','Sorie','Kamara','1987-03-27','M','Sierra Leonean','SLID100079','ibrahim.kamara79@gmail.com','+23276100079','Engineer','Married','Individual'),
('CUS000080','Mabinty','Mariama','Fofana','1994-10-09','F','Sierra Leonean','SLID100080','mabinty.fofana80@gmail.com','+23276100080','Accountant','Single','Individual'),

('CUS000081','Samuel','Patrick','Williams','1988-05-20','M','Sierra Leonean','SLID100081','samuel.williams81@gmail.com','+23276100081','Lawyer','Married','Individual'),
('CUS000082','Esther','Marie','Cole','1992-09-14','F','Sierra Leonean','SLID100082','esther.cole82@gmail.com','+23276100082','Administrator','Single','Individual'),
('CUS000083','David','Michael','Johnson','1985-01-28','M','Sierra Leonean','SLID100083','david.johnson83@gmail.com','+23276100083','Manager','Married','Individual'),
('CUS000084','Grace','Amara','Taylor','1997-06-16','F','Sierra Leonean','SLID100084','grace.taylor84@gmail.com','+23276100084','Teacher','Single','Individual'),
('CUS000085','Robert','James','Smith','1989-11-23','M','Sierra Leonean','SLID100085','robert.smith85@gmail.com','+23276100085','IT Specialist','Married','Individual'),
('CUS000086','Mary','Elizabeth','Brown','1993-03-11','F','Sierra Leonean','SLID100086','mary.brown86@gmail.com','+23276100086','Nurse','Single','Individual'),
('CUS000087','Andrew','George','Davies','1986-07-05','M','Sierra Leonean','SLID100087','andrew.davies87@gmail.com','+23276100087','Architect','Married','Individual'),
('CUS000088','Lucy','Mariam','Roberts','1995-12-19','F','Sierra Leonean','SLID100088','lucy.roberts88@gmail.com','+23276100088','Designer','Single','Individual'),
('CUS000089','Thomas','Peter','Wilson','1984-04-07','M','Sierra Leonean','SLID100089','thomas.wilson89@gmail.com','+23276100089','Consultant','Married','Individual'),
('CUS000090','Rebecca','Sarah','Thomas','1991-08-31','F','Sierra Leonean','SLID100090','rebecca.thomas90@gmail.com','+23276100090','Pharmacist','Single','Individual'),

('CUS000091','Alusine','Mohamed','Sesay','1987-02-13','M','Sierra Leonean','SLID100091','alusine.sesay91@gmail.com','+23276100091','Businessman','Married','Individual'),
('CUS000092','Kadiatu','Hawa','Kamara','1998-05-26','F','Sierra Leonean','SLID100092','kadiatu.kamara92@gmail.com','+23276100092','Student','Single','Individual'),
('CUS000093','Abdul','Sorie','Jalloh','1990-10-08','M','Sierra Leonean','SLID100093','abdul.jalloh93@gmail.com','+23276100093','Engineer','Married','Individual'),
('CUS000094','Mariama','Fatmata','Koroma','1996-01-21','F','Sierra Leonean','SLID100094','mariama.koroma94@gmail.com','+23276100094','Teacher','Single','Individual'),
('CUS000095','Brima','Abdul','Turay','1985-06-18','M','Sierra Leonean','SLID100095','brima.turay95@gmail.com','+23276100095','Trader','Married','Individual'),
('CUS000096','Isatu','Mabinty','Fofana','1994-09-03','F','Sierra Leonean','SLID100096','isatu.fofana96@gmail.com','+23276100096','Accountant','Single','Individual'),
('CUS000097','Musa','Ibrahim','Conteh','1989-12-27','M','Sierra Leonean','SLID100097','musa.conteh97@gmail.com','+23276100097','Technician','Married','Individual'),
('CUS000098','Fatmata','Adama','Sesay','1997-04-10','F','Sierra Leonean','SLID100098','fatmata.sesay98@gmail.com','+23276100098','Nurse','Single','Individual'),
('CUS000099','Lansana','Sorie','Bangura','1983-08-22','M','Sierra Leonean','SLID100099','lansana.bangura99@gmail.com','+23276100099','Contractor','Married','Individual'),
('CUS000100','Aminata','Kumba','Jalloh','1992-11-16','F','Sierra Leonean','SLID100100','aminata.jalloh100@gmail.com','+23276100100','Marketing Officer','Single','Individual'),

('CUS000101','Mohamed','Abdul','Kamara','1988-03-04','M','Sierra Leonean','SLID100101','mohamed.kamara101@gmail.com','+23276100101','Banker','Married','Individual'),
('CUS000102','Hawa','Mariama','Koroma','1995-07-29','F','Sierra Leonean','SLID100102','hawa.koroma102@gmail.com','+23276100102','Administrator','Single','Individual'),
('CUS000103','Ibrahim','Sorie','Fofana','1986-10-12','M','Sierra Leonean','SLID100103','ibrahim.fofana103@gmail.com','+23276100103','Accountant','Married','Individual'),
('CUS000104','Khadija','Fatmata','Sesay','1998-02-25','F','Sierra Leonean','SLID100104','khadija.sesay104@gmail.com','+23276100104','Student','Single','Individual'),
('CUS000105','Sahr','Mohamed','Turay','1991-05-17','M','Sierra Leonean','SLID100105','sahr.turay105@gmail.com','+23276100105','Engineer','Married','Individual'),
('CUS000106','Adama','Hawa','Conteh','1993-09-08','F','Sierra Leonean','SLID100106','adama.conteh106@gmail.com','+23276100106','Teacher','Single','Individual'),
('CUS000107','Alhaji','Sorie','Bangura','1984-01-16','M','Sierra Leonean','SLID100107','alhaji.bangura107@gmail.com','+23276100107','Trader','Married','Individual'),
('CUS000108','Mabinty','Kadiatu','Kamara','1996-06-30','F','Sierra Leonean','SLID100108','mabinty.kamara108@gmail.com','+23276100108','Nurse','Single','Individual'),
('CUS000109','Abdulai','Ibrahim','Jalloh','1987-12-05','M','Sierra Leonean','SLID100109','abdulai.jalloh109@gmail.com','+23276100109','IT Officer','Married','Individual'),
('CUS000110','Zainab','Mariama','Fofana','1999-03-23','F','Sierra Leonean','SLID100110','zainab.fofana110@gmail.com','+23276100110','Student','Single','Individual'),

('CUS000111','Samuel','David','Cole','1985-08-14','M','Sierra Leonean','SLID100111','samuel.cole111@gmail.com','+23276100111','Manager','Married','Individual'),
('CUS000112','Esther','Kumba','Williams','1994-04-21','F','Sierra Leonean','SLID100112','esther.williams112@gmail.com','+23276100112','HR Officer','Single','Individual'),
('CUS000113','Joseph','Patrick','Johnson','1989-11-02','M','Sierra Leonean','SLID100113','joseph.johnson113@gmail.com','+23276100113','Lawyer','Married','Individual'),
('CUS000114','Hannah','Marie','Smith','1997-01-27','F','Sierra Leonean','SLID100114','hannah.smith114@gmail.com','+23276100114','Designer','Single','Individual'),
('CUS000115','George','Albert','Brown','1982-06-09','M','Sierra Leonean','SLID100115','george.brown115@gmail.com','+23276100115','Consultant','Married','Individual'),
('CUS000116','Joyce','Amara','Davies','1993-10-18','F','Sierra Leonean','SLID100116','joyce.davies116@gmail.com','+23276100116','Administrator','Single','Individual'),
('CUS000117','Daniel','Michael','Roberts','1988-02-11','M','Sierra Leonean','SLID100117','daniel.roberts117@gmail.com','+23276100117','Developer','Married','Individual'),
('CUS000118','Alice','Mary','Taylor','1995-05-24','F','Sierra Leonean','SLID100118','alice.taylor118@gmail.com','+23276100118','Accountant','Single','Individual'),
('CUS000119','Victor','James','Wilson','1990-09-15','M','Sierra Leonean','SLID100119','victor.wilson119@gmail.com','+23276100119','Business Analyst','Married','Individual'),
('CUS000120','Rebecca','Sarah','Thomas','1998-12-07','F','Sierra Leonean','SLID100120','rebecca.thomas120@gmail.com','+23276100120','Nurse','Single','Individual');


select * from customers;
alter table customers 
add column Branch_ID int;

alter table customers
add constraint fk_branch_id
foreign key (Branch_ID)
references branch(Branch_ID);

update customers
set branch_id = 28
where cus_id = 16;
