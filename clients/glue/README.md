# Glue: Hashlock Security Audit

**Client:** Glue
**Project Type:** Layer 1 Blockchain, Substrate Ecosystem
**Network:** Glue (Substrate based L1 with interconnected EVM L2s)
**Language:** Rust (Substrate)
**Token:** $GLUE
**Public Report:** Glue.net (Rust) L1 Smart Contract Audit, July 2024
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [glue.net](https://glue.net)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/glue](https://hashlock.com/audits/glue)

## About Glue

Glue is a blockchain ecosystem built around a user friendly interface and community owned decentralized applications. It consists of a Substrate based Layer 1 relay chain and interconnected EVM compatible Layer 2s, with the GLUE token underpinning secure and affordable transactions across the ecosystem. The project emphasizes fairness in its token distribution, avoiding heavily discounted seed rounds.

## Audit Scope (public report)

Hashlock audited the Rust code of the Glue chain repositories through comprehensive manual line by line analysis supported by software assisted testing, covering both the L1 relay chain and the EVM smart contracts chain.

| # | Component | Role |
|---|-----------|------|
| 1 | `runtime/glue` (L2 EVM chain) | Runtime configuration for governance, XCM, and ERC20 precompiles |
| 2 | `precompiles/assets-erc20` | ERC20 precompile letting contracts call into pallets |
| 3 | `pallets/subscriptions` | Subscription update logic |
| 4 | `node/service` chain specs and client (L2) | Chain specifications and node service configuration |
| 5 | `cli/src/command.rs`, `node/service` (L1 relay chain) | Command line interface and relay chain configuration |

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 1 | ✅ Resolved |
| 🟡 Low | 5 | ✅ Resolved / Acknowledged |

**Total findings:** 6

The high severity finding concerned a missing caller check in an admin configuration function of the ERC20 precompile, resolved before publication. The low severity items covered pallet input validation, event emission completeness, and code hygiene; four were resolved and one was formally acknowledged.

## Confidential Engagements

Hashlock also conducted three further smart contract audits for Glue, listed on the audit page with Secure ratings: the Glue.net Vesting contracts (November 2024, Rust), the L1 Changes review (October 2024, Rust), and the Aave GHO integration (July 2024, Solidity). Those reports are confidential at the client's request, so no findings, scope, contracts, or report files from them are reproduced here.

## Audit Report

The public report is published with Glue's consent.

- 📄 [Glue.net (Rust) L1 smart contract audit](./Glue-Rust-Smart-Contract-Audit-Report-Final-Report-v1.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/glue)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. The published report is shared with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
