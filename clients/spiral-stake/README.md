# Spiral Stake: Hashlock Security Audit

**Client:** Spiral Stake
**Audit Date:** April 2025
**Project Type:** DeFi, Liquid Staking and Restaking Liquidity, Rotating Credit Pools
**Network:** Ethereum
**Language:** Solidity (`^0.8.0`)
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [spiralstake.xyz](https://www.spiralstake.xyz/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/spiral-stake](https://hashlock.com/audits/spiral-stake)

## About Spiral Stake

Spiral Stake is a liquidity management platform for stakers, letting users bring in their LSTs and LRTs and take home extra liquidity through rotating credit pools. Powered by smart contracts and community governed pool rotations, Spiral Stake turns passive staking into an active liquidity strategy, allowing capital efficiency and on demand access to value while keeping exposure to the underlying staking yield. It is built for cross chain composability as a gateway to yield optimization in Web3 DeFi.

## Audit Scope

Hashlock audited the Solidity code of the Spiral Stake protocol through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | MD5 Hash | Role |
|---|----------|----------|------|
| 1 | `SpiralPool.sol` | `a14d49b2d75d8249911cf809e5dd9b7c` | Collateral deposits, cycle bidding, yield claims, finalization |
| 2 | `SpiralPoolFactory.sol` | `c255c35c244aa24b62a8d839e4470fb1` | Pool creation and management |

**Audited Commit Hash:** `9c591f58a3902418ed4b4e9e545cc75c1762e2a7`
**Fix Review Commit Hash:** `824c86128fc067d01543a0dcb148155e2c799513`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 1 | ✅ Resolved |
| 🟠 Medium | 2 | ✅ Resolved |
| 🟡 Low | 3 | ✅ Resolved / Acknowledged |
| 📝 QA | 1 | ✅ Resolved |

**Total findings:** 7 (all resolved or formally acknowledged)

The pool lets users deposit SY collateral to join and receive a position NFT, deposit base tokens for a cycle to release partial collateral, bid for pooled liquidity, claim accumulated yield, redeem collateral if a pool is discarded, and finalize cycles to determine winners and distribute funds. Hashlock identified one high severity vulnerability during the initial review, resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./SpiralStake-Smart-Contract-Audit-Report-Final-Report-v4.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/spiral-stake)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
