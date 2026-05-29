# ewe technology (Benty Wallet): Hashlock Security Audit

**Client:** ewe technology (Benty Wallet)
**Audit Date:** December 2024
**Project Type:** Crypto Wallet, DCA, Cross Chain Bridge, Staking
**Network:** EVM
**Language:** Solidity (`^0.8.0`)
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [ewetechnology.com](https://ewetechnology.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/ewe-technology](https://hashlock.com/audits/ewe-technology)

## About ewe technology (Benty Wallet)

Benty is a mobile application that serves as a cryptocurrency wallet. It lets users send, receive, swap, and bridge cryptocurrency across multiple blockchains, with built in staking and transaction tracking directly in the app. ewe technology is the team building these decentralized applications and blockchain solutions, with a focus on secure, scalable platforms that put users in control of their digital assets. The audited smart contracts do not allow developers or third parties to freely transfer funds other than to add liquidity to Uniswap, and feature a dollar cost averaging (DCA) system.

## Audit Scope

Hashlock audited the Solidity code of the Benty project through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | MD5 Hash | Role |
|---|----------|----------|------|
| 1 | `DCAManagement.sol` | `06da8732175b4545e4efc57e3c14d754` | Create, update, and cancel DCA plans, claim rewards |
| 2 | `DCAVault.sol` | `2b62824f34112d9f0f6d2f41c5aeb160` | Holds and transfers tokens and native coins |
| 3 | `Farm.sol` | `94f9a1b9b1c621f47b97b0e1e4ccd231` | Staking and farming logic |
| 4 | `ReferralManagement.sol` | `53c275f52283a26fc3ccd03b075fee99` | Referral program management |
| 5 | `ReferralVault.sol` | `ce25dae378b77cd891572a5b159363f2` | Referral reward custody |
| 6 | `StrategyUserManager.sol` | `5ac5a68e27a21d14e8010e9ebf5c1b33` | User strategy management |
| 7 | `StrategyV11.sol` | `562080a16c807dfdf6d854b9b28a7635` | Strategy execution |

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 1 | ✅ Resolved |
| 🟡 Low | 2 | ✅ Resolved |
| ⚡ Gas Optimisation | 2 | ✅ Resolved |
| 📝 QA | 2 | ✅ Resolved |

**Total findings:** 7 (all resolved)

The DCA system lets users create and manage recurring purchase plans, with an executor role running strategies, setting fees, and handling withdrawals. The architecture separates management, vault custody, farming, referrals, and strategy execution into dedicated contracts. All findings were resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./ewe-technology-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/ewe-technology)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
