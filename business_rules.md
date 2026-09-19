# Business Rules

1. Every coverage must belong to a valid policy.
2. Every claim must belong to a valid policy.
3. Claim loss date should fall within the referenced policy period unless a valid business exception exists.
4. Transaction identifiers should be unique.
5. A cancelled source policy should not appear active downstream without a later valid business event.
6. Policy-level reporting premium must be explainable from source premium and premium-impacting transactions.
7. Reporting claim count and incurred amount should reconcile to source claims within the agreed reporting scope.
8. Join logic must respect table grain to avoid multiplying premium, exposure, or claim measures.
