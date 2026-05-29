# DreamBay: Hashlock Security Audit

**Client:** DreamBay (a Posse Studios subsidiary)
**Audit Date:** January 2025
**Project Type:** AI Powered Digital Asset Marketplace, Bonding Curve Token Launchpad
**Network:** Ethereum
**Language:** Solidity (`0.8.20`)
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [dreambay.io](https://dreambay.io)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/dreambay](https://hashlock.com/audits/dreambay)

## About DreamBay

DreamBay is a next generation digital asset marketplace powered by AI. Users create 3D assets with generative tools, buy and sell tokenized goods, and earn rewards through gamified experiences. Whether creator, collector, or gamer, DreamBay aims to make digital entertainment accessible and fun. DreamBay is a subsidiary of Posse Studios, and is also associated with skulpty.ai. The audited contracts implement an onchain token launchpad: a factory deploys new ERC20 tokens with associated bonding curves, and trading transitions to Uniswap V2 once a curve completes, with initial LP tokens burned to lock liquidity.

## Audit Scope

Hashlock audited the Solidity code of the DreamBay contracts through comprehensive manual line by line analysis supported by software assisted testing. The protocol uses OpenZeppelin and Uniswap libraries.

**Contracts Audited:**

| # | Contract | MD5 Hash | Role |
|---|----------|----------|------|
| 1 | `ERC20FixedSupply.sol` | `0527ed4847f9032141db680cdb242789` | ERC20 token implementation for the protocol |
| 2 | `BondingCurve.sol` | `f1ec3c053d68fe83a28c1ec3d2992017` | Buy and sell with fee logic, reserve tracking, Uniswap transition |
| 3 | `PumpFactory.sol` | `a0ab3d493894005d06a966833672bb49` | Deploys tokens and curves, sets protocol parameters and fees |

**Audited Commit Hash:** `32e2a669bf87e02e202fb68e1b9f6285a0665db3`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟡 Low | 3 | ✅ Resolved |
| ⚡ Gas Optimisation | 1 | ✅ Resolved |
| 📝 QA | 3 | ✅ Resolved |

**Total findings:** 7 (all resolved)

The factory deploys ERC20 tokens and bonding curves, stores virtual reserves for price calculation, manages trading fees and ETH allocations, and controls fee recipient access. The bonding curve handles buys and sells, enforces pre launch trading restrictions, automates Uniswap V2 liquidity provision on completion, and ensures a one way transition from curve to open trading. All findings were resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./DreamBay-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/dreambay)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
