# Shezmu: Hashlock Security Audit

**Client:** Shezmu
**Audit Date:** October 2024
**Project Type:** DeFi, Hybrid Collateralized Debt Positions (CDP), NFT and Yield Backed Lending
**Network:** Ethereum
**Language:** Solidity (`0.8.17`)
**Report Type:** Final Report
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [shezmu.io](https://www.shezmu.io)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/shezmu](https://hashlock.com/audits/shezmu)

## About Shezmu

Shezmu introduces a hybrid Collateralized Debt Position (CDP) platform that combines the capabilities of both NFTs and Yield Bearing Tokens. The platform allows users to borrow against both NFTs and Yield Bearing Tokens, providing flexibility and liquidity in the digital asset space. Alongside the core CDP functionality, the project offers a suite of utilities including stablecoin implementations (ShezmuUSD, ShezmuETH, ShezmuBTC), lending vaults, liquidation and auction mechanisms, stability pools, an NFT marketplace, farming, and staking.

## Audit Scope

Hashlock audited the Solidity code of the Shezmu project through comprehensive manual line by line analysis supported by software assisted testing. All folders were audited at commit hash `b22956a844e1784fb0242159e57e4639fb9d301d`.

**Folders Audited:**

| # | Folder | Scope |
|---|--------|-------|
| 1 | Farming | Staking, rewards, and liquidity provision |
| 2 | Marketplace | ERC721 and ERC1155 NFT marketplace with auctions, escrow, taxes |
| 3 | Oasis | Lending vaults, stablecoins (ShezmuUSD, ShezmuETH, ShezmuBTC), liquidations, stability pools |
| 4 | Oracle | Price feed and oracle logic |
| 5 | Sale | Token sale mechanics |
| 6 | Staking | Token staking and rewards |
| 7 | Token | Token contract logic |
| 8 | Utils | Shared utility libraries |

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 6 | ✅ Resolved |
| 🟠 Medium | 3 | ✅ Resolved |
| 🟡 Low | 7 | ✅ Resolved / Acknowledged |
| 📝 QA | 4 | ✅ Resolved / Acknowledged |
| ⚡ Gas Optimisation | 2 | ✅ Acknowledged |

**Total findings:** 22 (all resolved or formally acknowledged)

The engagement covered a broad multi module DeFi system spanning lending, stablecoins, NFT markets, and staking. Hashlock identified six high severity vulnerabilities during the initial review, all of which were addressed before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Shezmu-Smart-Contract-Audit-Report-Final-Report.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/shezmu)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
