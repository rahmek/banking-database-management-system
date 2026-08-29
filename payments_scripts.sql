use bank_db;
CREATE TABLE payments (
    payment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    payment_number VARCHAR(30) NOT NULL UNIQUE,
    transaction_id INT NOT NULL,
    account_id INT NOT NULL,
    payment_type VARCHAR(30) NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    beneficiary_name VARCHAR(100),
    beneficiary_account VARCHAR(50),
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_status VARCHAR(20) DEFAULT 'Completed',
    description VARCHAR(255),
    reference_number VARCHAR(50) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (transaction_id)
        REFERENCES transactions(transaction_id),

    FOREIGN KEY (account_id)
        REFERENCES accounts(account_id)
);

INSERT INTO payments
(
    payment_number,
    transaction_id,
    account_id,
    payment_type,
    amount,
    beneficiary_name,
    beneficiary_account,
    payment_status,
    description,
    reference_number
)
VALUES
(
    'PAY000001',
    7,
    2,
    'Utility Bill',
    450.00,
    'EDSA',
    'EDSA001',
    'Completed',
    'Electricity bill payment',
    'PREF000001'
),
(
    'PAY000002',
    14,
    1,
    'Utility Bill',
    750.00,
    'Electricity Distribution',
    'EDSA002',
    'Completed',
    'Electricity bill payment',
    'PREF000002'
),
(
    'PAY000003',
    18,
    5,
    'School Fees',
    1200.00,
    'University Account',
    'UNI000123',
    'Completed',
    'School fee payment',
    'PREF000003'
),
(
    'PAY000004',
    25,
    2,
    'Internet',
    350.00,
    'Internet Provider',
    'ISP000456',
    'Completed',
    'Internet subscription payment',
    'PREF000004'
),
(
    'PAY000005',
    32,
    9,
    'Utility Bill',
    950.00,
    'Water Company',
    'WATER001',
    'Completed',
    'Water bill payment',
    'PREF000005'
),
(
    'PAY000006',
    43,
    10,
    'Loan Repayment',
    1500.00,
    'Bank Loan Department',
    'LOAN000789',
    'Completed',
    'Monthly loan repayment',
    'PREF000006'
),
(
    'PAY000007',
    46,
    3,
    'Insurance',
    850.00,
    'Insurance Company',
    'INS000321',
    'Completed',
    'Insurance premium payment',
    'PREF000007'
),
(
    'PAY000008',
    50,
    7,
    'Mobile Payment',
    500.00,
    'Mobile Network',
    'MOB000654',
    'Completed',
    'Mobile service payment',
    'PREF000008'
),
('PAY000009', 4, 1, 'Utility Bill', 625.00, 'EDSA', 'EDSA003', 'Completed', 'Electricity bill payment', 'PREF000009'),
('PAY000010', 5, 2, 'School Fees', 1800.00, 'University of Sierra Leone', 'USL001245', 'Completed', 'School fee payment', 'PREF000010'),
('PAY000011', 6, 3, 'Internet', 450.00, 'Africell', 'AFR000321', 'Completed', 'Internet subscription', 'PREF000011'),
('PAY000012', 7, 4, 'Insurance', 1200.00, 'Insurance Company', 'INS000421', 'Completed', 'Insurance premium', 'PREF000012'),
('PAY000013', 18, 5, 'Loan Repayment', 2500.00, 'Bank Loan Department', 'LOAN001002', 'Completed', 'Monthly loan repayment', 'PREF000013'),
('PAY000014', 19, 6, 'Rent', 3500.00, 'Property Management Ltd', 'RENT000125', 'Completed', 'Monthly house rent', 'PREF000014'),
('PAY000015', 10, 7, 'Mobile Payment', 300.00, 'Orange Sierra Leone', 'ORG000456', 'Completed', 'Mobile service payment', 'PREF000015'),
('PAY000016', 11, 8, 'Supplier Payment', 4200.00, 'Kabba Supplies Ltd', 'SUP000789', 'Completed', 'Supplier invoice payment', 'PREF000016'),
('PAY000017', 2, 9, 'Utility Bill', 775.00, 'Guma Valley Water', 'GVW000221', 'Completed', 'Water bill payment', 'PREF000017'),
('PAY000018',3, 10, 'Online Purchase', 950.00, 'Online Store Ltd', 'ONL000345', 'Completed', 'Online purchase payment', 'PREF000018'),

('PAY000019', 4, 1, 'School Fees', 2200.00, 'Milton Margai Technical University', 'MMTU00111', 'Completed', 'Tuition payment', 'PREF000019'),
('PAY000020', 15, 2, 'Utility Bill', 540.00, 'EDSA', 'EDSA004', 'Completed', 'Electricity bill payment', 'PREF000020'),
('PAY000021', 16, 3, 'Loan Repayment', 1750.00, 'Bank Loan Department', 'LOAN001003', 'Completed', 'Monthly loan repayment', 'PREF000021'),
('PAY000022', 27, 4, 'Internet', 500.00, 'Orange Sierra Leone', 'ORG000512', 'Completed', 'Internet subscription', 'PREF000022'),
('PAY000023', 28, 5, 'Insurance', 950.00, 'Insurance Company', 'INS000422', 'Completed', 'Monthly insurance premium', 'PREF000023'),
('PAY000024', 29, 6, 'Utility Bill', 680.00, 'Guma Valley Water', 'GVW000222', 'Completed', 'Water bill payment', 'PREF000024'),
('PAY000025', 30, 7, 'Bank Transfer', 4500.00, 'Sierra Trading Ltd', 'STL000123', 'Completed', 'Business payment', 'PREF000025'),
('PAY000026', 31, 8, 'School Fees', 1600.00, 'University of Sierra Leone', 'USL001246', 'Completed', 'School fee payment', 'PREF000026'),
('PAY000027', 42, 9, 'Mobile Payment', 250.00, 'Africell', 'AFR000322', 'Completed', 'Mobile service payment', 'PREF000027'),
('PAY000028', 23, 10, 'Supplier Payment', 3800.00, 'Freetown Suppliers Ltd', 'SUP000790', 'Completed', 'Supplier payment', 'PREF000028'),

('PAY000029', 50, 1, 'Rent', 3000.00, 'Property Management Ltd', 'RENT000126', 'Completed', 'Monthly house rent', 'PREF000029'),
('PAY000030', 5, 2, 'Online Purchase', 1250.00, 'Online Store Ltd', 'ONL000346', 'Completed', 'Online purchase', 'PREF000030'),
('PAY000031', 36, 3, 'Utility Bill', 720.00, 'EDSA', 'EDSA005', 'Completed', 'Electricity bill payment', 'PREF000031'),
('PAY000032', 37, 4, 'Loan Repayment', 3000.00, 'Bank Loan Department', 'LOAN001004', 'Completed', 'Loan repayment', 'PREF000032'),
('PAY000033', 38, 5, 'School Fees', 1950.00, 'Njala University', 'NJA001122', 'Completed', 'Tuition payment', 'PREF000033'),
('PAY000034', 49, 6, 'Internet', 425.00, 'Africell', 'AFR000323', 'Completed', 'Internet subscription', 'PREF000034'),
('PAY000035', 40, 7, 'Insurance', 1100.00, 'Insurance Company', 'INS000423', 'Completed', 'Insurance premium', 'PREF000035'),
('PAY000036', 1, 8, 'Utility Bill', 615.00, 'Guma Valley Water', 'GVW000223', 'Completed', 'Water bill payment', 'PREF000036'),
('PAY000037', 2, 9, 'Supplier Payment', 2750.00, 'Kallon Trading Ltd', 'SUP000791', 'Completed', 'Supplier invoice payment', 'PREF000037'),
('PAY000038', 3, 10, 'Mobile Payment', 400.00, 'Orange Sierra Leone', 'ORG000513', 'Completed', 'Mobile service payment', 'PREF000038'),

('PAY000039', 14, 1, 'Bank Transfer', 6500.00, 'Freetown Business Ltd', 'FTB000111', 'Completed', 'Business transfer payment', 'PREF000039'),
('PAY000040', 15, 2, 'Utility Bill', 830.00, 'EDSA', 'EDSA006', 'Completed', 'Electricity bill payment', 'PREF000040'),
('PAY000041', 16, 3, 'School Fees', 2400.00, 'University of Makeni', 'UNIMAK0012', 'Completed', 'Tuition payment', 'PREF000041'),
('PAY000042', 17, 4, 'Rent', 4000.00, 'Property Management Ltd', 'RENT000127', 'Completed', 'Monthly rent payment', 'PREF000042'),
('PAY000043', 22, 5, 'Internet', 475.00, 'Orange Sierra Leone', 'ORG000514', 'Completed', 'Internet subscription', 'PREF000043'),
('PAY000044', 23, 6, 'Loan Repayment', 2250.00, 'Bank Loan Department', 'LOAN001005', 'Completed', 'Monthly loan repayment', 'PREF000044'),
('PAY000045', 24, 7, 'Insurance', 1350.00, 'Insurance Company', 'INS000424', 'Completed', 'Insurance premium', 'PREF000045'),
('PAY000046', 25, 8, 'Online Purchase', 875.00, 'Online Store Ltd', 'ONL000347', 'Completed', 'Online purchase', 'PREF000046'),
('PAY000047', 26, 9, 'Utility Bill', 590.00, 'Guma Valley Water', 'GVW000224', 'Completed', 'Water bill payment', 'PREF000047'),
('PAY000048', 27, 10, 'Supplier Payment', 5100.00, 'Kabba Supplies Ltd', 'SUP000792', 'Completed', 'Supplier payment', 'PREF000048'),

('PAY000049', 28, 1, 'Mobile Payment', 350.00, 'Africell', 'AFR000324', 'Completed', 'Mobile service payment', 'PREF000049'),
('PAY000050', 29, 2, 'Bank Transfer', 7200.00, 'Sierra Trading Ltd', 'STL000124', 'Completed', 'Business payment', 'PREF000050'),
('PAY000051', 20, 3, 'Utility Bill', 665.00, 'EDSA', 'EDSA007', 'Completed', 'Electricity bill payment', 'PREF000051'),
('PAY000052', 29, 4, 'School Fees', 1750.00, 'University of Sierra Leone', 'USL001247', 'Completed', 'School fee payment', 'PREF000052'),
('PAY000053', 24, 5, 'Loan Repayment', 2800.00, 'Bank Loan Department', 'LOAN001006', 'Completed', 'Monthly loan repayment', 'PREF000053'),
('PAY000054', 34, 6, 'Rent', 3200.00, 'Property Management Ltd', 'RENT000128', 'Completed', 'Monthly rent payment', 'PREF000054'),
('PAY000055', 30, 7, 'Internet', 550.00, 'Orange Sierra Leone', 'ORG000515', 'Completed', 'Internet subscription', 'PREF000055'),
('PAY000056', 50, 8, 'Insurance', 1050.00, 'Insurance Company', 'INS000425', 'Completed', 'Insurance premium', 'PREF000056'),
('PAY000057', 10, 9, 'Online Purchase', 1450.00, 'Online Store Ltd', 'ONL000348', 'Completed', 'Online purchase', 'PREF000057'),
('PAY000058', 11, 10, 'Supplier Payment', 4600.00, 'Freetown Suppliers Ltd', 'SUP000793', 'Completed', 'Supplier invoice payment', 'PREF000058');

/*Find the total amount paid by each account:*/
SELECT
    account_id,
    SUM(amount) AS total_payments
FROM payments
GROUP BY account_id
ORDER BY total_payments DESC;

SELECT
    payment_type,
    COUNT(*) AS number_of_payments,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_type
ORDER BY total_amount DESC;