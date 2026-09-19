WITH txn AS (
    SELECT policy_id,
           SUM(CASE WHEN transaction_type = 'NEW_BUSINESS' THEN 0 ELSE premium_change END) AS later_change
    FROM policy_transaction
    GROUP BY policy_id
)
SELECT p.policy_id,
       p.written_premium,
       COALESCE(t.later_change,0) AS later_change,
       p.written_premium + COALESCE(t.later_change,0) AS expected_current_premium,
       r.reported_premium
FROM policy p
LEFT JOIN txn t ON p.policy_id = t.policy_id
LEFT JOIN reporting_policy_summary r ON p.policy_id = r.policy_id;
