# Balanced Network (ICON Foundation): Hashlock Security Audit

**Client:** Balanced Network
**Project Type:** DeFi, Stablecoin (bnUSD), Cross Chain via xCall
**Networks:** Ethereum (Solidity) and Move based chains, connected to ICON
**Engagements:** 2 public reports (2024)
**Security Rating:** ✅ **Secure** (both engagements)

🔗 **Project Website:** [balanced.network](https://balanced.network)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/balanced-network-icon-foundation](https://hashlock.com/audits/balanced-network-icon-foundation)

## About Balanced

Balanced is a DeFi product crafted for simplicity. It is home to the Balanced Dollar stablecoin (bnUSD) and the largest decentralised exchange on the ICON blockchain. Users can borrow bnUSD, swap assets, supply liquidity, and participate in governance. Through xCall, ICON's cross chain messaging standard, Balanced extends swaps and asset transfers across chains, which is exactly the surface these audits covered: the asset manager, bnUSD token, and oracle contracts deployed beyond ICON.

## Engagement History

| Report | Date | Scope | Findings | Rating |
|--------|------|-------|----------|--------|
| Smart contract audit (Solidity) | Jun 2024 | Cross chain contracts on Ethereum: `AssetManager`, `BalancedDollar` (bnUSD), `OracleProxy`, plus RLP message codecs | 2 High, 1 Medium, 15 Low | ✅ Secure |
| Smart contract audit (Move) | Dec 2024 | Move contracts: `xcall_manager`, `asset_manager`, `balanced_dollar`, cross chain transfer and deposit message modules | 2 Medium, 3 Low | ✅ Secure |

Across the two engagements Hashlock identified 2 High, 3 Medium, and 18 Low findings, all resolved or formally acknowledged. Both high severity findings (in the June Solidity review) were resolved before publication. Auditing the same protocol surface in two different languages reflects the cross chain nature of Balanced's xCall expansion.

## Audit Findings Summary

**Smart contract audit, Solidity (Jun 2024):**

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 2 | ✅ Resolved |
| 🟠 Medium | 1 | ✅ Resolved |
| 🟡 Low | 15 | ✅ Resolved / Acknowledged |

**Smart contract audit, Move (Dec 2024):**

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 2 | ✅ Resolved / Acknowledged |
| 🟡 Low | 3 | ✅ Acknowledged |

Contract level MD5 checksums for every audited file are listed in the scope tables of the published reports.

## Audit Reports

Both reports are published with Balanced's consent.

- 📄 [Smart contract audit, Solidity](./Balanced-Smart-Contract-Audit-Report-Final-Report-v2.pdf)
- 📄 [Smart contract audit, Move](./Balanced-Move-Smart-Contract-Audit-Report-Final-Report.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/balanced-network-icon-foundation)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
