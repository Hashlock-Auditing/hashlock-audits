# Loadout: Hashlock Security Audit

**Client:** Loadout
**Project Type:** Web3 Gaming, Community Funding, Bonding Curve Launchpad
**Network:** Solana
**Language:** Rust
**Engagements:** 2 public audit reports (2026)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [app.loadout.xyz](https://app.loadout.xyz/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/loadout](https://hashlock.com/audits/loadout)

## About Loadout

Loadout is a Web3 gaming platform that lets game studios fund development through community participation and onchain mechanics. The rewards system works as an incentive layer where players and early supporters earn benefits (priority access, in game assets, or future value) by backing projects early and engaging with the ecosystem. Built on Solana, the platform uses a community funded model where demand is created before launch, aligning player incentives with game success and turning engagement into tangible, tradeable rewards. The protocol is built around a bonding curve launchpad: projects launch with a constant product price curve, a SOL treasury target, and an optional team vesting schedule, and once treasury fees reach the target the bonding curve freezes and liquidity migrates into a permanently locked Meteora DLMM pool.

## Engagement History

Loadout returned to Hashlock for a second review covering its post graduation swap routing. Both engagements are public and rated Secure.

| Report | Date | Scope | Findings (all resolved) | Rating |
|--------|------|-------|-------------------------|--------|
| Core protocol | Apr 2026 | `loadout-core`, `graduation`, `vesting` (bonding curve, trading, fees, referrals, Meteora migration, team vesting) | 4 High, 5 Medium, 19 Low, 9 QA | ✅ Secure |
| Swap router (2nd) | Apr 2026 | `swap-router` (`proxy_buy`, `proxy_sell`, post graduation Meteora DLMM routing) | 2 Low, 6 QA | ✅ Secure |

Across both engagements Hashlock identified and helped resolve 4 high, 5 medium, 21 low, and 15 QA findings, all resolved or acknowledged.

## Primary Audit Scope (Core protocol)

The first engagement reviewed the core launchpad: bonding curve trading, graduation into Meteora, and team vesting.

| # | Program / Module | Role |
|---|------------------|------|
| 1 | `loadout-core` | Bonding curve, trading, fees, referrals, allocation withdrawal |
| 2 | `graduation` | Migrates frozen reserves into a locked Meteora DLMM pool |
| 3 | `vesting` | Cliff and linear vesting vault for team allocations |
| 4 | `swap-router` | Proxy buy and sell routing (`proxy_buy.rs`, `proxy_sell.rs`) |
| 5 | Supporting modules | `constant.rs`, `error.rs`, `events.rs`, `lib.rs`, `types.rs`, `mod.rs` |

**Audited Commit Hash:** `3486f26194ea48fe533b11eca1e5e7d2f8678da0`
**Fix Review Commit Hash:** `7f18c50462c2e2a534a818a1790a8577388e75eb`

## Notable Findings (Core protocol, all resolved)

- **[H-01]** `revoke_vesting#handler`: a missing admin identity constraint on the signer allowed any wallet to steal unvested tokens and permanently block beneficiary claims. The `return_token_account` had only a mint constraint, so an attacker could direct forfeited tokens to their own account. Resolved by verifying the project admin and constraining the destination.
- **[H-02]** `init_vesting#handler`: unvalidated `cliff_offset` and `start_ts` enabled permanent token lock via a negative cliff (triggering a u128 overflow that bricked both claim and revoke) and instant vesting bypass via a past `start_ts`. Resolved by adding sign and bound validation.
- **[H-03]** `graduate#handler`: a permissionless caller allowed any wallet to graduate projects and create a mispriced Meteora DLMM pool, drainable through arbitrage. Resolved by gating graduation on the executor and admin role.
- **[H-04]** `begin_graduation`: project treasury SOL (approximately 49.75 SOL per graduated project) was permanently locked after graduation because no withdrawal path existed. Resolved by adding an admin gated treasury withdrawal instruction.

## Audit Reports

All reports are published with Loadout's consent.

- 📄 [Core protocol](./Loadout-Smart-Contract-Audit-Report-Final-Report-v2.pdf)
- 📄 [Swap router (2nd)](./Loadout-2nd-Smart-Contract-Audit-Report-Final-Report-v1.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/loadout)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
