SELECT COUNT(*) AS policy_rows, COUNT(DISTINCT policy_id) AS distinct_policies FROM policy;

SELECT line_of_business, policy_status, COUNT(*) AS policy_count,
       SUM(written_premium) AS written_premium
FROM policy
GROUP BY line_of_business, policy_status;

SELECT transaction_id, COUNT(*) AS cnt
FROM policy_transaction
GROUP BY transaction_id
HAVING COUNT(*) > 1;
