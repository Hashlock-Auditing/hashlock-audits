# Immersve: Hashlock Security Audit

**Client:** Immersve
**Project Type:** CeDeFi, Crypto Payments, Mastercard Principal Member
**Network:** Ethereum (Polygon PoS in the earlier engagement)
**Language:** Solidity
**Engagements:** 2 public smart contract audits (2023, 2025) and 1 confidential penetration test (2025)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [immersve.com](https://immersve.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/immersve](https://hashlock.com/audits/immersve)

## About Immersve

Immersve, as a principal member of the Mastercard network, uniquely supports both centralised and decentralised payment experiences. Its technology lets users spend digital cash, including cryptocurrencies, at any Mastercard accepting merchant, whether online, in physical stores, or in the metaverse. Through its smart contracts, Immersve keeps users in control of their funds while enabling seamless transactions across platforms, handling settlements to Circle and user refunds. Immersve also offers branded card issuance through Mastercard sponsorship and supports Apple Pay.

## Engagement History

Immersve is a long term Hashlock client, returning across multiple years and expanding scope from smart contracts to full application penetration testing as the product matured.

| Report | Date | Scope | Findings | Rating |
|--------|------|-------|----------|--------|
| Smart contract audit (1st) | Nov 2023 | `FundsManagerLogic`, `FundsStorageLogic` (Polygon PoS) | 2 Medium, 4 Low, 1 Gas | 🛡️ Hashlocked |
| Smart contract audit (2nd) | Mar 2025 | `FundsManagerLogic`, `FundsStorageLogic` (Ethereum) | 8 Medium, 4 Low | ✅ Secure |

Across the two public smart contract audits Hashlock identified 10 Medium, 8 Low, and 1 Gas finding. All were resolved, with a single low severity item from the 2025 audit formally acknowledged. The 2023 engagement earned Hashlock's **Hashlocked** rating, reserved for projects that maintain ongoing security commitments.

## Confidential Engagement

Hashlock also conducted a penetration test for Immersve (October 2025). That engagement is listed on Immersve's Hashlock audit page, where the report is marked confidential at the client's request. No findings, scope, or report file from the penetration test are reproduced here.

## Primary Audit Scope (2nd smart contract audit, Ethereum)

The most recent public smart contract engagement reviewed the CeDeFi payments architecture that bridges onchain funds with the Mastercard settlement network via Circle, using a beacon proxy pattern for per user funds storage.

| # | Contract | MD5 Hash | Role |
|---|----------|----------|------|
| 1 | `FundsManagerLogic.sol` | `053cadb958c896c914ba4d73ab2eecb0` | Deploys FundsStorage beacon proxies, handles settlements to Circle and refunds |
| 2 | `FundsStorageLogic.sol` | `6294401aaa19b0e69d699ba133fb828d` | Handles user deposits and withdrawals, holds tokens |

**Audited Commit Hash:** `5acb8f807c600dede827c7b5baad79a5385e401c`
**Fix Review Commit Hash:** `25ee3a66bb79bbc4e9b2d1776935ddd2f82e5d1c`

The 2023 audit covered the same two contracts on Polygon PoS at commit `84ec9b53acc2fea1c75156c39ce33622cdc114e1`.

## Audit Findings Summary

**Smart contract audit, 1st (Nov 2023):**

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 2 | ✅ Resolved |
| 🟡 Low | 4 | ✅ Resolved |
| ⚪ Gas | 1 | ✅ Resolved |

**Smart contract audit, 2nd (Mar 2025):**

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 8 | ✅ Resolved |
| 🟡 Low | 4 | ✅ Resolved / Acknowledged |

The 2025 review centered on the upgradeable proxy architecture: pause coverage across both contracts, configuration persistence through upgrades, settlement address validation, and settler controls. All Medium findings were resolved; one Low severity item on settlement amount validation was formally acknowledged.

## Audit Reports

Both smart contract reports are published with Immersve's consent.

- 📄 [Smart contract audit (2nd)](./Immersve-2nd-Smart-Contract-Audit-Report-Final-Report-v3.pdf)
- 📄 [Smart contract audit (1st)](./Immersve-Smart-Contract-Audit-Final-Report.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/immersve)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. The published reports are shared with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
