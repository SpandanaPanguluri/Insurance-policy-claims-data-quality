SELECT c.claim_id, c.policy_id, c.loss_date, p.effective_date, p.expiration_date
FROM claim c
JOIN policy p ON c.policy_id = p.policy_id
WHERE c.loss_date < p.effective_date OR c.loss_date > p.expiration_date;

SELECT p.policy_id, p.policy_status AS source_status, r.policy_status AS reporting_status
FROM policy p
JOIN reporting_policy_summary r ON p.policy_id = r.policy_id
WHERE p.policy_status = 'CANCELLED' AND r.policy_status = 'ACTIVE';
