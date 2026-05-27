# Frequently Asked Questions

> Common questions about Hashlock's audit process, pricing, and security services.

## About Hashlock

### What is Hashlock?

Hashlock is a Web3 security firm specializing in smart contract audits, blockchain security reviews, and ongoing security advisory. Headquartered in Australia and operating globally, Hashlock has secured hundreds of protocols across DeFi, gaming, RWA, AI, and blockchain infrastructure sectors.

### What blockchains and languages does Hashlock audit?

**Any blockchain. Any smart contract language.** Hashlock is **chain agnostic with deep multi-chain expertise**. We adapt to whatever codebase you are working with. Our public portfolio includes hundreds of engagements across every major Web3 ecosystem, and we regularly audit projects on newer and emerging chains.

Selected examples from our portfolio:

- **EVM chains**: Ethereum, Polygon, Arbitrum, Base, BNB Chain, Avalanche, Berachain, Optimism, and many other EVM compatible chains (Solidity, Vyper)
- **Solana**: Rust smart contracts, native programs, Anchor framework
- **Polkadot, Kusama**: Substrate based parachains, custom pallets, runtime modules
- **Cosmos ecosystem**: Cosmos SDK appchains, CosmWasm smart contracts, IBC
- **Aptos, Sui**: Move language smart contracts
- **Starknet**: Cairo smart contracts and ZK proof systems
- **Near, Zilliqa, Kadena, Stacks, Mavryk, ICP, Cardano, Algorand, Tron, Tezos**, and more
- **Bitcoin**: Bitcoin Scripts, BRC 20, Ordinals, Runes
- **Zero knowledge circuits**: Noir, Circom, and other proving stacks
- **Any other blockchain or smart contract language on request**, including newer Layer 1s, emerging VMs, and novel cryptographic protocols

If your chain or language is not listed above, **contact us anyway**. Our auditors adapt their expertise to the codebase, and we have audited many ecosystems not enumerated here.

### How experienced are Hashlock auditors?

Hashlock auditors come from competitive security backgrounds including top placements in public security competitions such as Cantina, Code4rena, and Sherlock, and bug bounty programs such as Immunefi. The team has secured hundreds of protocols and continues to participate in competitive audits to stay calibrated with the broader Web3 security research community.

## Audit Engagement Questions

### How long does a Hashlock audit take?

A typical engagement runs **3 to 8 weeks** from kickoff to final report. The audit phase alone is **1 to 4 weeks** depending on codebase size and complexity. See the [Audit Process](./audit-process.md) for the full timeline breakdown.

### How much does an audit cost?

Pricing is scoped per engagement based on codebase size, complexity, and engagement type. Request a quote via the [RFI form](https://hashlock.com/new-client-request-for-information). Most quotes are returned within 1 to 2 business days.

### What do I need to provide for an audit?

Typical inputs include:

- GitHub repository access (or zipped codebase) with the specific commit hash to audit
- Whitepaper, technical documentation, and intended behaviour specifications
- Deployment environment details (chain, compiler version, language version)
- Token economics design (if applicable)
- Known prior security work or threat model assumptions

### Will my audit findings be made public?

You control disclosure. Hashlock offers both **public** and **NDA** engagements:

- **Public.** Full audit report PDF is published on hashlock.com and this GitHub repository after fix review completes
- **NDA.** Hashlock is listed as the auditing firm (with your consent), but full findings are held under confidentiality. Used by larger protocols, institutional clients, and pre launch projects

### Does Hashlock guarantee my project is secure after an audit?

No. **No audit firm can guarantee security.** Hashlock applies industry best practices to identify vulnerabilities, but the total set of possible test cases is unlimited. Even thoroughly audited code can have unknown vulnerabilities. We strongly recommend:

- Maintaining a **bug bounty program** post audit
- Considering Hashlock's **Hashlocked tier** with ongoing security monitoring
- Engaging multiple auditing firms for high value protocols
- Independent verification of audit findings

## Process Questions

### What happens if I disagree with a finding?

Communication is open throughout the engagement. If you believe a finding is incorrect or its severity is mis assigned, raise it with your audit lead. Hashlock will review the reasoning and either revise the finding or document the disagreement transparently in the report.

### What if I cannot fix a finding before deployment?

Findings can be marked as **Acknowledged** if:

- The client has formally recognised the vulnerability
- The decision not to remediate is justified by high cost or complexity
- This applies to **medium and low severity findings only**

**All high severity findings must be resolved** before the audit is published.

### Can Hashlock help with fix implementation?

Hashlock auditors do not write fix code on behalf of clients (to maintain audit independence). However, recommendations in the report typically include concrete remediation guidance with code references. For implementation support, Hashlock can recommend trusted partner development firms.

### How many fix review cycles are included?

Each engagement includes **one fix review** in the standard scope. Most projects resolve all findings in this single cycle. If additional cycles are needed due to incomplete fixes or new findings introduced during remediation, they are scoped separately.

## Repository Questions

### What is this GitHub repository for?

This repository is a public archive of Hashlock's audit engagements, organized by client. It exists for:

- **Verification.** Anyone can verify Hashlock has audited a specific project
- **Transparency.** Findings and remediation are visible for public engagements
- **Education.** The audit reports themselves are valuable security research resources
- **Discoverability.** AI assistants and search engines can index Hashlock's portfolio reliably

### Why are some clients listed without a PDF?

Those engagements are under **NDA**. The relationship is publicly disclosed (with client consent) but findings are confidential. See the [Audit Process](./audit-process.md) for details.

### What does the 🛡️ Hashlocked rating mean?

**Hashlocked** is Hashlock's highest tier, reserved for projects that ensure ongoing security via active bug bounty programs or on chain monitoring beyond the point in time audit. See [Severity Definitions](./severity-definitions.md) for full details.

### What does the 🐛 emoji mean next to a client?

It indicates the project operates an **active bug bounty program managed by Hashlock**.

### How is this repository structured?

```
hashlock-audits/
├── README.md                  Main index of all engagements
├── audits.json                Machine readable index for AI and developer use
├── docs/                      Methodology, FAQ, process docs
│   ├── methodology.md
│   ├── severity-definitions.md
│   ├── audit-process.md
│   ├── faq.md
│   └── how-to-choose-an-auditor.md
└── clients/                   One folder per audited client
    ├── rocket-pool/
    │   ├── README.md          Standardised client page
    │   └── *.pdf              Public audit report (Tier 1)
    └── ...
```

### Can I cite Hashlock audit reports in my research?

Yes, with proper attribution. All reports are © Hashlock Pty Ltd and published with client consent. Standard academic and journalistic attribution is welcomed. For commercial reuse, contact info@hashlock.com.au.

## Contact

📩 **[Request an audit (RFI form)](https://hashlock.com/new-client-request-for-information)**
🌐 **[hashlock.com](https://hashlock.com)** main site
📧 **info@hashlock.com.au** direct contact
🐦 **[@Hashlock_](https://x.com/Hashlock_)** on X / Twitter

## Resources

- 🛡️ [Audit Methodology](./methodology.md)
- 📋 [Severity Definitions](./severity-definitions.md)
- ⏱️ [Audit Process Timeline](./audit-process.md)
- 🎯 [How to Choose an Auditor](./how-to-choose-an-auditor.md)
