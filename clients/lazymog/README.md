# LazyMog: Hashlock Security Audit

**Client:** LazyMog
**Audit Date:** September 2025
**Project Type:** Meme Token, Multi Stage Presale
**Network:** Ethereum
**Language:** Solidity (`^0.8.20`)
**Token:** $LAZYMOG
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [lazymog.com](https://www.lazymog.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/lazymog](https://hashlock.com/audits/lazymog)

## About LazyMog

LazyMog is a meme coin project on Ethereum embracing a playful anti hustle culture. Its token, $LAZYMOG, promotes a laid back lifestyle with slogans like "Zero Effort, Infinite Chill" and "Get Rich, Stay Asleep." The project uses a zero tax tokenomics model and a multi stage presale, targeting community engagement through humor. Its roadmap, the "Snoozemap," includes meme contests and community events with a focus on minimal effort and maximum enjoyment.

## Audit Scope

Hashlock audited the Solidity code of the LazyMog project through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | Role |
|---|----------|------|
| 1 | `LazyPresale.sol` | 11 stage presale with increasing prices, ETH, USDC, and USDT payments via Chainlink conversion |

**Audited Commit Hash:** `25e997e398ceeef4dabcbceaa23505ec6d6e5309`
**Fix Review Commit Hash:** `acc688263525f48a8d9c609fe257874dc307ba8e`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 2 | ✅ Resolved |
| 🟠 Medium | 1 | ✅ Resolved |
| 🟡 Low | 1 | ✅ Resolved |
| ⚡ Gas Optimisation | 1 | ✅ Resolved |
| 📝 QA | 2 | ✅ Resolved |

**Total findings:** 7 (all resolved)

The presale contract runs an 11 stage sale with increasing prices, accepts ETH, USDC, and USDT with Chainlink price conversion, uses fixed token allocation per stage to prevent overselling, tracks user contributions across all payment methods, and gives the owner stage progression and emergency pause controls. Hashlock identified two high severity vulnerabilities during the initial review, both resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Lazymog-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/lazymog)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
