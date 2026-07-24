-- ==========================================
-- Remediation 1
-- Add Charlotte's missing email
-- ==========================================

UPDATE employees
SET email = 'charlotte.green@acme.com'
WHERE employee_id = 'EMP003';

-- ==========================================
-- Remediation 2
-- Correct Emily's client ID
-- ==========================================

UPDATE eligibility
SET client_id = 'CL001'
WHERE employee_id = 'EMP005';

-- ==========================================
-- Remediation 3
-- Remove duplicate employee record
-- ==========================================

DELETE FROM employees
WHERE employee_record_id =
(
    SELECT MAX(employee_record_id)
    FROM employees
    WHERE employee_id = 'EMP005'
);

-- ==========================================
-- Remediation 4
-- Create missing user accounts
-- ==========================================

INSERT INTO user_accounts
(employee_id,email,account_status,created_date)

VALUES
('EMP003','charlotte.green@acme.com','Active','2026-07-20'),
('EMP005','emily.scott@acme.com','Active','2026-07-20');