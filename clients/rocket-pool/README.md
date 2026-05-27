# Rocket Pool: Hashlock Security Audit

**Client:** Rocket Pool
**Audit Date:** January 2026
**Project Type:** DeFi, Liquid Staking
**Network:** Ethereum
**Language:** Solidity (`^0.7.6`)
**Tokens:** $RPL (governance), rETH (liquid staking token)
**Report Type:** Final Report v3
**Security Rating:** 🛡️ **Hashlocked** (highest tier)

🔗 **Project Website:** [rocketpool.net](https://rocketpool.net/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/rocket-pool](https://hashlock.com/audits/rocket-pool)

## About Rocket Pool

Rocket Pool is the leading decentralized liquid staking protocol built for the Ethereum ecosystem. It allows users to stake any amount of ETH (without needing the standard 32 ETH solo validator requirement) and mint **rETH**, a liquid staking token that represents staked ETH plus accumulated rewards, freely tradable across DeFi. Node operators participate by staking a smaller amount of ETH together with **RPL** collateral to run validators and earn additional commissions. The protocol is engineered around decentralization, lower barriers to staking, and deeper liquidity in the Ethereum staking layer.

## Audit Scope

Hashlock audited the Solidity codebase of the Rocket Pool protocol through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Module |
|---|---|
| 1 | `contracts/contract/megapool/*.sol`: Megapool validator lifecycle, claims, debt repayment |
| 2 | `contracts/contract/deposit/*.sol`: ETH deposits, rETH minting, deposit queues |
| 3 | `contracts/contract/node/*.sol`: Node registration, RPL staking, withdrawals |
| 4 | `contracts/contract/token/*.sol`: rETH and RPL token logic |
| 5 | `contracts/contract/network/*.sol`: Network state and pricing |
| 6 | `contracts/contract/dao/*.sol`: DAO governance, proposals, security council |
| 7 | `contracts/contract/util/*.sol`: Utility libraries and interfaces |
| 8 | `contracts/contract/rewards/*.sol`: Merkle based rewards, snapshots, payouts |
| 9 | `contracts/contract/upgrade/*.sol`: Protocol upgrade infrastructure |

**Audited Commit Hash:** `c9d9cbf2288ccbffe014a442b0ee458dcfc3dfe1`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 1 | ✅ Resolved |

**Total findings:** 1 (all resolved before publication)

### Detailed Findings

**[M-01]** `RocketNodeStaking#slashRPL`: minimum stake check blocks all slashing.

A node staking only the minimum legacy RPL became effectively slash immune because the post slash balance check would always revert. Resolved by introducing a slashing specific path that bypasses the minimum check for involuntary stake reductions.

## Security Rating: Hashlocked 🛡️

The **Hashlocked** rating is Hashlock's highest tier, reserved for projects that ensure ongoing security via bug bounty programs or on chain monitoring technology, going beyond a single point in time audit.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Rocket-Pool-Smart-Contract-Audit-Report-Final-Report-v3.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/rocket-pool)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
