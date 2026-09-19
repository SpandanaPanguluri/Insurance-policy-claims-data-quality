# Interview Practice

## Why can matching row counts still be wrong?
Business values can differ even when every expected row is present. Reconcile premium, status, claim counts, incurred amounts, and coverage attributes.

## Why is grain important?
A policy can have multiple coverages, transactions, and claims. Joining all child tables directly can multiply rows and inflate measures.

## How would you investigate an orphan claim?
Check whether the policy key is invalid, late-arriving, transformed incorrectly, or intentionally excluded. Trace lineage and mapping before classifying the issue.

## How would you validate premium after cancellation?
Confirm whether the report is intended to show original written premium, current written premium, earned premium, or another metric before deciding whether a difference is a defect.

## Business says a policy is cancelled but reporting says active.
Trace source status, transaction chronology, effective dates, transformation logic, and reporting rules.

## What do you communicate to an SME?
Explain business impact, not just column mismatch: “This policy is cancelled in source but active in reporting, which may affect active-policy counts and premium reporting.”
