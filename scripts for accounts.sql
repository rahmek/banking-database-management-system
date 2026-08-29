
use bank_db;

CREATE TABLE Accounts (
    Account_ID INT NOT NULL AUTO_INCREMENT,
    Account_Number VARCHAR(20) NOT NULL UNIQUE,
    Cus_ID INT NOT NULL,
    Currency VARCHAR(3) NOT NULL DEFAULT 'SLE',
    Balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    Account_Status VARCHAR(20) NOT NULL DEFAULT 'Active',
    Opening_Date DATE NOT NULL DEFAULT (CURRENT_DATE),
    Closing_Date DATE NULL,
    Created_At TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (Account_ID)
);


INSERT INTO Accounts
(Account_Number, Cus_ID, Currency, Balance, Account_Status,account_type)
VALUES
('10000000040', 23, 'SLE', 2500.00, 'Active','savings'),
('10000000024', 24, 'USD', 15000.00, 'Active','current'),
('10000000025', 25, 'SLE', 7500.00, 'Active','savings'),
('10000000026', 26, 'USD', 1200.00, 'Active','savings'),
('10000000027',27, 'SLE', 500.00, 'Active','savings'),
('10000000028', 28, 'SLE', 27000.00, 'Active','savings'),
('10000000029', 29, 'SLE', 3500.00, 'Active','current'),
('10000000030', 30, 'SLE', 8500.00, 'Active','savings'),
('10000000031', 31, 'USD', 100.00, 'Active','current'),
('10000000032', 32, 'SLE', 1000.00, 'Active','savings'),
('10000000033', 33, 'SLE', 2500.00, 'Active','savings'),
('10000000034', 34, 'USD', 15000.00, 'Active','savings'),
('10000000035', 35, 'SLE', 7500.00, 'Active','savings'),
('10000000036', 36, 'USD', 1200.00, 'Active','savings'),
('10000000037',37, 'SLE', 5000.00, 'Active','savings'),
('10000000038', 38, 'SLE', 200.00, 'Active','savings');

select * from accounts;

alter table accounts 
add column Branch_ID int;

alter table accounts
add constraint branch_ID
foreign key (branch_ID)
references branch (branch_id);

update accounts
set branch_id = 2
where account_id =29;
