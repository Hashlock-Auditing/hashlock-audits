# OpenZK: Hashlock Security Audit

**Client:** OpenZK
**Audit Date:** April 2025
**Project Type:** Layer 2, Zero-Knowledge Rollup, ETH Staking and Restaking
**Network:** EVM
**Language:** Solidity (`0.8.27`)
**Report Type:** Final Report v3
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [openzk.net](https://www.openzk.net)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/openzk](https://hashlock.com/audits/openzk)

## About OpenZK

OpenZK is a Layer 2 network that uses Zero-Knowledge (ZK) Rollup technology to enhance Ethereum's scalability and transaction efficiency while maintaining high security. By integrating native ETH staking and restaking capabilities, OpenZK bolsters scalability and creates new revenue streams for users. The project's leadership includes co-founder Dave Sandor, formerly an Executive Director at Goldman Sachs Asia-Pacific, co-founder and CTO Lucas Cullen, an early contributor to Ethereum's development, and co-founder Jenna Wayne. OpenZK is distinguished by a Dual Gas Fee Mechanism, allowing users to pay gas fees with its native and protocol tokens, enhancing network flexibility and creating sustained demand for its protocol token.

## Audit Scope

Hashlock audited the Solidity code of the OpenZK project through comprehensive manual line by line analysis supported by software assisted testing. Scope covered the ZK staking and restaking vaults (including Rocket Pool and EigenLayer integrations), the bridge middleware, the presale, and vesting.

**Contracts Audited:**

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

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 5 | ✅ Resolved |
| 🟡 Low | 3 | ✅ Resolved |
| ⚡ Gas Optimisation | 2 | ✅ Resolved |
| 📝 QA | 8 | ✅ Resolved |

**Total findings:** 18 (all resolved)

### Notable High Severity Findings (all resolved)

- **[H-01]** `RocketPoolVaultBase#_deposit`: shares were calculated from a total that summed ETH and rETH amounts directly, ignoring their differing values, so depositing equal amounts of ETH and rETH minted equal shares. Resolved by computing shares from the rETH amount actually swapped.
- **[H-02]** `RocketPoolVaultBase#_convertAssetsToShares`: the function never updated its return variable and always returned 0, causing depositors to receive 0 shares and lose funds. Resolved.
- **[H-03]** `EigenLayerRETHVault#deposit`: underlying tokens were transferred from the user twice, charging double the intended amount. Resolved by removing the redundant transfer.
- **[H-04]** `EigenLayerRETHVault#_canWithdraw`: incorrect logic compared a seconds based cliff against `block.number` and always returned false, blocking withdrawals. Resolved.
- **[H-05]** `BridgeMiddleware#_performSwap`: the slippage check ignored token decimal differences (for example USDC at 6 decimals versus DAI at 18), bypassing slippage protection or reverting swaps. Resolved by accounting for decimals.

This engagement showcases Hashlock's depth in liquid staking and restaking systems, ZK rollup infrastructure, vault share accounting, and cross chain bridge security.

## Full Audit Report

📄 [Read the full audit report (PDF)](./OpenZK-Smart-Contract-Audit-Report-Final-Report-v3.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/openzk)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
