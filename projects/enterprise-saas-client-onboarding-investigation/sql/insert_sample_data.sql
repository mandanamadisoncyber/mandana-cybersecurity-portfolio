INSERT INTO clients
VALUES
('CL001','Acme Health Ltd','Active','2026-07-20');

INSERT INTO employees
(employee_id, client_id, first_name, last_name, email, employment_status)
VALUES
('EMP001','CL001','Alice','Brown','alice.brown@acme.com','Active'),
('EMP002','CL001','Ben','Taylor','ben.taylor@acme.com','Active'),
('EMP003','CL001','Charlotte','Green',NULL,'Active'),
('EMP004','CL001','David','Wilson','david.wilson@acme.com','Inactive'),
('EMP005','CL001','Emily','Scott','emily.scott@acme.com','Active'),
('EMP005','CL001','Emily','Scott','emily.scott@acme.com','Active');

INSERT INTO eligibility
(employee_id, client_id, eligible, effective_date)
VALUES
('EMP001', 'CL001', 1, '2026-07-20'),
('EMP002', 'CL001', 1, '2026-07-20'),
('EMP003', 'CL001', 1, '2026-07-20'),
('EMP004', 'CL001', 1, '2026-07-20'),
('EMP005', 'CL999', 1, '2026-07-20');

INSERT INTO user_accounts
(employee_id, email, account_status, created_date)
VALUES
('EMP001', 'alice.brown@acme.com', 'Active', '2026-07-20'),
('EMP002', 'ben.taylor@acme.com', 'Active', '2026-07-20'),
('EMP004', 'david.wilson@acme.com', 'Inactive', '2026-07-20');

INSERT INTO login_events
(employee_id, event_time, status, failure_reason)
VALUES
('EMP001', '2026-07-21 09:00:00', 'SUCCESS', NULL),
('EMP002', '2026-07-21 09:05:00', 'FAILED', 'Invalid password'),
('EMP002', '2026-07-21 09:06:00', 'FAILED', 'Invalid password'),
('EMP002', '2026-07-21 09:07:00', 'FAILED', 'Invalid password'),
('EMP003', '2026-07-21 09:10:00', 'FAILED', 'Account not found'),
('EMP003', '2026-07-21 09:11:00', 'FAILED', 'Account not found'),
('EMP004', '2026-07-21 09:15:00', 'FAILED', 'Account inactive'),
('EMP005', '2026-07-21 09:20:00', 'FAILED', 'Account not found');