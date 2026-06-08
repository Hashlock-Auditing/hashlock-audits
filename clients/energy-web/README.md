# Energy Web: Hashlock Security Audit

**Client:** The Energy Web Foundation
**Audit Date:** August 2025 (with additional engagements through January 2026)
**Project Type:** Enterprise Blockchain, Energy, Sustainability, DeFi & Bridges
**Network:** Polkadot (EWX Parachain), Ethereum
**Language:** Rust (Substrate)
**Report Type:** Final Report v4
**Security Rating:** 🛡️ **Hashlocked** (highest tier)

🔗 **Project Website:** [energyweb.org](https://www.energyweb.org/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/energy-web](https://hashlock.com/audits/energy-web)

## About Energy Web

Energy Web is a global, open source nonprofit focused on accelerating the clean energy transition through decentralized digital infrastructure. Launched in 2017, the organization stewarded the **Energy Web Chain (EWC)**, an enterprise focused Proof of Authority blockchain. Energy Web is now transitioning to their flagship network: **Energy Web X (EWX)**, a Substrate based Polkadot parachain.

EWX introduces a permissionless Proof of Stake consensus model, enabling broad validator and delegator participation while unlocking staking rewards and supporting a robust on chain economy. The **Energy Web Token (EWT)** is transitioning into a fully compliant ERC 20 token on Ethereum mainnet, supported by a dual bridge architecture: a bidirectional bridge between Ethereum and EWX, plus continued support for lifting from EWC to EWX. The vision: advancing interoperability, regulatory compliance, and grid decentralization.

## Audit Scope

Hashlock audited the Rust code of the Energy Web parachain through comprehensive manual line by line analysis supported by software assisted testing. The scope covered multiple pull requests against the production parachain.

**Repository:** [github.com/energywebfoundation/energy-web-parachain-node](https://github.com/energywebfoundation/energy-web-parachain-node)

**Pallets & Components Audited:**

| # | Component | Description |
|---|-----------|-------------|
| 1 | `parachain-staking` pallet | Nominator and collator lifecycle, era transitions, rewards |
| 2 | `Ethereum-bridge` pallet | Bridge request flow, validator voting, transaction execution |
| 3 | `EWX Configuration & Chain Spec` | Parachain config, node services, AvnProxy, Ethereum helper |

**Audited Commit Hashes:**

- `d4de4a2c600d6620b10252960991ce06c3dd33a9` (PR #158)
- `e9fd6518150db02dcfb830fab2bf91a0c2c286cf` (PR #196)
- `f2bf681c76607b3171a961e4eaf7e652224e4c2d` (PR #197)

**Fix Review Commit Hash:** `b803cc36494afb47fdfe8e6165180de91a98f0e3`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 7 | ✅ Resolved |
| 🟡 Low | 8 | ✅ Resolved / Acknowledged |
| 📝 QA | 1 | ✅ Acknowledged |

**Total findings:** 16 (all resolved or formally acknowledged)

### Notable Medium Severity Findings (all resolved)

- **[M-01]** Root misconfiguration in `select_top_candidates` could trigger panic at era transition, bricking the chain
- **[M-04]** Missing slashing for invalid Ethereum event votes made attacks economically cheap
- **[M-05]** `avn-service` exposed unauthenticated local RPC for arbitrary signing, allowing complete compromise of node's Ethereum wallet
- **[M-06]** Missing chain ID in transaction parameters enabled cross chain replay attacks

## Security Rating: Hashlocked 🛡️

The **Hashlocked** rating is Hashlock's highest tier, reserved for projects that maintain ongoing security commitments such as bug bounty programs, going beyond a single point in time audit.

## Full Audit Reports

📄 [Energy Web Bridge and Staking Pallet, Final Report v4 (PDF)](./Energy-Web-Bridge-and-Staking-Pallet-Audit-Report-Final-Report-v4.pdf)
📄 [Energy Web EWX Polkadot Asset Hub Integration, Final Report v5 (PDF)](./Energy-Web-EWX-Polkadot-Asset-Hub-Integration-Final-Report-v5.pdf)
📄 [Energy Web X Liquid Staking Pallet, Final Report v4 (PDF)](./Energy-Web-X-Liquid-Staking-Pallet-Smart-Contract-Audit-Report-Final-Report-v4.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/energy-web)

> **Multiple Engagements:** Hashlock has conducted three separate audits across the Energy Web ecosystem: the core parachain (bridge and staking), the EWX integration with Polkadot Asset Hub, and the liquid staking pallet.

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

**Deep Substrate & Polkadot Experience.** Hashlock has audited multiple Substrate based chains, custom pallets, runtime upgrades, and cross chain (XCM) integrations across the Polkadot and Kusama ecosystems, including the Energy Web parachain audits referenced above.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, severity definitions, and detailed findings, please refer to each complete PDF._
