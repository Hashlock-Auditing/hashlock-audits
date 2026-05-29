# Algem: Hashlock Security Audit

**Client:** Algem
**Project Type:** DeFi, Liquid Staking, Yield Farming
**Network:** Astar (Polkadot ecosystem)
**Language:** Solidity
**Token:** ALGM
**Engagements:** 5 public audit reports (2023 to 2024)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [algem.io](https://www.algem.io)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/algem](https://hashlock.com/audits/algem)

## About Algem

Algem is a decentralized liquid staking platform built in the Polkadot ecosystem on Astar, letting users stake assets while keeping liquidity through Web3 technologies. Participants earn staking rewards without locking up their tokens, giving them flexibility to engage in DeFi activities like lending and yield farming. By providing non custodial, liquid staking, Algem helps users maximize capital efficiency and compound returns across the Astar network.

## Engagement History

Algem is one of Hashlock's longest standing clients, returning across five engagements from 2023 to 2024 as the protocol expanded from a lending adapter into liquid staking, crowd loans, and yield farming. Every engagement below is public and rated Secure.

| Report | Date | Scope | Findings (all resolved) | Rating |
|--------|------|-------|-------------------------|--------|
| Smart contract audit (Sio2 adapter) | Aug 2023 | `Sio2Adapter.sol`, `Sio2AdapterAssetManager.sol` | 5 High, 7 Medium, 12 Low, 3 Gas | ✅ Secure |
| Liquid Crowd Loan | Mar 2024 | `LiquidCrowdloan.sol`, `ALGMVesting.sol` | 4 High, 1 Medium, 3 Low | ✅ Secure |
| Staking V2 | Jun 2024 | 6 contracts (`LiquidStaking`, `LiquidStakingAdmin`, `LiquidStakingMain`, `LiquidStakingManager`, `LiquidStakingStorage`, `LiquidStakingVoting`) | 2 High, 1 Medium, 2 Low, 2 Gas, 2 QA | ✅ Secure |
| Liquid Staking | Dec 2024 | 10 contracts (Chainlink CCIP enabled cross chain liquid staking, voting, `XNASTR`, OFT) | 2 Medium, 4 Low, 3 QA | ✅ Secure |
| Liquid Farming V3 | Dec 2024 | 4 contracts (`LFxKyoV3Vault0`, `LFxKyoV3Pool`, `LFxSonusV3Pool`, `LFxSonusV3Vault0`) | 3 High, 5 Medium, 3 Low | ✅ Secure |

Across these five engagements Hashlock identified and helped resolve 14 high, 16 medium, 24 low, 5 gas, and 5 QA findings, all resolved or acknowledged.

## Primary Audit Scope (Liquid Staking)

The Liquid Staking engagement reviewed Algem's Chainlink CCIP enabled cross chain liquid staking system, the most extensive of the five.

| # | Contract | MD5 Hash |
|---|----------|----------|
| 1 | `LiquidStakingLayer2.sol` | `fd710f66e80ebe8e68fec9ee728aa9a8` |
| 2 | `WASTRCCT.sol` | `792602310d7e2900feb6253e43507578` |
| 3 | `XNASTR.sol` | `82a5fb878e1cedaa1622d24a57c3e4fd` |
| 4 | `LiquidStakingAdmin.sol` | `4495fda92c69235768363c8e803757e3` |
| 5 | `LiquidStakingMain.sol` | `e6bc164a73bc5327abf8d57a4ef49404` |
| 6 | `LiquidStakingManager.sol` | `be305ff1176b9cd8783cb37ee8c836a6` |
| 7 | `LiquidStaking.sol` | `15716686d76b78f31df7fa47bd7adf73` |
| 8 | `LiquidStakingStorage.sol` | `2d623cbf365537f7fa298b9ecf464ddd` |
| 9 | `LiquidStakingVoting.sol` | `dc83c85d76dbb078c9791af9e3f71482` |
| 10 | `BaseOFTV2Upgradeable.sol` | `42cf1da5e75ee3ca156b911a5c3980b9` |

## Audit Reports

All reports are published with Algem's consent.

- 📄 [Smart contract audit (Sio2 adapter)](./Algem-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [Liquid Crowd Loan](./Algem-Liquid-Crowd-Loan-Final-Report-v2.pdf)
- 📄 [Staking V2](./Algem-Staking-V2-Smart-Contract-Audit-Report-Final-Report-v1.pdf)
- 📄 [Liquid Staking](./Algem-Liquid-Staking-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [Liquid Farming V3](./Algem-Liquid-Farming-V3-Smart-Contract-Audit-Report-Final-Report.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/algem)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
