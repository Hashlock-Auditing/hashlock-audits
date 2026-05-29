# Avail: Hashlock Security Audit

**Client:** Avail
**Audit Date:** January 2025
**Project Type:** Web3 Infrastructure, Data Availability, ZK Cross Chain Communication
**Network:** zkSync (Ethereum)
**Language:** Solidity (`0.8.24`)
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [availproject.org](https://www.availproject.org/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/avail](https://hashlock.com/audits/avail)

## About Avail

Avail is a Web3 infrastructure layer designed to let modular execution layers scale and interoperate in a trust minimized way. Its Data Availability (DA) Mainnet is live, a first step toward Web3 unification. Avail's roadmap includes Nexus, a permissionless verification hub to unify rollups and chains, and Fusion Security, which aims to provide strong, shared economic security. This engagement covered Avail's L1 and L2 validator smart contracts, which verify inclusion proofs and interface with the Avail bridge for attestations.

## Audit Scope

Hashlock audited the Solidity code of the Avail L1 and L2 validator contracts through comprehensive manual line by line analysis supported by software assisted testing. The contracts operate within the purview of existing zkSync bridge contracts.

**Contracts Audited:**

| # | Contract | MD5 Hash |
|---|----------|----------|
| 1 | `AvailAttestationLib.sol` | `7626e16672d22791dd123d48e050e112` |
| 2 | `AvailL1DAValidator.sol` | `c91a509e3d03965b6101e2c6c3197b96` |
| 3 | `AvailL2DAValidator.sol` | `fb409e72660c0f1d98e22199f93ea05c` |
| 4 | `DummyAvailBridge.sol` | `3e9cfdad10d4d5b9c66203eb53acc4b8` |
| 5 | `DummyVectorX.sol` | `e919e6bca94a548e0e4c681675a69582` |
| 6 | `IAvailBridge.sol` | `598a3c64f42666c50a8653a27deceb59` |
| 7 | `IVectorx.sol` | `f95fd87dad940e2b89c6efe8bf95d9c0` |

**Audited Commit Hash:** `68ddadf8106bde020368e6ab5613a522a88f58f6`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 1 | ✅ Acknowledged |
| 🟡 Low | 3 | ✅ Acknowledged |
| 📝 QA | 2 | ✅ Acknowledged |

**Total findings:** 6 (all formally acknowledged)

The validator contracts store attestation data for state recovery, interface with the Avail bridge to verify proofs, track block numbers and leaf indices, and verify inclusion proofs during batch commitment. Given the contracts operate within established zkSync bridge infrastructure, identified findings were reviewed and acknowledged by the Avail team.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Avail-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/avail)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
