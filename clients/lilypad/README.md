# Lilypad: Hashlock Security Audit

**Client:** Lilypad Network
**Audit Date:** March 2025
**Project Type:** Decentralized Compute, DePIN, AI Inference Infrastructure
**Network:** EVM (Ethereum)
**Language:** Solidity (`^0.8.24`)
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [lilypad.tech](https://www.lilypad.tech)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/lilypad](https://hashlock.com/audits/lilypad)

## About Lilypad

Lilypad Network is building a decentralized, trustless compute network for Web3 applications, leveraging the Bacalhau Project to enable off chain AI inference, machine learning training, and decentralized science (DeSci). It provides a distributed GPU network for scalable AI workloads and lets smart contracts access verifiable off chain computations. Users contribute computing power as Resource Providers, and developers create custom job modules. Notable use cases include AI driven applications such as an AI Oncology Agent, demonstrating capabilities in decentralized healthcare and research.

## Audit Scope

Hashlock audited the Solidity code of the Lilypad protocol through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | MD5 Hash |
|---|----------|----------|
| 1 | `LilypadContractRegistry.sol` | `21f7cd76e030e60a83e87750b68285a9` |
| 2 | `LilypadModuleDirectory.sol` | `1551ee98f391605cfb7307983f816bf3` |
| 3 | `LilypadPaymentEngine.sol` | `15243562587395b2b8de92bf00a81ab8` |
| 4 | `LilypadProxy.sol` | `6bc09bbc9863c8b7ea27577e3d8d7dbc` |
| 5 | `LilypadStorage.sol` | `adfa2468b2f454442d0330700a0098f5` |
| 6 | `LilypadToken.sol` | `f08bef2bfd9d832fda57b523d6512c0d` |
| 7 | `LilypadTokenomics.sol` | `aa775c24825b2a1d6ae36b1350d3351b` |
| 8 | `LilypadUser.sol` | `42273a8e7e03053fc6ba8347bc670038` |
| 9 | `LilypadVesting.sol` | `523dc22873374c05deb470090a03f44c` |
| 10 | `SharedStructs.sol` | `61270545e67d608c3d0c32f1e1924e30` |

**Audited Commit Hash:** `465a20ecd1cc62a8b84f055721f11e3b946f70ea`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 4 | ✅ Resolved |
| 🟠 Medium | 2 | ✅ Resolved |
| 🟡 Low | 2 | ✅ Resolved |
| ⚡ Gas Optimisation | 2 | ✅ Resolved |
| 📝 QA | 8 | ✅ Resolved |

**Total findings:** 18 (all resolved)

The engagement reviewed a full decentralized compute marketplace: a contract registry and module directory, a payment engine coordinating Resource Provider compensation, tokenomics and vesting, user and storage management, and a proxy layer. Hashlock identified four high severity vulnerabilities during the initial review, all resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Lilypad-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/lilypad)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
