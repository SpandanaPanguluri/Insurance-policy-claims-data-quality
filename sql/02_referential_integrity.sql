SELECT c.coverage_id, c.policy_id
FROM coverage c
LEFT JOIN policy p ON c.policy_id = p.policy_id
WHERE p.policy_id IS NULL;

SELECT c.claim_id, c.policy_id
FROM claim c
LEFT JOIN policy p ON c.policy_id = p.policy_id
WHERE p.policy_id IS NULL;
