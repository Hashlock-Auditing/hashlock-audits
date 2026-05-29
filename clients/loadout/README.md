# Loadout: Hashlock Security Audit

**Client:** Loadout
**Audit Date:** April 2026
**Project Type:** Web3 Gaming, Community Funding, Bonding Curve Launchpad
**Network:** Solana
**Language:** Rust
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [app.loadout.xyz](https://app.loadout.xyz/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/loadout](https://hashlock.com/audits/loadout)

## About Loadout

Loadout is a Web3 gaming platform that lets game studios fund development through community participation and onchain mechanics. The rewards system works as an incentive layer where players and early supporters earn benefits (priority access, in game assets, or future value) by backing projects early and engaging with the ecosystem. Built on Solana, the platform uses a community funded model where demand is created before launch, aligning player incentives with game success and turning engagement into tangible, tradeable rewards.

The protocol is built around a bonding curve launchpad. Projects launch with a constant product price curve, a SOL treasury target, and an optional team vesting schedule. Once treasury fees reach the target, the bonding curve freezes and liquidity is migrated into a permanently locked Meteora DLMM pool.

## Audit Scope

Hashlock audited the Rust programs of the Loadout project through comprehensive manual line by line analysis supported by software assisted testing.

**Programs Audited:**

| # | Program / Module | Role |
|---|------------------|------|
| 1 | `loadout-core` | Bonding curve, trading, fees, referrals, allocation withdrawal |
| 2 | `graduation` | Migrates frozen reserves into a locked Meteora DLMM pool |
| 3 | `vesting` | Cliff and linear vesting vault for team allocations |
| 4 | `swap-router` | Proxy buy and sell routing (`proxy_buy.rs`, `proxy_sell.rs`) |
| 5 | Supporting modules | `constant.rs`, `error.rs`, `events.rs`, `lib.rs`, `types.rs`, `mod.rs` |

**Audited Commit Hash:** `3486f26194ea48fe533b11eca1e5e7d2f8678da0`
**Fix Review Commit Hash:** `7f18c50462c2e2a534a818a1790a8577388e75eb`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 4 | ✅ Resolved |
| 🟠 Medium | 5 | ✅ Resolved / Acknowledged |
| 🟡 Low | 19 | ✅ Resolved / Acknowledged |
| 📝 QA | 9 | ✅ Resolved / Acknowledged |

**Total findings:** 37 (all resolved or formally acknowledged)

### Notable High Severity Findings (all resolved)

- **[H-01]** `revoke_vesting#handler`: a missing admin identity constraint on the signer allowed any wallet to steal unvested tokens and permanently block beneficiary claims. The `return_token_account` had only a mint constraint, so an attacker could direct forfeited tokens to their own account. Resolved by verifying the project admin and constraining the destination.
- **[H-02]** `init_vesting#handler`: unvalidated `cliff_offset` and `start_ts` enabled permanent token lock via a negative cliff (triggering a u128 overflow that bricked both claim and revoke) and instant vesting bypass via a past `start_ts`. Resolved by adding sign and bound validation.
- **[H-03]** `graduate#handler`: a permissionless caller allowed any wallet to graduate projects and create a mispriced Meteora DLMM pool, drainable through arbitrage. Resolved by gating graduation on the executor and admin role.
- **[H-04]** `begin_graduation`: project treasury SOL (approximately 49.75 SOL per graduated project) was permanently locked after graduation because no withdrawal path existed. Resolved by adding an admin gated treasury withdrawal instruction.

The audit demonstrates the depth of Hashlock's Solana and Rust review process, covering bonding curve economics, cross program invocation safety, PDA authority validation, Meteora DLMM integration, and vesting math edge cases.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Loadout-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/loadout)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
