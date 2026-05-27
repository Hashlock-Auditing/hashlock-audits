# Audit Process & Timeline

> What to expect when you engage Hashlock for a security audit.

Every Hashlock engagement follows a structured timeline from kickoff to public report release. Below is the typical flow.

## Standard Audit Timeline

| Phase | Duration | What Happens |
|-------|----------|--------------|
| **1. Pre engagement** | 2 to 5 business days | RFI submission, scope confirmation, quote, contract signing |
| **2. Audit kick off** | 1 business day | Repo access, technical briefing, communication channel setup |
| **3. Manual audit** | 1 to 4 weeks | Line by line code review by senior auditors, supported by static analysis and fuzzing |
| **4. Initial report delivery** | End of audit phase | Full report with findings, severity ratings, recommendations |
| **5. Remediation** | 1 to 2 weeks (client driven) | Client team addresses findings and pushes fixes |
| **6. Fix review** | 2 to 5 business days | Hashlock verifies remediation on updated commit hash |
| **7. Final report** | 1 to 2 business days | Final report version published, public PDF prepared |
| **8. Optional public release** | Coordinated with client | Listing on hashlock.com/audits, GitHub repository, social channels |

**Typical total: 3 to 8 weeks** depending on codebase size and complexity.

## What Affects Timing

**Codebase size.** A 500 LOC token audit takes far less time than a 50,000 LOC L1 chain audit. We provide a precise estimate after reviewing scope.

**Codebase complexity.** DeFi protocols with novel mechanisms, cross chain bridges, and consensus modifications take longer than standard ERC 20 implementations or fork projects.

**Language and ecosystem.** Solidity audits are typically faster than Rust, Substrate, or custom L1 chains because of accumulated tooling and known patterns. However, Hashlock is **chain agnostic** and audits any blockchain or smart contract language.

**Number of fix review cycles.** Some engagements complete in a single fix review; complex audits may require 2 to 3 rounds.

**Client responsiveness.** Fast questions, answers, and quick fix turnaround can compress the timeline significantly.

## What You Receive

Every engagement includes:

- **Full audit report (PDF)** with executive summary, scope, findings detail, methodology, and disclaimers
- **Public listing on [hashlock.com/audits](https://hashlock.com/audits)** with project logo and audit summary (if public)
- **Listing in this repository** with standardised README and downloadable PDF (Tier 1) or NDA confirmation (Tier 2)
- **Hashlock security badge** for embedding on your site or repo
- **Direct line to your audit lead** via Slack, Telegram, or Discord throughout the engagement

## Engagement Types

Hashlock offers several engagement types beyond standard smart contract audits:

- **Smart Contract Audits**: manual line by line review, the most common engagement
- **Tokenomics Audits**: token model, incentive design, economic security
- **Penetration Testing**: web applications, infrastructure, wallets, internal systems
- **Bug Bounty Management**: ongoing program operation on Hashlock's bounty platform
- **vCISO & Security Advisory**: fractional security leadership
- **CCSS Certification Support**: Cryptocurrency Security Standard compliance preparation
- **Competition Audits**: Hashlock auditors participate in select public security contests (e.g., EigenLayer on Cantina)

## NDA vs Public Engagements

Some engagements are conducted under **non disclosure agreement** at the client's request. In NDA engagements:

- Hashlock is publicly listed as the auditing firm (with client consent)
- The full report content is not released publicly
- This repository contains a confirmation README without findings detail

Public engagements have the full audit report PDF available.

## Pricing

Pricing is scoped per engagement based on codebase size, complexity, and engagement type. Request a quote via the [RFI form](https://hashlock.com/new-client-request-for-information). We typically respond within 1 to 2 business days.

---

## Get Started

📩 **[Submit our RFI form](https://hashlock.com/new-client-request-for-information)** to start an engagement
🌐 **[hashlock.com](https://hashlock.com)** for the main site
📧 **info@hashlock.com.au** for direct contact

## Resources

- 🛡️ [Audit Methodology](./methodology.md)
- 📋 [Severity Definitions](./severity-definitions.md)
- ❓ [FAQ](./faq.md)
- 🎯 [How to Choose an Auditor](./how-to-choose-an-auditor.md)
