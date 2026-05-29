# Celo: Hashlock Security Audit

**Client:** Celo (cLabs)
**Project Type:** Layer 2, Payments, Stablecoins, DeFi Infrastructure
**Network:** Ethereum (Celo L2)
**Language:** Solidity (`0.8.11`)
**Token:** $CELO
**Engagements:** 3 public audit reports (2025 to 2026)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [celo.org](https://celo.org/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/celo](https://hashlock.com/audits/celo)

## About Celo

Celo is a purpose driven, Ethereum anchored Layer 2 blockchain designed for fast, low cost, and carbon aware payments and decentralized finance worldwide. Its architecture runs on the OP Stack, uses EigenDA for scalable data availability, and supports zkEVM based verified execution via Succinct SP1, together enabling one second block times and sub cent fees. Users can pay gas in stablecoins such as USDT, USDC, and cUSD, giving the network a practical advantage for real world financial activity. Celo allocates a share of transaction fees to carbon offsets, positioning itself as infrastructure for financial inclusion and sustainable onchain growth. The network has grown to more than 250,000 daily active users.

## Engagement History

Celo is a long term Hashlock client, returning across multiple layers of its stack as the network migrated to an Ethereum Layer 2. Every engagement below is public and rated Secure.

| Report | Date | Scope | Findings (all resolved) | Rating |
|--------|------|-------|-------------------------|--------|
| StakedCelo system | Oct 2025 | 7 contracts (`Account`, `DefaultStrategy`, `GroupHealth`, `Managed`, `Manager`, `Pausable`, `SpecificGroupStrategy`) | 1 Medium, 3 Low, 1 Gas, 4 QA | ✅ Secure |
| Optimism and Superchain (2nd) | Feb 2026 | 42 contracts across the OP Stack (portal, bridges, cross domain messengers, system config) over two protocol versions | 1 Medium, 1 Gas, 4 QA | ✅ Secure |
| CeloSuperchainConfig (3rd) | Mar 2026 | `CeloSuperchainConfig.sol` (pause propagation, guardian controls) | 1 Gas, 1 QA | ✅ Secure |

Across these engagements Hashlock identified and helped resolve 2 medium, 3 low, 3 gas, and 9 QA findings, all resolved or acknowledged. For a network processing real payments at scale, weaknesses in bridge adjacent logic, configuration controls, or staking contracts can affect the broader ecosystem, so multiple layers of Celo's stack have now been reviewed.

## Primary Audit Scope (StakedCelo system)

The first engagement reviewed Celo's StakedCelo liquid staking system, which coordinates CELO voting across validator groups and mints stCELO.

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

## Notable Findings (all resolved or acknowledged)

- **[M-01, StakedCelo]** The UUPSUpgradeable contracts lacked a reserved storage gap (`__gap`), which could cause storage collisions in future upgrades. Resolved by adding fixed size storage gaps per the OpenZeppelin UUPS pattern.
- **[L-02, StakedCelo]** Unrestricted `renounceOwnership()` could permanently remove owner control. Resolved by disabling it.
- **[L-03, StakedCelo]** Off by one error in `GroupHealth.isGroupMemberElected` could cause an out of bounds revert. Resolved.
- **[M-01, Superchain]** `OptimismPortal2#finalizeWithdrawalTransactionExternalProof`: with the ETH lockbox enabled on a custom gas token chain, the portal could treat a withdrawal value as both an ERC20 amount and an ETH amount, draining ETH from the lockbox into the portal. Resolved by gating the lockbox flow on the gas token being ETH.

## Audit Reports

All reports are published with Celo's consent.

- 📄 [StakedCelo system](./Celo-Smart-Contract-Audit-Report-Final-Report-v2.pdf)
- 📄 [Optimism and Superchain (2nd)](./Celo-2nd-Smart-Contract-Audit-Report-Final-Report-v2.pdf)
- 📄 [CeloSuperchainConfig (3rd)](./Celo-3rd-Smart-Contract-Audit-Report-Final-Report-v1.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/celo)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
