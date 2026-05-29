# OpenZK: Hashlock Security Audit

**Client:** OpenZK
**Project Type:** Layer 2, Zero-Knowledge Rollup, ETH Staking and Restaking
**Network:** EVM (Ethereum)
**Language:** Solidity
**Engagements:** 5 public audit reports (2025)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [openzk.net](https://www.openzk.net)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/openzk](https://hashlock.com/audits/openzk)

## About OpenZK

OpenZK is a Layer 2 network that uses Zero-Knowledge (ZK) Rollup technology to enhance Ethereum's scalability and transaction efficiency while maintaining high security. By integrating native ETH staking and restaking, OpenZK improves scalability and creates new revenue streams for users. Its leadership includes co-founder Dave Sandor (formerly Executive Director at Goldman Sachs Asia-Pacific), co-founder and CTO Lucas Cullen (an early contributor to Ethereum), and co-founder Jenna Wayne. OpenZK is distinguished by a Dual Gas Fee Mechanism, letting users pay gas with its native and protocol tokens, which adds flexibility and creates sustained demand for the protocol token.

## Engagement History

OpenZK is one of Hashlock's longest standing return clients, coming back through 2025 for repeated reviews as the protocol grew. The reports below are public, every engagement rated Secure.

| Report | Date | Scope | Findings (all resolved) | Rating |
|--------|------|-------|-------------------------|--------|
| 2nd audit (SkyMoneyVault) | Feb 2025 | `SkyMoneyVault.sol` | 2 High, 4 QA | ✅ Secure |
| 3rd audit (token distribution) | Mar 2025 | `TokenDistributor.sol`, `OZKToken.sol` | 1 Low, 2 Gas, 3 QA | ✅ Secure |
| Core staking and restaking (Update v3) | Apr 2025 | 11 contracts (liquidity manager, Rocket Pool and EigenLayer vaults, ozETH, bridge, presale, vesting) | 5 High, 3 Low, 2 Gas, 8 QA | ✅ Secure |
| 5th audit (bridge, staking, paymasters) | May 2025 | `BridgeTokenMiddleware`, `Staking`, `YieldFarm`, `wozETH`, `ApprovalPaymaster`, `GeneralPaymaster` | 3 High, 3 Medium, 6 Low, 4 Gas | ✅ Secure |
| 8th audit (epoch staking) | Jun 2025 | `Staking.sol` (epoch based, time weighted rewards) | 2 Medium, 1 Low | ✅ Secure |

Across these public engagements Hashlock identified and helped resolve 10 high, 5 medium, 11 low, 8 gas, and 15 QA findings, all resolved or acknowledged.

## Primary Audit Scope (Core staking and restaking system)

The most extensive engagement reviewed OpenZK's staking and restaking core, covering Rocket Pool and EigenLayer integrations, the liquid staking token, the bridge middleware, the private sale, and vesting.

| # | Contract | Role |
|---|----------|------|
| 1 | `LiquidityManager.sol` | Stake and unstake routing, vault management, rebalancing |
| 2 | `RocketPoolVault.sol` | Rocket Pool staking vault |
| 3 | `RocketPoolVaultBase.sol` | Base vault logic for deposits, withdrawals, shares |
| 4 | `UniswapOracle.sol` | Uniswap based price oracle |
| 5 | `Token.sol` | Protocol token |
| 6 | `ozETH.sol` | Liquid staking token (mint and burn via MINTER_ROLE) |
| 7 | `PrivateSale.sol` | Private sale deposits (ETH and USDT) |
| 8 | `PrivateSaleManagement.sol` | Private sale administration and whitelist |
| 9 | `VestingManager.sol` | Vesting schedule and claims |
| 10 | `EigenLayerRETHVault.sol` | EigenLayer rETH restaking vault |
| 11 | `BridgeMiddleware.sol` | Cross chain bridge and swap routing |

**Audited Commit Hashes:** `3b132d363f6929b684e81e35c968c47d73bee409` (zkstaking), `09ad07f4ffccfb6c4dc245e0447df81c8a4ab75c` (presale)
**Fix Review Commit Hashes:** `5f6683767e2a14e4ab8e07b1f1e073fbc168abf7` (zkstaking), `1dd2549003f0d40d9af720252f73877a04050cff` (presale)

## Notable Findings (Core staking and restaking system, all resolved)

- **[H-01]** `RocketPoolVaultBase#_deposit`: shares were calculated from a total that summed ETH and rETH amounts directly, ignoring their differing values, so depositing equal amounts of ETH and rETH minted equal shares. Resolved by computing shares from the rETH amount actually swapped.
- **[H-02]** `RocketPoolVaultBase#_convertAssetsToShares`: the function never updated its return variable and always returned 0, causing depositors to receive 0 shares and lose funds. Resolved.
- **[H-03]** `EigenLayerRETHVault#deposit`: underlying tokens were transferred from the user twice, charging double the intended amount. Resolved by removing the redundant transfer.
- **[H-04]** `EigenLayerRETHVault#_canWithdraw`: incorrect logic compared a seconds based cliff against `block.number` and always returned false, blocking withdrawals. Resolved.
- **[H-05]** `BridgeMiddleware#_performSwap`: the slippage check ignored token decimal differences (for example USDC at 6 decimals versus DAI at 18), bypassing slippage protection or reverting swaps. Resolved by accounting for decimals.

## Audit Reports

All reports are published with OpenZK's consent.

- 📄 [Core staking and restaking (Update v3)](./OpenZK-Update-Smart-Contract-Audit-Report-Final-Report-v3.pdf)
- 📄 [2nd audit (SkyMoneyVault)](./OpenZK-2nd-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [3rd audit (token distribution)](./OpenZK-3rd-Smart-Contract-Audit-Report-Final-Report-v3.pdf)
- 📄 [5th audit (bridge, staking, paymasters)](./OpenZK-5th-Smart-Contract-Audit-Report-Final-Report-v3.pdf)
- 📄 [8th audit (epoch staking)](./OpenZK-8th-Smart-Contract-Audit-Report-Final-Report-v3.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/openzk)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
