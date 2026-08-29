use bank_db;
CREATE TABLE departments (
    Department_ID INT NOT NULL AUTO_INCREMENT,
    Department_Code VARCHAR(10) NOT NULL UNIQUE,
    Department_Name VARCHAR(100) NOT NULL UNIQUE,
    Description VARCHAR(255),
    Department_Status VARCHAR(20) DEFAULT 'Active',
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (Department_ID)
);

INSERT INTO departments
(Department_Code, Department_Name, Description)
VALUES
('ADM', 'Administration', 'Handles general administration and organizational management'),
('HR', 'Human Resources', 'Manages recruitment, employee welfare and staff development'),
('IT', 'Information Technology', 'Manages banking systems, networks, databases and technical infrastructure'),
('FIN', 'Finance', 'Manages financial reporting, budgeting and financial controls'),
('ACC', 'Accounts', 'Handles accounting records and financial transactions'),
('OPS', 'Operations', 'Manages daily banking operations and internal processes'),
('CUST', 'Customer Service', 'Handles customer enquiries, complaints and support'),
('CRD', 'Credit', 'Manages credit assessment and credit-related activities'),
('LON', 'Loans', 'Handles loan applications, processing and monitoring'),
('RISK', 'Risk Management', 'Identifies and manages financial and operational risks'),
('COMP', 'Compliance', 'Ensures the bank complies with laws, regulations and policies'),
('AUD', 'Internal Audit', 'Conducts independent reviews of banking processes and controls'),
('TRE', 'Treasury', 'Manages liquidity, investments and financial market activities'),
('MKT', 'Marketing', 'Handles marketing, advertising and customer acquisition'),
('LEG', 'Legal', 'Provides legal advice and manages legal matters'),
('SEC', 'Security', 'Manages physical and information security'),
('DIG', 'Digital Banking', 'Manages online, mobile and other digital banking services'),
('BRN', 'Branch Banking', 'Manages branch-level banking operations'),
('AML', 'AML/KYC', 'Manages anti-money laundering and customer verification activities'),
('PROC', 'Procurement', 'Manages purchasing, suppliers and procurement activities');


select * from departments
