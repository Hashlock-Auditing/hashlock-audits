# Immersve: Hashlock Security Audit

**Client:** Immersve
**Project Type:** CeDeFi, Crypto Payments, Mastercard Principal Member
**Network:** Ethereum (Polygon PoS in the earlier engagement)
**Language:** Solidity
**Engagements:** 3 public reports (2023 to 2025)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [immersve.com](https://immersve.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/immersve](https://hashlock.com/audits/immersve)

## About Immersve

Immersve, as a principal member of the Mastercard network, uniquely supports both centralised and decentralised payment experiences. Its technology lets users spend digital cash, including cryptocurrencies, at any Mastercard accepting merchant, whether online, in physical stores, or in the metaverse. Through its smart contracts, Immersve keeps users in control of their funds while enabling seamless transactions across platforms, handling settlements to Circle and user refunds. Immersve also offers branded card issuance through Mastercard sponsorship and supports Apple Pay.

## Engagement History

Immersve is a long term Hashlock client, returning across multiple years and expanding scope from smart contracts to full application penetration testing as the product matured. Every engagement below is public.

| Report | Date | Scope | Findings (all resolved) | Rating |
|--------|------|-------|-------------------------|--------|
| Smart contract audit | Nov 2023 | `FundsManagerLogic`, `FundsStorageLogic` (Polygon PoS) | 2 Medium, 4 Low, 1 Gas | 🛡️ Hashlocked |
| Smart contract audit (2nd) | Mar 2025 | `FundsManagerLogic`, `FundsStorageLogic` (Ethereum) | 8 Medium, 4 Low | ✅ Secure |
| Penetration test (3rd) | Oct 2025 | Web applications and APIs (full code base) | 3 Medium, 3 Low, 2 QA | ✅ Secure |

Across these engagements Hashlock identified and helped resolve 13 medium, 11 low, 1 gas, and 2 QA findings, all resolved or acknowledged. The 2023 engagement earned Hashlock's **Hashlocked** rating, reserved for projects that maintain ongoing security commitments.

## Primary Audit Scope (Smart contract audit, 2nd)

The most recent smart contract engagement reviewed the CeDeFi payments architecture that bridges onchain funds with the Mastercard settlement network via Circle, using a beacon proxy pattern for per user funds storage.

| # | Contract | MD5 Hash | Role |
|---|----------|----------|------|
| 1 | `FundsManagerLogic.sol` | `053cadb958c896c914ba4d73ab2eecb0` | Deploys FundsStorage beacon proxies, handles settlements to Circle and refunds |
| 2 | `FundsStorageLogic.sol` | `6294401aaa19b0e69d699ba133fb828d` | Handles user deposits and withdrawals, holds tokens |

**Audited Commit Hash:** `5acb8f807c600dede827c7b5baad79a5385e401c`
**Fix Review Commit Hash:** `25ee3a66bb79bbc4e9b2d1776935ddd2f82e5d1c`

## Audit Reports

All reports are published with Immersve's consent.

- 📄 [Smart contract audit (2nd)](./Immersve-2nd-Smart-Contract-Audit-Report-Final-Report-v3.pdf)
- 📄 [Smart contract audit (1st)](./Immersve-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [Penetration test (3rd)](./Immersve-3rd-Penetration-Test-Report-Final-Report-v1.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/immersve)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
