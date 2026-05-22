# Manifest — Hashlock Security Audit

**Client:** The Lifted Initiative (Manifest Ledger)
**Audit Date:** December 2024 (with CosmWasm follow-up February 2025)
**Project Type:** Cosmos Appchain & DePIN Ecosystem
**Network:** Cosmos
**Language:** Go (`go1.22.5`)
**Report Type:** Final Report v2
**Security Rating:** 🛡️ **Hashlocked** (highest tier — with active Bug Bounty)

🔗 **Project Website:** [liftedinit.org](https://liftedinit.org)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/manifest](https://hashlock.com/audits/manifest)

## About Manifest

The **Lifted Initiative** is revolutionizing the Web3 landscape by developing a comprehensive framework that seamlessly integrates Web2 and Web3 functionalities, empowering users to create bespoke Layer 1 networks without requiring prior blockchain expertise. By contributing to the **Many Protocol**, Lifted ensures interoperability across various modules and networks, fostering a cohesive decentralized ecosystem.

The **Manifest Network**, built on the Cosmos SDK, is a blockchain tailored for **decentralized AI infrastructure access**. It initially employs a Proof of Authority (PoA) model to ensure a secure and efficient launch phase, with a trusted validator set managing consensus.

## Audit Scope

Hashlock audited the Go codebase of the Manifest Ledger through comprehensive manual line-by-line analysis supported by software-assisted testing.

**Engagements:**

| # | Component | Repository | Commit / PR |
|---|-----------|------------|-------------|
| 1 | Manifest Ledger chain | [github.com/liftedinit/manifest-ledger](https://github.com/liftedinit/manifest-ledger) | `8625d277d31fb699dfb100311861a66fdade9fb2` |
| 2 | Manifest Ledger CosmWasm integration (updated version) | [github.com/liftedinit/manifest-ledger](https://github.com/liftedinit/manifest-ledger) | [PR #118](https://github.com/liftedinit/manifest-ledger/pull/118) |

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟡 Low | 2 | ✅ Resolved |
| 📝 QA | 2 | ✅ Resolved |

**Total findings:** 4 (all resolved)

### Findings Detail

- **[L-01]** `BurnHeldBalance` not validating `MsgBurnHeldBalance` request via `Validate()` — Resolved
- **[L-02]** Wasm flags defined in `initWasmFlags` but not added to command line queries — Resolved
- **[Q-01]** Spelling error in filename `quierier.go` (should be `querier.go`) — Resolved
- **[Q-02]** Incorrect `srvCfg.MinGasPrices` denom set to `0stake` — Resolved

The low finding count and clean QA reflect strong code quality and adherence to best practices throughout the Manifest codebase.

## Security Rating: Hashlocked 🛡️

The **Hashlocked** rating is Hashlock's highest tier, reserved for projects that ensure ongoing security via bug bounty programs or on-chain monitoring technology. **Manifest operates an active Bug Bounty Program managed by Hashlock**, ensuring continuous security beyond the point-in-time audit. 🐛

## Full Audit Report

📄 [Read the full audit report (PDF)](./Manifest-Ledger-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/manifest)

> **Additional Engagements:** Hashlock has also conducted **Manifest Network Penetration Testing** and **Manifest Web Wallet Penetration Testing** for the Lifted Initiative team.

## About Hashlock

Hashlock is a leading Web3 security firm based in Australia and operating globally, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
