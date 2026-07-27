# U2U Network: Hashlock Security Audit

**Client:** U2U Network
**Project Type:** Layer 1 Blockchain, DAG Based, EVM Compatible
**Network:** U2U Network
**Languages:** Solidity, Golang, TypeScript
**Engagements:** 4 public reports (2024)
**Security Rating:** ✅ **Secure** (all engagements)

🔗 **Hashlock Audit Page:** [hashlock.com/audits/u2u](https://hashlock.com/audits/u2u)

## About U2U Network

U2U Network is a decentralized blockchain platform designed to support scalable real world applications, leveraging a Directed Acyclic Graph (DAG) based architecture with EVM compatibility for fast, secure, and highly efficient operations. The ecosystem spans the core consensus layer, DeFi contracts (AMM, launchpad, marketplace, staking incentives), and a mobile wallet.

## Engagement History

U2U Network engaged Hashlock across four engagements in 2024, covering the full stack from the Golang consensus client to Solidity DeFi contracts and the TypeScript mobile wallet. Every engagement below is public and rated Secure.

| Report | Date | Scope | Findings | Rating |
|--------|------|-------|----------|--------|
| AMM smart contract audit | Oct 2024 | 4 repos: AMM, AMM Launchpad, Market, Launchpad contracts (Solidity) | 3 High, 2 Medium, 3 Low, 3 Gas, 6 QA | ✅ Secure |
| Mobile wallet penetration test | Sep to Oct 2024 | `u2u-mobile-wallet` code base (TypeScript) | 1 High, 5 Medium, 3 Low, 6 QA | ✅ Secure |
| Staking smart contract audit | Nov 2024 | `IncentivePool.sol` (Solidity) | 2 High, 3 Medium, 4 Low, 6 Gas, 3 QA | ✅ Secure |
| Consensus audit | Dec 2024 | `go-helios` consensus repository (Golang) | 2 Low, 1 QA | ✅ Secure |

Across the four engagements Hashlock identified 6 High, 10 Medium, 12 Low, 9 Gas, and 16 QA findings, all resolved or formally acknowledged. Reviewing the consensus layer, the DeFi contracts, and the wallet application reflects security coverage across the full platform stack.

## Audit Scopes and Commits

**AMM smart contract audit (Oct 2024):**

| Repository | Audited Commit Hash |
|------------|---------------------|
| AMM-Contract | `93833866251c697a8c08ac5b0c7a6b647881fa42` |
| AMM-Launchpad-Contract | `cc31946ac518c32cd684fd4364656edc16b91a9d` |
| Market-Contracts | `f6ce0b5096ddca767349f5a2a2932b68aceedc76` |
| Launchpad-Contracts | `0a280f7f48b4587007a66ec27d5c2ae03562041b` |

**Staking smart contract audit (Nov 2024):** `IncentivePool.sol` (MD5 `91307b9c1bd18cf821c38fe78933887c`) at commit `f84f1eebc037e4918076ccf5c372b7c3ac8b5269`.

**Consensus audit (Dec 2024):** `github.com/unicornultrafoundation/go-helios` at commit `a63dacf698ea26f000ccdce3664743232dbaa57e`.

**Mobile wallet penetration test (Sep to Oct 2024):** `github.com/unicornultrafoundation/u2u-mobile-wallet` at commit `5dc294a1abdd7b123286d6d110df4e22ea0b1618`.

## Audit Findings Summary

| Engagement | 🔴 High | 🟠 Medium | 🟡 Low | ⚡ Gas | 📝 QA | Status |
|------------|--------|-----------|--------|--------|-------|--------|
| AMM audit | 3 | 2 | 3 | 3 | 6 | ✅ All resolved |
| Mobile wallet pentest | 1 | 5 | 3 | 0 | 6 | ✅ All resolved |
| Staking audit | 2 | 3 | 4 | 6 | 3 | ✅ Resolved / Acknowledged |
| Consensus audit | 0 | 0 | 2 | 0 | 1 | ✅ Resolved / Acknowledged |

All high and medium severity findings across the four engagements were resolved before publication; remaining acknowledged items are lower severity optimisations accepted after internal review.

## Audit Reports

All reports are published with U2U Network's consent.

- 📄 [AMM smart contract audit](./U2U-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [Staking smart contract audit](./U2U-Staking-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [Consensus audit](./U2U-Consensus-Smart-Contract-Audit-Report-Final-Report-v1.pdf)
- 📄 [Mobile wallet penetration test](./U2U-Mobile-Wallet-Penetration-Test-Report-Final-Report.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/u2u)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
