# Arcane: Hashlock Security Audit

**Client:** Arcane (Arcane Privacy)
**Project Type:** Privacy Protocol, Zero Knowledge, Trustless Mixer, Confidential DeFi
**Network:** Solana
**Language:** Rust (programs), Circom (circuits), TypeScript (apps and APIs)
**Engagements:** 2 public reports (smart contract audit and penetration test, April 2026)
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [arcaneprivacy.com](https://arcaneprivacy.com/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/arcane](https://hashlock.com/audits/arcane)

## About Arcane

Arcane is a privacy layer for Solana. Users deposit a fixed denomination of SOL into a pool and later withdraw to a different wallet, with no public link between the deposit and the withdrawal. The protocol records each deposit as a Poseidon commitment in an incremental Merkle tree, and a zero knowledge proof lets a user demonstrate ownership of a deposit at withdrawal time without revealing which one is theirs. A permissionless relayer network (gated by a staking registry) submits withdrawals on behalf of users and collects a configurable fee, so the recipient never needs to hold gas in the destination wallet.

Privacy protocols carry a dual security burden: they protect user funds and the privacy guarantee itself, where a single flaw in the proof system, the deposit and withdrawal logic, or the supporting infrastructure can break confidentiality for everyone. That is exactly the kind of research heavy engagement Hashlock takes on, and the reason Arcane stood out among recent work.

## Engagement History

Hashlock reviewed Arcane across two engagements, covering both the onchain programs and the off chain application surface that users actually touch. Both are public and rated Secure.

| Report | Date | Scope | Findings (all resolved or acknowledged) | Rating |
|--------|------|-------|------------------------------------------|--------|
| Smart contract audit | Apr 2026 | Arcane Solana program and relayer registry (Rust), withdraw circuit (Circom) | 1 Medium, 13 Low | ✅ Secure |
| Penetration test | Apr 2026 | Web apps and APIs: relayer, frontend, indexer (TypeScript) | 2 High, 8 Medium, 8 Low | ✅ Secure |

Across the two engagements Hashlock identified and helped resolve 2 high, 9 medium, and 21 low findings, all resolved or acknowledged. Reviewing both the onchain proof system and the off chain relayer, frontend, and indexer reflects security coverage across the full privacy stack, where the guarantee depends on every layer holding.

## Primary Audit Scope (Solana program)

Hashlock audited the Rust code of the Arcane program through comprehensive manual line by line analysis supported by software assisted testing, at commit `5d22ec0ff734df8dc16feeb6fc993d2ac3f5460d`.

| # | Component | Role |
|---|-----------|------|
| 1 | `processor/deposit.rs`, `withdraw.rs` | Fixed denomination SOL deposits recorded as Poseidon commitments, relayer submitted withdrawals with configurable fee |
| 2 | `processor/add_pool.rs`, `init_network.rs`, `update_network.rs` | Pool creation at distinct denominations, network configuration (fee recipient wallets and fee splits) |
| 3 | `state/poseidon_merkle_tree.rs`, `commitment.rs`, `nullifier.rs` | Incremental Poseidon Merkle tree, commitment storage, nullifier tracking to prevent double spend |
| 4 | `state/network_state.rs`, `pool.rs`, `notes.rs` | Network and pool state, encrypted note backup |
| 5 | `verifying_key.rs`, `events.rs`, `error.rs`, `lib.rs` | Groth16 verifying key, event emission, error handling, program entrypoints |
| 6 | Relayer registry program | Token staking to register as a relayer, lock period, stake recovery, admin config |
| 7 | `circuits/withdraw.circom` | Zero knowledge circuit proving knowledge of a `(nullifier, secret)` pair committed in the pool's Merkle tree |

**Audited Commit Hash:** `5d22ec0ff734df8dc16feeb6fc993d2ac3f5460d`

## Audit Findings Summary

**Smart contract audit (Rust and Circom):**

| Severity | Count | Status |
|----------|-------|--------|
| 🟠 Medium | 1 | ✅ Resolved |
| 🟡 Low | 13 | ✅ Resolved / Acknowledged |

**Penetration test (web apps and APIs):**

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 2 | ✅ Resolved |
| 🟠 Medium | 8 | ✅ Resolved / Acknowledged |
| 🟡 Low | 8 | ✅ Resolved / Acknowledged |

All vulnerabilities initially identified have been resolved or formally acknowledged. The smart contract review found no high severity issues; the single medium concerned a withdrawal refund parameter, resolved before publication. The penetration test of the off chain surface identified two high severity issues in the application layer, both resolved, reflecting the value of testing the relayer, frontend, and indexer alongside the onchain code.

## Audit Reports

Both reports are published with Arcane's consent.

- 📄 [Smart contract audit](./Arcane-Smart-Contract-Audit-Report-Final-Report-v3.pdf)
- 📄 [Penetration test](./Arcane-Penetration-Test-Report-Final-Report-v3.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/arcane)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete reports on hashlock.com._
