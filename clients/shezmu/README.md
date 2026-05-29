# Shezmu: Hashlock Security Audit

**Client:** Shezmu
**Project Type:** DeFi, Hybrid Collateralized Debt Positions (CDP), NFT and Yield Backed Lending
**Network:** Ethereum
**Language:** Solidity
**Engagements:** 2 public audit reports (2024 to 2025)
**Latest Security Rating:** ✅ **Secure**

🔗 **Project Website:** [shezmu.io](https://www.shezmu.io)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/shezmu](https://hashlock.com/audits/shezmu)

## About Shezmu

Shezmu introduces a hybrid Collateralized Debt Position (CDP) platform that combines the capabilities of both NFTs and Yield Bearing Tokens. The platform lets users borrow against both NFTs and Yield Bearing Tokens, providing flexibility and liquidity in the digital asset space. Alongside the core CDP functionality, the project offers a suite of utilities including stablecoin implementations (ShezmuUSD, ShezmuETH, ShezmuBTC), lending vaults, liquidation and auction mechanisms, stability pools, an NFT marketplace, farming, and staking.

## Engagement History

Shezmu returned to Hashlock for a second engagement covering its leveraged ERC20 lending vaults. Both engagements are public and rated Secure.

| Report | Date | Scope | Findings (all resolved) | Rating |
|--------|------|-------|-------------------------|--------|
| Core platform | Oct 2024 | 8 modules (`Farming`, `Marketplace`, `Oasis` lending and stablecoins, `Oracle`, `Sale`, `Staking`, `Token`, `Utils`) | 6 High, 3 Medium, 7 Low, 2 Gas, 4 QA | ✅ Secure |
| Leveraged lending (2nd) | Jul 2025 | `ERC20Vault`, `InterestCollector`, `SoulBound`, `AaveStrategy` | 3 High, 6 Medium, 5 Low, 1 Gas, 4 QA | ✅ Secure |

Across both engagements Hashlock identified and helped resolve 9 high, 9 medium, 12 low, 3 gas, and 8 QA findings, all resolved or acknowledged.

## Primary Audit Scope (Core platform)

The first engagement reviewed a broad multi module DeFi system spanning lending, stablecoins, NFT markets, farming, and staking. All folders were audited at commit `b22956a844e1784fb0242159e57e4639fb9d301d`.

| # | Folder | Scope |
|---|--------|-------|
| 1 | Farming | Staking, rewards, and liquidity provision |
| 2 | Marketplace | ERC721 and ERC1155 NFT marketplace with auctions, escrow, taxes |
| 3 | Oasis | Lending vaults, stablecoins (ShezmuUSD, ShezmuETH, ShezmuBTC), liquidations, stability pools |
| 4 | Oracle | Price feed and oracle logic |
| 5 | Sale | Token sale mechanics |
| 6 | Staking | Token staking and rewards |
| 7 | Token | Token contract logic |
| 8 | Utils | Shared utility libraries |

The second engagement (July 2025) reviewed the leveraged lending vaults: `ERC20Vault` (leveraged positions with up to 10x multipliers, health factors, liquidations), `InterestCollector`, `SoulBound` (position NFTs), and `AaveStrategy` (yield optimization). Audited at commit `9905f16491672392664d076e252c684b53df1333`, fix review at `8670ba6d501a1fec9fcac495851f3f643aec0843`.

## Audit Reports

All reports are published with Shezmu's consent.

- 📄 [Core platform](./Shezmu-Smart-Contract-Audit-Report-Final-Report.pdf)
- 📄 [Leveraged lending (2nd)](./Shezmu-2nd-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/shezmu)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audits conducted by Hashlock Pty Ltd. These reports are published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDFs._
