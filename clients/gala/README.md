# Gala — Hashlock Security Audit

**Client:** Gala Games
**Audit Date:** November 2025
**Project Type:** Gaming & Entertainment Infrastructure
**Network:** GalaChain (L1) · Ethereum
**Language:** TypeScript (GalaChain SDK)
**Report Type:** Final Report v1
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [gala.com](https://gala.com)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/gala](https://hashlock.com/audits/gala)

## About Gala

Gala is building a decentralized entertainment ecosystem spanning gaming, music, film, and blockchain technology. Their flagship platform, **GalaChain**, is a Layer 1 blockchain optimized for entertainment use cases, offering fast transaction speeds, scalability, and energy efficiency. The ecosystem includes games like **Champions Arena** and **Spider Tanks**, **Gala Music** for blockchain-based music distribution, and **Gala Film** for decentralized cinema. Gala empowers creators and players by providing real ownership and control over their digital assets.

## Audit Scope

Hashlock audited the GalaChain SDK and supporting smart contracts through comprehensive manual line-by-line analysis supported by software-assisted testing.

**Modules Audited:**

| # | Module | Description |
|---|--------|-------------|
| 1 | `chain-cli` | Typed CLI commands for managing GalaChain networks, config loading, credential selection |
| 2 | `chain-client` | High-level client API for GalaChain contracts, identity management, signing |
| 3 | `chain-connect` | Bridges browser, backend, and wallets to GalaChain (EVM-style providers) |
| 4 | `chaincode` | On-chain business logic for tokens and loans, authorization, ledger persistence |
| 5 | `chain-api` | HTTP endpoints mapping to chaincode with DTO validation and structured responses |

**Repository:** [github.com/GalaChain/sdk](https://github.com/GalaChain/sdk)
**Audited Commit Hash:** `eb6050f7d8ecdbf9b6b96ebc90216d0eb8068185`
**Fix Review Commit Hash:** `65527727135d03ffcb33ea02999079b3ff7ae2b7`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 7 | ✅ Resolved |
| 🟠 Medium | 6 | ✅ Resolved |
| 🟡 Low | 5 | ✅ Resolved / Acknowledged |
| 📝 QA | 3 | ✅ Resolved / Acknowledged |

**Total findings:** 21 (all resolved or formally acknowledged)

### Notable High Severity Findings (all resolved)

- **[H-01]** Missing validation of allowance grants in `mintToken` enabling theft of allowances
- **[H-02]** Fungible token mint allowance persisting after authority removal
- **[H-03]** NFT allowances persisting after ownership transfer
- **[H-04]** Duplicate allowances enabling double-spending
- **[H-05]** Missing caller validation allowing allowance bypass during minting
- **[H-06]** Composite-key namespace collision between sale fulfillments and swap fills
- **[H-07]** Bridge-out recipient accepted as unvalidated string across multiple chains

## Full Audit Report

📄 [Read the full audit report (PDF)](./Gala-Galachain-SDK-Smart-Contract-Audit-Report-Final-Report-v1.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/gala)

> **Note:** Gala has engaged Hashlock for multiple audits across their ecosystem, including the GalaChain SDK, Gala Wallet, Gala Launchpad, and Gala Games DEX. This README reflects the GalaChain SDK Smart Contract audit.

## About Hashlock

Hashlock is a leading Web3 security firm based in Australia and operating globally, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
