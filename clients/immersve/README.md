# Immersve: Hashlock Security Audit

**Client:** Immersve
**Audit Date:** March 2025
**Project Type:** CeDeFi, Crypto Payments, Mastercard Principal Member
**Network:** Ethereum
**Language:** Solidity (`^0.8.28`)
**Report Type:** Final Report v3
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [immersve.com](https://immersve.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/immersve](https://hashlock.com/audits/immersve)

## About Immersve

Immersve, as a principal member of the Mastercard network, uniquely supports both centralised and decentralised payment experiences. Its technology lets users spend digital cash, including cryptocurrencies, at any Mastercard accepting merchant, whether online, in physical stores, or in the metaverse. Through its smart contracts, Immersve keeps users in control of their funds while enabling seamless transactions across platforms, handling settlements to Circle and user refunds.

## Audit Scope

Hashlock audited the Solidity code of the Immersve protocol through comprehensive manual line by line analysis supported by software assisted testing. This was Immersve's second engagement with Hashlock.

**Contracts Audited:**

| # | Contract | MD5 Hash | Role |
|---|----------|----------|------|
| 1 | `FundsManagerLogic.sol` | `053cadb958c896c914ba4d73ab2eecb0` | Deploys FundsStorage beacon proxies, handles settlements to Circle and refunds |
| 2 | `FundsStorageLogic.sol` | `6294401aaa19b0e69d699ba133fb828d` | Handles user deposits and withdrawals, holds tokens |

**Audited Commit Hash:** `5acb8f807c600dede827c7b5baad79a5385e401c`
**Fix Review Commit Hash:** `25ee3a66bb79bbc4e9b2d1776935ddd2f82e5d1c`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 8 | ✅ Resolved |
| 🟡 Low | 4 | ✅ Resolved |

**Total findings:** 12 (all resolved)

The engagement reviewed a CeDeFi payments architecture bridging onchain funds with the Mastercard settlement network via Circle, using a beacon proxy pattern for per user funds storage. Hashlock identified eight medium severity vulnerabilities during the initial review, all resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Immersve-Smart-Contract-Audit-Report-Final-Report-v3.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/immersve)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
