-- ==========================================
-- Investigation 1
-- Employees with Missing Email Addresses
-- ==========================================

SELECT
    employee_id,
    first_name,
    last_name,
    email
FROM employees
WHERE email IS NULL
   OR email = '';
   
   -- ==========================================
   -- Investigation 2
   -- Eligible Users Without Accounts
   -- ==========================================
   
   SELECT
       e.employee_id,
       e.client_id,
       emp.first_name,
       emp.last_name,
       emp.email
   FROM eligibility e
   JOIN employees emp
       ON e.employee_id = emp.employee_id
   LEFT JOIN user_accounts u
       ON e.employee_id = u.employee_id
   WHERE e.eligible = 1
     AND u.employee_id IS NULL;
	 
	 -- ==========================================
	 -- Investigation 3
	 -- Users with Repeated Failed Login Attempts
	 -- ==========================================

	 SELECT
	     employee_id,
	     COUNT(*) AS failed_attempts
	 FROM login_events
	 WHERE status = 'FAILED'
	 GROUP BY employee_id
	 ORDER BY failed_attempts DESC;
	 
	 -- ==========================================
	 -- Investigation 4
	 -- Authentication Failure Reasons
	 -- ==========================================

	 SELECT
	     failure_reason,
	     COUNT(*) AS occurrences
	 FROM login_events
	 WHERE status = 'FAILED'
	 GROUP BY failure_reason
	 ORDER BY occurrences DESC;
	 
	 -- ==========================================
	 -- Investigation 5
	 -- Validate Eligible Users Without Accounts
	 -- ==========================================

	 SELECT
	     e.employee_id,
	     e.client_id,
	     emp.first_name,
	     emp.last_name,
	     emp.email
	 FROM eligibility e
	 JOIN employees emp
	     ON e.employee_id = emp.employee_id
	 LEFT JOIN user_accounts u
	     ON e.employee_id = u.employee_id
	 WHERE e.eligible = 1
	   AND emp.employment_status = 'Active'
	   AND u.employee_id IS NULL;
		 
		 -- ==========================================
		 -- Investigation 6
		 -- Check for Duplicate Employees
		 -- ==========================================

		 SELECT
		     employee_id,
		     COUNT(*) AS record_count
		 FROM employees
		 GROUP BY employee_id
		 HAVING COUNT(*) > 1;
		 
		 
		 -- ==========================================
		 -- Remediation checks
		 -- ==========================================
		 
		 SELECT
		     employee_id,
		     first_name,
		     last_name,
		     email
		 FROM employees
		 WHERE email IS NULL
		    OR email = '';
			
			
			SELECT
			    employee_id,
			    COUNT(*) AS record_count
			FROM employees
			GROUP BY employee_id
			HAVING COUNT(*) > 1;
		 
		 
			SELECT
			    e.employee_id,
			    e.client_id,
			    emp.first_name,
			    emp.last_name,
			    emp.email
			FROM eligibility e
			JOIN employees emp
			    ON e.employee_id = emp.employee_id
			LEFT JOIN user_accounts u
			    ON e.employee_id = u.employee_id
			WHERE e.eligible = 1
			  AND emp.employment_status = 'Active'
			  AND u.employee_id IS NULL;