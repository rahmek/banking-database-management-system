CREATE TABLE loans (
    loan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    loan_number VARCHAR(30) NOT NULL UNIQUE,

    customer_id INT NOT NULL,

    account_id INT NOT NULL,

    loan_type ENUM('Personal','Business','Mortgage','Vehicle','Education','Agricultural','Emergency') NOT NULL,

    loan_amount DECIMAL(15,2) NOT NULL,

    interest_rate DECIMAL(5,2) NOT NULL,

    loan_term_months INT NOT NULL,

    monthly_payment DECIMAL(15,2),

    outstanding_balance DECIMAL(15,2) NOT NULL,

    loan_start_date DATE NOT NULL,

    loan_end_date DATE,

    loan_status ENUM('Pending','Approved','Active','Paid','Defaulted','Rejected') DEFAULT 'Pending',

    purpose VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (customer_id)
        REFERENCES customers(Cus_ID),

    FOREIGN KEY (account_id)
        REFERENCES accounts(Account_ID)
);

INSERT INTO loans
(
    loan_number,
    customer_id,
    account_id,
    loan_type,
    loan_amount,
    interest_rate,
    loan_term_months,
    monthly_payment,
    outstanding_balance,
    loan_start_date,
    loan_end_date,
    loan_status,
    purpose
)
VALUES
('LN000001', 1, 1, 'Personal', 50000.00, 8.50, 24, 2264.00, 42000.00, '2026-01-05', '2028-01-05', 'Active', 'Home improvement'),

('LN000002', 2, 2, 'Business', 150000.00, 10.00, 36, 4840.00, 135000.00, '2026-01-10', '2029-01-10', 'Active', 'Business expansion'),

('LN000003', 3, 3, 'Education', 30000.00, 6.50, 24, 13380.00, 18000.00, '2025-09-15', '2027-09-15', 'Active', 'University tuition'),

('LN000004', 4, 4, 'Vehicle', 85000.00, 9.00, 36, 2700.00, 76000.00, '2026-02-01', '2029-02-01', 'Approved', 'Vehicle purchase'),

('LN000005', 5, 5, 'Mortgage', 500000.00, 7.50, 120, 5935.00, 475000.00, '2026-01-20', '2036-01-20', 'Active', 'House purchase'),

('LN000006', 6, 6, 'Agricultural', 75000.00, 8.00, 36, 2350.00, 69000.00, '2026-02-10', '2029-02-10', 'Active', 'Agricultural business'),

('LN000007', 7, 7, 'Emergency', 15000.00, 5.00, 12, 1280.00, 8500.00, '2026-03-01', '2027-03-01', 'Active', 'Emergency expenses'),

('LN000008', 8, 8, 'Personal', 40000.00, 9.50, 24, 1830.00, 31000.00, '2026-01-25', '2028-01-25', 'Active', 'Family expenses'),

('LN000009', 9, 9, 'Business', 250000.00, 11.00, 48, 6460.00, 220000.00, '2025-12-10', '2029-12-10', 'Active', 'Business expansion'),

('LN000010', 10, 10, 'Education', 45000.00, 6.00, 36, 1369.00, 30000.00, '2026-02-15', '2029-02-15', 'Approved', 'University education'),

('LN000011', 11, 11, 'Vehicle', 95000.00, 9.25, 48, 2380.00, 88000.00, '2026-03-05', '2030-03-05', 'Active', 'Vehicle purchase'),

('LN000012', 12, 12, 'Personal', 25000.00, 8.00, 18, 1475.00, 18000.00, '2025-11-20', '2027-05-20', 'Active', 'Medical expenses'),

('LN000013', 13, 13, 'Mortgage', 650000.00, 7.25, 180, 5910.00, 620000.00, '2026-01-12', '2041-01-12', 'Active', 'Residential property'),

('LN000014', 14, 14, 'Agricultural', 120000.00, 8.75, 48, 2950.00, 110000.00, '2026-02-20', '2030-02-20', 'Active', 'Farm development'),

('LN000015', 15, 15, 'Business', 300000.00, 10.50, 60, 6450.00, 285000.00, '2026-01-30', '2031-01-30', 'Approved', 'Business investment'),

('LN000016', 16, 16, 'Personal', 35000.00, 9.00, 24, 1600.00, 27000.00, '2025-10-10', '2027-10-10', 'Active', 'Home renovation'),

('LN000017', 17, 17, 'Emergency', 10000.00, 5.50, 12, 855.00, 6000.00, '2026-03-10', '2027-03-10', 'Active', 'Emergency expenses'),

('LN000018', 18, 18, 'Education', 60000.00, 6.25, 48, 1415.00, 50000.00, '2026-01-18', '2030-01-18', 'Active', 'Higher education'),

('LN000019', 19, 19, 'Vehicle', 110000.00, 9.50, 60, 2300.00, 98000.00, '2026-02-05', '2031-02-05', 'Active', 'Commercial vehicle'),

('LN000020', 20, 20, 'Business', 180000.00, 10.25, 36, 5800.00, 160000.00, '2025-12-01', '2028-12-01', 'Active', 'Business equipment'),

('LN000021', 21, 21, 'Personal', 20000.00, 7.50, 12, 1740.00, 10000.00, '2025-08-15', '2026-08-15', 'Paid', 'Personal expenses'),

('LN000022', 22, 22, 'Agricultural', 90000.00, 8.50, 36, 2840.00, 75000.00, '2026-02-12', '2029-02-12', 'Active', 'Agricultural project'),

('LN000023', 23, 23, 'Mortgage', 450000.00, 7.75, 120, 5300.00, 430000.00, '2026-01-08', '2036-01-08', 'Active', 'House purchase'),

('LN000024', 24, 24, 'Education', 28000.00, 6.00, 24, 1240.00, 21000.00, '2025-09-01', '2027-09-01', 'Active', 'School fees'),

('LN000025', 25, 25, 'Emergency', 12000.00, 5.00, 12, 1025.00, 7000.00, '2026-03-15', '2027-03-15', 'Active', 'Emergency expenses'),

('LN000026', 26, 26, 'Business', 225000.00, 10.75, 48, 5800.00, 205000.00, '2026-01-22', '2030-01-22', 'Active', 'Business expansion'),

('LN000027', 27, 27, 'Personal', 55000.00, 8.25, 36, 1725.00, 48000.00, '2026-02-18', '2029-02-18', 'Active', 'Home renovation'),

('LN000028', 28, 28, 'Vehicle', 70000.00, 9.00, 36, 2225.00, 60000.00, '2026-01-28', '2029-01-28', 'Active', 'Vehicle purchase'),

('LN000029', 29, 29, 'Agricultural', 65000.00, 8.00, 24, 2950.00, 52000.00, '2025-12-20', '2027-12-20', 'Active', 'Farming project'),

('LN000030', 30, 30, 'Education', 35000.00, 6.50, 24, 1560.00, 25000.00, '2026-02-08', '2028-02-08', 'Approved', 'University tuition'),

('LN000031', 31, 31, 'Mortgage', 750000.00, 7.00, 240, 5810.00, 735000.00, '2026-01-15', '2046-01-15', 'Active', 'Residential property'),

('LN000032', 32, 32, 'Personal', 30000.00, 8.75, 18, 1810.00, 24000.00, '2026-03-02', '2027-09-02', 'Active', 'Family expenses'),

('LN000033', 33, 33, 'Business', 400000.00, 11.00, 60, 8700.00, 380000.00, '2026-01-05', '2031-01-05', 'Active', 'Business expansion'),

('LN000034', 34, 34, 'Emergency', 8000.00, 5.00, 12, 685.00, 4000.00, '2025-10-20', '2026-10-20', 'Active', 'Emergency expenses'),

('LN000035', 35, 35, 'Vehicle', 125000.00, 9.25, 60, 2600.00, 115000.00, '2026-02-25', '2031-02-25', 'Active', 'Commercial vehicle'),

('LN000036', 36, 36, 'Agricultural', 140000.00, 8.50, 48, 3450.00, 128000.00, '2026-01-19', '2030-01-19', 'Active', 'Agricultural investment'),

('LN000037', 37, 37, 'Personal', 45000.00, 8.00, 24, 2040.00, 35000.00, '2025-11-05', '2027-11-05', 'Active', 'Home improvement'),

('LN000038', 38, 38, 'Education', 50000.00, 6.25, 36, 1520.00, 42000.00, '2026-02-14', '2029-02-14', 'Active', 'Education expenses'),

('LN000039', 39, 39, 'Business', 275000.00, 10.50, 48, 7000.00, 250000.00, '2026-01-25', '2030-01-25', 'Approved', 'Business investment'),

('LN000040', 40, 40, 'Mortgage', 550000.00, 7.50, 180, 5090.00, 540000.00, '2026-02-02', '2041-02-02', 'Active', 'House construction'),

('LN000041', 41, 1, 'Vehicle', 80000.00, 9.00, 36, 2540.00, 70000.00, '2026-03-01', '2029-03-01', 'Active', 'Vehicle purchase'),

('LN000042', 42, 2, 'Agricultural', 100000.00, 8.25, 36, 3160.00, 90000.00, '2026-01-11', '2029-01-11', 'Active', 'Farm expansion'),

('LN000043', 43, 3, 'Personal', 22000.00, 7.75, 12, 1915.00, 11000.00, '2025-12-05', '2026-12-05', 'Active', 'Personal expenses'),

('LN000044', 44, 4, 'Emergency', 18000.00, 5.50, 18, 1045.00, 9000.00, '2026-02-28', '2027-08-28', 'Active', 'Emergency expenses'),

('LN000045', 45, 5, 'Business', 350000.00, 10.00, 60, 7435.00, 320000.00, '2026-01-07', '2031-01-07', 'Active', 'Business expansion'),

('LN000046', 46, 6, 'Education', 40000.00, 6.00, 24, 1775.00, 30000.00, '2025-09-20', '2027-09-20', 'Active', 'University tuition'),

('LN000047', 47, 7, 'Vehicle', 105000.00, 9.50, 48, 2650.00, 95000.00, '2026-02-16', '2030-02-16', 'Active', 'Vehicle purchase'),

('LN000048', 48, 8, 'Mortgage', 600000.00, 7.25, 180, 5450.00, 585000.00, '2026-01-21', '2041-01-21', 'Active', 'House purchase'),

('LN000049', 49, 9, 'Agricultural', 85000.00, 8.00, 36, 2680.00, 72000.00, '2026-02-22', '2029-02-22', 'Active', 'Agricultural project'),

('LN000050', 50, 10, 'Personal', 60000.00, 8.50, 36, 1900.00, 52000.00, '2026-03-05', '2029-03-05', 'Active', 'Home renovation');

select * from loans;

SELECT
    loans.loan_number,
    loan_amount,
    outstanding_balance,
    loan_status
    outstanding_balance


FROM loans

WHERE loan_id between 51 and 60;