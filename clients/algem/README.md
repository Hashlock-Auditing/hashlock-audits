# Algem: Hashlock Security Audit

**Client:** Algem
**Audit Date:** December 2024
**Project Type:** DeFi, Liquid Staking, Yield Farming
**Network:** Astar (Polkadot ecosystem)
**Language:** Solidity (`^0.8.20`)
**Report Type:** Final Report (Liquid Farming V3)
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [algem.io](https://www.algem.io)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/algem](https://hashlock.com/audits/algem)

## About Algem

Algem is a decentralized liquid staking platform built in the Polkadot ecosystem on Astar, letting users stake assets while keeping liquidity through Web3 technologies. Participants earn staking rewards without locking up their tokens, giving them flexibility to engage in DeFi activities like lending and yield farming. By providing non custodial, liquid staking, Algem helps users maximize capital efficiency and compound returns. The Liquid Farming V3 system audited here lets users deposit tokens and WETH, redeem deposits, claim ALGM rewards, and handle liquidations across Kyo and Sonus vault and pool pairs.

## Audit Scope

Hashlock audited the Solidity code of the Algem Liquid Farming V3 project through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | MD5 Hash |
|---|----------|----------|
| 1 | `LFxKyoV3Vault0.sol` | `6195861e4d5df9c40e0e4ceafa1f01b4` |
| 2 | `LFxKyoV3Pool.sol` | `c06935ea9628777fdd8d622f2634601b` |
| 3 | `LFxSonusV3Pool.sol` | `9007b40b04ea22b662e59997c5c6945c` |
| 4 | `LFxSonusV3Vault0.sol` | `152e66761776710c8b09d7102202c354` |

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 3 | ✅ Resolved |
| 🟠 Medium | 5 | ✅ Resolved / Acknowledged |
| 🟡 Low | 3 | ✅ Resolved / Acknowledged |

**Total findings:** 11 (all resolved or formally acknowledged)

The vault and pool architecture splits responsibilities between deposit and reward vaults (deposits, redemptions, ALGM reward claims, liquidations) and periphery pool contracts (adding and removing vaults, setting vault ALGM shares). Hashlock identified three high severity vulnerabilities during the initial review, all addressed before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Algem-Liquid-Farming-V3-Smart-Contract-Audit-Report-Final-Report.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/algem)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
