# Spicenet: Hashlock Security Audit

**Client:** Spicenet
**Audit Date:** September 2025
**Project Type:** DeFi Brokerage Network & Cross Chain Liquidity
**Network:** Solana
**Language:** Rust
**Report Type:** Final Report v3
**Security Rating:** 🛡️ **Hashlocked** (highest tier)

🔗 **Project Website:** [spicenet.io](https://spicenet.io/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/spicenet](https://hashlock.com/audits/spicenet)

## About Spicenet

Spicenet is a brokerage network in the DeFi space, aiming to simplify how applications, assets, and cross chain ecosystems interact with liquidity, financial instruments, and yield sources. Their two main offerings, **Spice Edge** and **Spice Flow**, are SDK and API tools that let developers and projects tap into multiple DeFi venues (exchanges, liquidity pools, yield aggregators) with a single integration. The goal is to deliver better execution, distribution, and UX across chains, making it easier to scale apps, launch new assets, and deliver competitive financial outcomes.

## Audit Scope

Hashlock audited the Rust codebase of the Spicenet protocol through comprehensive manual line by line analysis supported by software assisted testing.

**Crates Audited:**

| # | Crate | Description |
|---|-------|-------------|
| 1 | `capsule` | Smart wallet system: admin, recovery, ephemeral wallets, multisig propose / vote / execute |
| 2 | `instruments` | Spot and derivative product definitions, MPG linking |
| 3 | `oracle` | Oracle node registry, whitelist, staking, exits |
| 4 | `sokoban` | Transaction ingestion, priority scheduling, block building |
| 5 | `stf` | State Transition Function: nonce, fee, gas enforcement, dispatch |
| 6 | `rollup` | L2 batch commits, finality windows, proof coordination |
| 7 | `provers` | Proof generation from STF traces, aggregation, key management |
| 8 | `time` | Chain time, slots, epoch math, timelock validation |
| 9 | `shared` | Common types, serialization, hashing, fixed point arithmetic |

**Audited Commit Hash:** `658f63d635e283c93e922fae0ae27c49e83d871a`
**Fix Review Commit Hash:** `7029d0ae5b6e87b5627d8491918cf6115c696e67`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 11 | ✅ Resolved |
| 🟠 Medium | 3 | ✅ Resolved |

**Total findings:** 14 (all resolved)

### Notable High Severity Findings (all resolved)

- **[H-01]** Unenforced nonce in `capsule#call` allowed replay attacks against signed messages
- **[H-02]** Missing binding validation between approving wallet and capsule wallet enabled authentication bypass
- **[H-03]** Proposal overwriting via attacker controlled seed in `multisig_propose`
- **[H-04]** Approved multisig proposals could be re executed indefinitely
- **[H-07]** Non deterministic wallet address generation via `OsRng` would halt the chain
- **[H-08]** Whitelisted user could overwrite oracle node records by replaying `register`
- **[H-09]** Missing binding between `node_address` and `user_address` allowed draining oracle stakes
- **[H-10]** No proof of control on wallet additions enabled cross capsule address squatting
- **[H-11]** Missing capsule scoping in `revoke_wallet` allowed cross capsule revocations

## Security Rating: Hashlocked 🛡️

The **Hashlocked** rating is Hashlock's highest tier, reserved for projects that ensure ongoing security via bug bounty programs or on chain monitoring technology, going beyond a single point in time audit.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Spicenet-Smart-Contract-Audit-Report-Final-Report-v3.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/spicenet)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
