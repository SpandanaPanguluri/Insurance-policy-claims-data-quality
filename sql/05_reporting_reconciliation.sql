WITH claim_summary AS (
    SELECT policy_id, COUNT(*) AS source_claim_count, SUM(incurred_amount) AS source_incurred
    FROM claim
    GROUP BY policy_id
)
SELECT r.policy_id,
       COALESCE(c.source_claim_count,0) AS source_claim_count,
       r.claim_count,
       COALESCE(c.source_incurred,0) AS source_incurred,
       r.reported_incurred,
       CASE WHEN COALESCE(c.source_claim_count,0)=r.claim_count
                  AND COALESCE(c.source_incurred,0)=r.reported_incurred
            THEN 'MATCH' ELSE 'MISMATCH' END AS status
FROM reporting_policy_summary r
LEFT JOIN claim_summary c ON r.policy_id = c.policy_id;
