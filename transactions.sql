
USE BANK_DB;

CREATE TABLE transactions (
    transaction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     transaction_number VARCHAR(30) NOT NULL UNIQUE,
	account_id INT NOT NULL,
	cus_id int not null,
     transaction_type ENUM('Deposit','Withdrawal','Transfer','Payment','ATM','Fee','Interest') NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),
    transaction_status ENUM('Pending','Completed','Failed','Rever-sed') DEFAULT 'Completed',
    reference_number VARCHAR(50) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),
      FOREIGN KEY (cus_id)
        REFERENCES customers(cus_id)    
);

INSERT INTO transactions
(
    transaction_number,
    account_id,
    cus_id,
    transaction_type,
    amount,
    transaction_date,
    description,
    transaction_status,
    reference_number
)
VALUES
('TXN000004', 1, 1, 'Deposit', 2500.00, '2026-01-05 09:15:00', 'Cash deposit', 'Completed', 'REF000004'),
('TXN000005', 2, 2, 'Withdrawal', 800.00, '2026-01-05 11:30:00', 'ATM withdrawal', 'Completed', 'REF000005'),
('TXN000006', 3, 3, 'Transfer', 3500.00, '2026-01-06 14:20:00', 'Transfer to another account', 'Completed', 'REF000006'),
('TXN000007', 4, 4, 'Payment', 450.00, '2026-01-07 10:05:00', 'Utility bill payment', 'Completed', 'REF000007'),
('TXN000008', 5, 5, 'Deposit', 7500.00, '2026-01-08 15:40:00', 'Salary deposit', 'Completed', 'REF000008'),
('TXN000009', 6, 6, 'ATM', 1200.00, '2026-01-09 16:25:00', 'ATM cash withdrawal', 'Completed', 'REF000009'),
('TXN000010', 7, 7, 'Fee', 50.00, '2026-01-10 08:45:00', 'Monthly account fee', 'Completed', 'REF000010'),
('TXN000011', 8, 8, 'Deposit', 4200.00, '2026-01-11 12:10:00', 'Cash deposit', 'Completed', 'REF000011'),
('TXN000012', 9, 9, 'Withdrawal', 1500.00, '2026-01-12 13:35:00', 'Cash withdrawal', 'Completed', 'REF000012'),
('TXN000013', 10,10,'Interest', 325.50, '2026-01-13 09:00:00', 'Monthly interest credit', 'Completed', 'REF000013'),

('TXN000014', 1, 1, 'Payment', 750.00, '2026-01-15 10:20:00', 'Electricity bill payment', 'Completed', 'REF000014'),
('TXN000015', 2, 2, 'Deposit', 3000.00, '2026-01-16 14:45:00', 'Cash deposit', 'Completed', 'REF000015'),
('TXN000016', 3, 3, 'Withdrawal', 650.00, '2026-01-17 11:15:00', 'Branch withdrawal', 'Completed', 'REF000016'),
('TXN000017', 4, 4, 'Transfer', 5000.00, '2026-01-18 15:30:00', 'Internal transfer', 'Completed', 'REF000017'),
('TXN000018', 5, 5, 'Payment', 1200.00, '2026-01-19 09:50:00', 'School fee payment', 'Completed', 'REF000018'),
('TXN000019', 6, 6, 'Deposit', 6800.00, '2026-01-20 13:20:00', 'Business deposit', 'Completed', 'REF000019'),
('TXN000020', 7, 7, 'Withdrawal', 900.00, '2026-01-21 16:05:00', 'ATM withdrawal', 'Completed', 'REF000020'),
('TXN000021', 8, 8, 'Fee', 75.00, '2026-01-22 08:30:00', 'Service charge', 'Completed', 'REF000021'),
('TXN000022', 9, 9, 'Transfer', 2250.00, '2026-01-23 12:40:00', 'Account transfer', 'Completed', 'REF000022'),
('TXN000023', 10,10, 'Deposit', 9500.00, '2026-01-24 10:10:00', 'Salary deposit', 'Completed', 'REF000023'),

('TXN000024', 1, 1, 'ATM', 500.00, '2026-01-26 17:15:00', 'ATM withdrawal', 'Completed', 'REF000024'),
('TXN000025', 2, 2, 'Payment', 350.00, '2026-01-27 11:45:00', 'Internet bill payment', 'Completed', 'REF000025'),
('TXN000026', 3, 3,'Deposit', 2800.00, '2026-01-28 14:05:00', 'Cash deposit', 'Completed', 'REF000026'),
('TXN000027', 4, 4,'Withdrawal', 1100.00, '2026-01-29 09:25:00', 'Cash withdrawal', 'Completed', 'REF000027'),
('TXN000028', 5, 5,'Transfer', 4100.00, '2026-01-30 15:55:00', 'Transfer to beneficiary', 'Completed', 'REF000028'),
('TXN000029', 6, 6,'Interest', 450.75, '2026-02-01 08:00:00', 'Monthly interest credit', 'Completed', 'REF000029'),
('TXN000030', 7, 7, 'Deposit', 5500.00, '2026-02-02 10:35:00', 'Cash deposit', 'Completed', 'REF000030'),
('TXN000031', 8, 8,'Withdrawal', 700.00, '2026-02-03 13:15:00', 'ATM withdrawal', 'Completed', 'REF000031'),
('TXN000032', 9, 9, 'Payment', 950.00, '2026-02-04 16:40:00', 'Utility payment', 'Completed', 'REF000032'),
('TXN000033', 10, 10, 'Transfer', 6000.00, '2026-02-05 12:00:00', 'Business transfer', 'Completed', 'REF000033'),

('TXN000034', 1, 1, 'Deposit', 8000.00, '2026-02-07 09:30:00', 'Salary deposit', 'Completed', 'REF000034'),
('TXN000035', 2, 2, 'Fee', 100.00, '2026-02-08 08:45:00', 'Account maintenance fee', 'Completed', 'REF000035'),
('TXN000036', 3, 3, 'ATM', 1300.00, '2026-02-09 14:25:00', 'ATM withdrawal', 'Completed', 'REF000036'),
('TXN000037', 4, 4, 'Deposit', 4700.00, '2026-02-10 11:50:00', 'Cash deposit', 'Completed', 'REF000037'),
('TXN000038', 5, 5, 'Payment', 600.00, '2026-02-11 15:10:00', 'Water bill payment', 'Completed', 'REF000038'),
('TXN000039', 6, 6, 'Transfer', 2750.00, '2026-02-12 10:15:00', 'Internal transfer', 'Completed', 'REF000039'),
('TXN000040', 7, 7, 'Withdrawal', 450.00, '2026-02-13 13:40:00', 'Cash withdrawal', 'Completed', 'REF000040'),
('TXN000041', 8, 8, 'Interest', 280.25, '2026-02-14 09:05:00', 'Monthly interest credit', 'Completed', 'REF000041'),
('TXN000042', 9, 9, 'Deposit', 6200.00, '2026-02-15 16:20:00', 'Business deposit', 'Completed', 'REF000042'),
('TXN000043', 10, 10, 'Payment', 1500.00, '2026-02-16 12:35:00', 'Loan repayment', 'Completed', 'REF000043'),

('TXN000044', 1, 1, 'Withdrawal', 2000.00, '2026-02-18 10:00:00', 'Branch withdrawal', 'Completed', 'REF000044'),
('TXN000045', 2, 2, 'Deposit', 3500.00, '2026-02-19 14:15:00', 'Cash deposit', 'Completed', 'REF000045'),
('TXN000046', 3, 3, 'Payment', 850.00, '2026-02-20 11:30:00', 'Insurance payment', 'Completed', 'REF000046'),
('TXN000047', 4, 4, 'ATM', 900.00, '2026-02-21 17:05:00', 'ATM withdrawal', 'Completed', 'REF000047'),
('TXN000048', 5, 5, 'Transfer', 3200.00, '2026-02-22 09:45:00', 'Transfer to another account', 'Completed', 'REF000048'),
('TXN000049', 6, 6, 'Deposit', 7200.00, '2026-02-23 13:00:00', 'Salary deposit', 'Completed', 'REF000049'),
('TXN000050', 7, 7,'Payment', 500.00, '2026-02-24 15:25:00', 'Mobile money payment', 'Completed', 'REF000050'),
('TXN000051', 8, 8, 'Withdrawal', 1250.00, '2026-02-25 10:40:00', 'Cash withdrawal', 'Completed', 'REF000051'),
('TXN000052', 9, 9 ,'Fee', 60.00, '2026-02-26 08:20:00', 'Transaction fee', 'Completed', 'REF000052'),
('TXN000053', 10, 10, 'Interest', 520.00, '2026-02-27 09:15:00', 'Monthly interest credit', 'Completed', 'REF000053');

select * from transactions