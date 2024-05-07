
SELECT * FROM bank_loan_data;

/* Total Loan application */
SELECT COUNT(id) AS Total_Loan_Application
FROM bank_loan_data;

/* MTD Loan Applications */
SELECT COUNT(id) AS MTD_Loan_Application
FROM bank_loan_data
WHERE month(issue_date) = 12;

SELECT COUNT(id) AS PMTD_Loan_Application
FROM bank_loan_data
WHERE month(issue_date) = 11;

/* (MTD-PMTD)/PMTD*/

DESCRIBE bank_loan_data;
ALTER TABLE bank_loan_data
MODIFY COLUMN issue_date DATE;
UPDATE bank_loan_data
SET issue_date = STR_TO_DATE(issue_date, '%d-%m-%Y');

Select sum(loan_amount) as MTD_Total_Funded_Amount From bank_loan_data
WHERE MONTH(issue_date) = 12;

Select sum(loan_amount) as PMTD_Total_Funded_Amount From bank_loan_data
WHERE MONTH(issue_date) = 11;

SELECT sum(total_payment) AS Total_Amount_Received FROM bank_loan_data
where month(issue_date)=12;

SELECT round(AVG(int_rate),5) *100  AS Avg_Interest_Rate FROM bank_loan_data;

SELECT round(AVG(int_rate),5) *100  AS PMTD_Avg_Interest_Rate FROM bank_loan_data
where month(issue_date)=11;

select * from bank_loan_data;
select avg(dti)*100 AS Avg_DTI from bank_loan_data;

select avg(dti)*100 AS MTD_Avg_DTI from bank_loan_data
where month(issue_date)=12;

select avg(dti)*100 AS PMTD_Avg_DTI from bank_loan_data
where month(issue_date)=11;





