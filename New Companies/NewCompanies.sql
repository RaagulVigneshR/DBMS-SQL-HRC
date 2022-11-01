SELECT c.company_code, c.founder, COUNT(DISTINCT e.lead_manager_code), COUNT(DISTINCT e.senior_manager_code), COUNT(DISTINCT e.manager_code), COUNT(DISTINCT e.employee_code) FROM company c
JOIN employee e ON c.company_code = e.company_code GROUP BY c.company_code, c.founder ORDER BY c.company_code;
