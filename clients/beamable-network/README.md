# Beamable: Hashlock Security Audit

**Client:** Beamable (BaaS)
**Audit Date:** November 2025
**Project Type:** DePIN, Game Backend Infrastructure, Worker Staking
**Network:** Solana
**Language:** Rust
**Token:** BMB
**Report Type:** Final Report v3
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [beamable.com](https://beamable.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/beamable-network](https://hashlock.com/audits/beamable-network)

## About Beamable

Beamable is a comprehensive game backend platform that lets developers build and deploy multiplayer games without managing backend infrastructure. The platform provides serverless game APIs, social features, commerce, leaderboards, and multiplayer functionality through native Unity and Unreal SDKs. Its goal is to eliminate backend complexity, reducing deployment time from months to days while maintaining scalability. Beamable adds Web3 monetization tools and decentralized hosting through a DePIN model, where workers stake BMB tokens to provide infrastructure and earn time weighted USDC and BMB rewards.

## Audit Scope

Hashlock audited the Rust code of the Beamable worker staking program through comprehensive manual line by line analysis supported by software assisted testing.

**Scope:** `worker_stake/` program, covering admin instructions (initialize stake config, update minimum stake requirement), user instructions (stake, unstake, claim rewards, withdraw), and worker instructions.

**Audited Commit Hash:** `5c31e3de69a028caafad2fc839eb08e4d1d007b5`
**Fix Review Commit Hash:** `2473a5336887375d684cbb102b8d91d07f17d353`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 2 | ✅ Resolved |
| 🟠 Medium | 2 | ✅ Resolved |
| 🟡 Low | 4 | ✅ Resolved |
| 📝 QA | 4 | ✅ Resolved |

**Total findings:** 12 (all resolved)

The engagement reviewed a Solana staking system with time weighted reward accounting, pool inheritance logic, opt out and re stake prevention, sequential reward claiming with stake to points ratios, and dual token (USDC and BMB) emissions. Hashlock identified two high severity vulnerabilities during the initial review, both resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Beamable-Network-Smart-Contract-Audit-Report-Final-Report-v4.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/beamable-network)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
