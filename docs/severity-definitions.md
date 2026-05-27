# Severity Definitions

> How Hashlock classifies the severity of findings in every audit report.

Hashlock uses a five tier severity classification system. Severity is determined by a **comprehensive evaluation of both impact and likelihood**, established by industry best practices and our discretion as professional security auditors. Each level reflects the specific context and risk profile of each finding.

## Severity Levels

| Tier | Definition |
|------|------------|
| 🔴 **High** | High severity vulnerabilities can result in **direct loss of funds, asset loss, denial of access**, or other critical issues that lead to immediate loss of funds and control by owners and community. **All high severity findings must be resolved** before the audit is published. |
| 🟠 **Medium** | Medium level findings should be solved before deployment, but **do not directly result in loss of funds**. These typically include logic errors, accounting drift, governance edge cases, or scenarios requiring specific preconditions. |
| 🟡 **Low** | Low level vulnerabilities are areas that **lack best practices** that may cause small complications in the future. They do not pose immediate risk but should be addressed for maintainability and robustness. |
| ⚡ **Gas Optimisation** | Gas related issues, optimisations, and inefficiencies. Not security risks, but recommendations to reduce transaction costs and improve efficiency. |
| 📝 **Quality Assurance (QA)** | QA findings are **informational** and do not impact functionality. They support clients in improving clarity, maintainability, and overall structure of the code. |

## Finding Status

Each finding is also assigned a resolution status:

| Status | Meaning |
|--------|---------|
| ✅ **Resolved** | The vulnerability has been fully mitigated, either through Hashlock's recommended solution or an alternative client provided fix that demonstrably addresses the issue. |
| ⚠️ **Acknowledged** | The client has formally recognised the vulnerability but has chosen not to address it due to high cost or complexity of remediation. Acceptable for **medium and low severity findings only** after internal review and agreement. **All high severity findings must be resolved without exception.** |
| ❌ **Unresolved** | The finding remains neither remediated nor formally acknowledged. Reports with unresolved high severity findings are not published. |

## How Severity Is Decided

Each finding is evaluated across three axes:

**Impact.** What could an attacker achieve if this vulnerability were exploited?

- Direct theft of user funds points toward High
- Theft of protocol fees only points toward Medium
- Denial of service for individual users points toward Medium or Low
- Inefficient code with no security implication points toward Gas or QA

**Likelihood.** How realistic is exploitation?

- No preconditions, any external account can trigger, contributes to High
- Requires specific market conditions or admin error, contributes to Medium
- Requires compromising a privileged role, contributes to Low

**Context.** What is the surrounding economic and operational environment?

- A theoretical reentrancy in a function holding $1B has different real world severity than in a function holding $100

The final severity reflects all three. Where reasonable people might disagree, Hashlock documents the rationale openly in the finding's description.

## Security Ratings

Beyond individual findings, Hashlock assigns an **overall security rating** to the audited codebase:

| Rating | Meaning |
|--------|---------|
| 🛡️ **Hashlocked** | Hashlock's **highest tier**. Reserved for projects that ensure **ongoing security** via active bug bounty programs or on chain monitoring beyond the point in time audit. The codebase has been audited, all high and medium findings resolved, and the project commits to continuous security posture. |
| ✅ **Secure** | The codebase has been audited, all initially identified vulnerabilities have been resolved or formally acknowledged. The project follows industry best practices for security. |
| ✅ **Audited** | The codebase has undergone Hashlock's audit process. Reserved for engagements with specific scope (such as competition submissions or partial scope reviews) where the standard "Secure" or "Hashlocked" rating does not apply. |

---

## Caution

Hashlock audits do not guarantee a project's success or ethics. We are not liable or responsible for the security of any deployed system. Always conduct independent research about any project before interacting with it. The audit process makes no statement or warranty that the code is bug free; the total set of possible test cases is unlimited. We strongly recommend a bug bounty program as ongoing assurance after audit completion.

---

## Resources

- 🛡️ [Audit Methodology](./methodology.md)
- 📋 [Audit Process Timeline](./audit-process.md)
- ❓ [FAQ](./faq.md)
- 🌐 [Hashlock Audits Directory](https://hashlock.com/audits)
- 📩 [Request an Audit](https://hashlock.com/new-client-request-for-information)
