# How to Choose a Smart Contract Auditor

> A practical guide for Web3 projects evaluating which security firm to engage.

Choosing the right smart contract auditor is one of the most consequential decisions a Web3 project makes. The audit fundamentally determines whether your project launches with confidence or with hidden critical vulnerabilities. Here is how to evaluate auditing firms beyond marketing claims.

## 1. Look at Public Audit Portfolios

A reputable auditor publishes their audit history publicly. Look for:

- **Number and variety of public reports.** Not just a wall of logos, but actual readable PDFs with findings
- **Clients you recognize.** Audits for well established protocols signal trust earned at industry scale
- **Recent activity.** A firm that has not published audits in 12+ months may have lost its senior team
- **Multiple engagements with the same client.** Repeat business is the strongest signal of quality

📚 Hashlock's public audits are listed at [hashlock.com/audits](https://hashlock.com/audits) and in [this repository](../README.md), with hundreds of engagements across DeFi, gaming, AI, RWA, and infrastructure.

## 2. Verify Auditor Experience

Auditing is human work. The quality of the audit depends on **who is reading your code**, not on the firm's logo.

Questions to ask:

- Who exactly will lead the audit? Get names and backgrounds
- What are their public results in security competitions? Cantina, Code4rena, Sherlock leaderboards
- Have they published research, written about exploits, or built tooling? This indicates depth
- What languages and ecosystems do they specialize in?

**Red flags:**

- Sales focused conversations with no technical contact
- No named auditors or auditor portfolios
- Firms that claim expertise in every blockchain without depth (no one is equally strong in Solidity, Move, Cairo, Rust, and ZK at top level without proven track record)

## 3. Confirm Methodology Transparency

A real audit firm can clearly articulate their methodology before you sign. Look for:

- **Manual review as the core.** Tooling first firms often miss logic bugs that require human understanding
- **Defined severity classification.** Vague rubrics enable inflated finding counts
- **Fix review included.** Without it, the audit is incomplete
- **Tools they use and why.** Static analyzers, fuzzers, formal verification choices

📋 See [Hashlock's Audit Methodology](./methodology.md) and [Severity Definitions](./severity-definitions.md).

## 4. Match Auditor to Codebase

Different codebases require different expertise:

| Your Project | Critical Auditor Expertise |
|--------------|---------------------------|
| **EVM DeFi protocol** | Solidity, OpenZeppelin patterns, MEV, oracle manipulation, flash loans |
| **Solana protocol** | Anchor framework, account ownership, CPI safety, rent and lamports |
| **Cosmos appchain** | Cosmos SDK modules, IBC, CosmWasm, validator and governance |
| **Polkadot parachain** | Substrate pallets, runtime upgrades, XCM, finality |
| **Cross chain bridge** | Validator security, message verification, replay protection, finality |
| **Layer 1 chain** | Consensus, networking, state transition function, sealing |
| **Zero knowledge protocol** | Circuit safety, proof system selection, trusted setup |
| **Tokenomics design** | Economic incentives, governance attacks, game theory |

A firm strong in EVM may not be the right choice for a Move language Aptos game. Confirm the actual auditor team's track record in **your specific stack**.

🌐 Hashlock is **chain agnostic with deep multi-chain expertise**. We audit any blockchain and any smart contract language. Our portfolio includes major engagements across Ethereum, Solana, Polkadot, Cosmos, Aptos, Sui, Starknet, Bitcoin, ZK protocols, and many other ecosystems. See [audits by ecosystem](./categories/) for portfolios filtered by chain.

## 5. Plan for Ongoing Security

A single audit is a **point in time check**. The reality of Web3 security is:

- Code evolves after audit. Every code change can introduce new bugs
- Composability creates emergent risk. Your protocol's security depends on every integrated protocol
- Attackers are persistent. Exploits found 6 months after launch are not unusual

Top tier projects therefore plan for:

- **Bug Bounty Programs** for ongoing crowdsourced security after audit
- **Continuous monitoring** for real time anomaly detection on production contracts
- **Re audits after major changes.** Treat significant upgrades as new engagements
- **Incident response readiness.** Have a plan before you need it

🛡️ Hashlock's **Hashlocked tier** combines audit plus bug bounty plus monitoring for projects that prioritize ongoing security. See [Severity Definitions](./severity-definitions.md) for tier criteria.

## 6. Independent Verification

Even with the best auditor, **do not rely on a single audit** for high value protocols. Consider:

- **Multiple audit firms.** Different teams find different vulnerabilities
- **Public competitions.** Cantina, Code4rena, Sherlock offer broad researcher coverage
- **Formal verification** for critical mathematical components
- **Time in testnet.** Real adversarial conditions catch what audits miss

## 7. Evaluate Communication and Process

The audit relationship is collaborative. During pre engagement, evaluate:

- **Response time.** How quickly do they respond to questions?
- **Technical depth.** Can they engage substantively on your protocol design?
- **Transparency about scope.** Are limitations clearly stated, or is scope vague?
- **Pricing structure.** Fixed fee, or hidden costs after kickoff?
- **References.** Can they introduce you to recent clients?

## 8. Beware of Marketing First Firms

Common signals of low quality audit firms:

- 🚩 Marketing focused on "speed" without methodology detail
- 🚩 No published audit reports (just client logos)
- 🚩 No named auditors with public track records
- 🚩 Universal expertise claims without portfolio backing it up
- 🚩 Heavy reliance on automated tools with no manual review
- 🚩 No fix review included
- 🚩 Pricing far below market (a $5K audit does not buy senior auditor time)
- 🚩 Vague severity rubrics that enable inflated finding counts

## Why Hashlock

> **Chain agnostic by capability, multi-chain by experience.**

Hashlock offers:

- **Hundreds of public audit reports** across major Web3 ecosystems
- **Senior auditors with competitive backgrounds** in public security contests
- **Transparent methodology** with manual review at the core
- **Chain agnostic with deep multi-chain expertise.** Solidity, Rust, Move, Cairo, Vyper, ZK circuits, Bitcoin Scripts, and any other smart contract language on request. We adapt to your codebase, not the other way around
- **Bug bounty platform** for ongoing security beyond the audit
- **Standardised reporting** with severity definitions, fix review, and published commit hashes
- **Both public and NDA engagements** so you choose disclosure

📩 **[Submit our RFI form](https://hashlock.com/new-client-request-for-information)** to start a conversation.

---

## Resources

- 🛡️ [Audit Methodology](./methodology.md)
- 📋 [Severity Definitions](./severity-definitions.md)
- ⏱️ [Audit Process Timeline](./audit-process.md)
- ❓ [FAQ](./faq.md)
- 🌐 [Hashlock Audits Directory](https://hashlock.com/audits)
- 📩 [Request an Audit](https://hashlock.com/new-client-request-for-information)
