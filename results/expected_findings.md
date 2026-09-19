# Expected Findings

| Check | Expected finding | Business impact |
|---|---|---|
| Coverage integrity | C3011 references missing policy P2999 | Coverage cannot be tied to a valid policy |
| Claim integrity | CL4007 references missing policy P2998 | Claim may be excluded or misreported |
| Loss-date validation | CL4006 predates P2008 effective date | Possible bad policy association/date issue |
| Transaction uniqueness | T5009 appears twice | Duplicate key / transaction-quality issue |
| Policy status | P2004 cancelled in source but active in reporting | Active-policy counts and premium can be wrong |
| Claims reconciliation | P2003 source incurred 22,000 vs reporting 40,000 | Downstream claims metrics overstated |
| Premium reconciliation | P2004 differs after cancellation activity | Requires confirmation of the intended premium definition |

## Important
Not every numeric difference is automatically a defect. A Business Data Analyst confirms the business definition before classifying the variance.
