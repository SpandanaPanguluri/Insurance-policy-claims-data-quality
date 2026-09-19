# Insurance Policy & Claims Data Quality

Synthetic P&C data-quality and reconciliation project focused on policy, coverage, transactions, claims, premium, and downstream reporting.

> Synthetic data only. No employer or client data is included.

## Business Problem
An insurance analytics team receives policy, coverage, transaction, and claims data from multiple source processes. Downstream reporting depends on accurate policy status, premium values, coverage relationships, and claim measures.

This project demonstrates:
- source-to-target validation
- data profiling and reconciliation
- policy / coverage / claim relationship checks
- premium and transaction validation
- referential integrity
- duplicate and orphan detection
- business-rule validation
- downstream reporting reconciliation
- root-cause analysis

## Data Model

```text
Account
  |
Policy
  |------ Policy Transaction
  |------ Coverage
  |------ Claim
  |
Reporting Policy Summary
```

## Grain
- `policy.csv`: one row per policy term
- `coverage.csv`: one row per policy coverage
- `policy_transaction.csv`: one row per policy transaction
- `claim.csv`: one row per claim
- `reporting_policy_summary.csv`: one row per policy in the reporting layer

## Deliberate Data Quality Issues
- orphan coverage
- orphan claim
- claim loss date before policy effective date
- duplicate transaction identifier
- reporting claim-incurred mismatch
- cancelled policy reported as active
- premium difference requiring business-definition review

## Interview Story
“I built a synthetic P&C data-quality project connecting policy, coverage, transaction, claims, and downstream reporting data. I profiled source data, validated relationships and grain, checked orphan and duplicate records, applied policy and claim business rules, reconciled premium changes, and compared source measures to the reporting layer. The key lesson was that a successful load does not automatically mean the data is correct from a business perspective.”

## Tools
SQL, relational data modeling, source-to-target validation, data profiling, reconciliation, insurance business rules.
