# Celo: Hashlock Security Audit

**Client:** Celo (cLabs)
**Audit Date:** October 2025 (with multiple subsequent engagements through 2026)
**Project Type:** Layer 2, Payments, Stablecoins, DeFi Infrastructure
**Network:** Ethereum (Celo L2)
**Language:** Solidity (`0.8.11`)
**Token:** $CELO
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [celo.org](https://celo.org/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/celo](https://hashlock.com/audits/celo)

## About Celo

Celo is a purpose driven, Ethereum anchored Layer 2 blockchain designed for fast, low cost, and carbon aware payments and decentralized finance worldwide. Its architecture runs on the OP Stack, uses EigenDA for scalable data availability, and supports zkEVM based verified execution via Succinct SP1, together enabling one second block times and sub cent fees. Users can pay gas in stablecoins such as USDT, USDC, and cUSD, giving the network a practical advantage for real world financial activity. Celo allocates a share of transaction fees to carbon offsets, positioning itself as infrastructure for financial inclusion and sustainable onchain growth. The network has grown to more than 250,000 daily active users.

## Audit Scope

Hashlock audited the Solidity code of Celo's StakedCelo system through comprehensive manual line by line analysis supported by software assisted testing. This README reflects the StakedCelo engagement (October 2025).

**Contracts Audited:**

| # | Contract | Role |
|---|----------|------|
| 1 | `Account.sol` | CELO voting and withdrawals, account proxy managed by the Manager |
| 2 | `DefaultStrategy.sol` | Vote distribution across active, healthy validator groups |
| 3 | `GroupHealth.sol` | Validator group health checks (registration, slashing, election) |
| 4 | `Managed.sol` | Upgradeable base contract providing a Manager access role |
| 5 | `Manager.sol` | Central coordinator: deposits, withdrawals, stCELO mint and burn |
| 6 | `Pausable.sol` | Emergency stop functionality managed by a Pauser role |
| 7 | `SpecificGroupStrategy.sol` | Vote distribution for users selecting a specific validator group |

**Audited Commit Hash:** `a3c350a23ed3aade246a2bb0a93ec53a7607a5be`
**Fix Review Commit Hash:** `9c85724899f1f0185d9d57bbd8e602e1b6a7f710`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 1 | ✅ Resolved |
| 🟡 Low | 3 | ✅ Resolved |
| ⚡ Gas Optimisation | 1 | ✅ Acknowledged |
| 📝 QA | 4 | ✅ Resolved / Acknowledged |

**Total findings:** 9 (all resolved or formally acknowledged)

### Notable Findings

- **[M-01]** The UUPSUpgradeable contracts (`Account.sol`, `DefaultStrategy.sol`, `GroupHealth.sol`, `Manager.sol`, `SpecificGroupStrategy.sol`) lacked a reserved storage gap (`__gap`), which could cause storage collisions in future upgrades. Resolved by adding fixed size storage gaps per the OpenZeppelin UUPS pattern.
- **[L-01]** Important state changing functions across the system lacked event emissions, making offchain monitoring difficult. Resolved.
- **[L-02]** Unrestricted `renounceOwnership()` could permanently remove owner control. Resolved by disabling it.
- **[L-03]** Off by one error in `GroupHealth.isGroupMemberElected` could cause an out of bounds revert. Resolved.

## Multiple Engagements

Celo's collaboration with Hashlock is ongoing, not a one time exercise. Hashlock has completed a series of engagements across Celo's stack, all rated Secure:

- **StakedCelo smart contracts** (October 2025): covered in this report
- **Optimism, Superchain smart contracts** (February 2026): a 42 contract review across the OP Stack bridge and messaging layer
- **CeloSuperchainConfig** (March 2026): pause state logic, guardian controls, and upstream configuration propagation across the Superchain
- **Additional reviews** including validator, epoch, and election logic and the gas sponsored OFT bridge

For a network processing real payments at scale, contract security is foundational. Weaknesses in bridge adjacent logic, configuration controls, or staking contracts can affect the broader ecosystem. Multiple layers of Celo's stack have now been reviewed and rated Secure.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Celo-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/celo)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
