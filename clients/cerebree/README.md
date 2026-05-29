# CeReBree: Hashlock Security Audit

**Client:** CeReBree
**Audit Date:** September 2025
**Project Type:** HRTech, AI Recruitment, Token Presale and Staking
**Network:** Ethereum
**Language:** Solidity (`^0.8.30`)
**Token:** CRB
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [cerebree.icoda.io](https://cerebree.icoda.io/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/cerebree](https://hashlock.com/audits/cerebree)

## About CeReBree

CeReBree is a blockchain enabled AI recruitment platform aimed at transforming how companies and candidates match. It uses advanced algorithms to align not just skills but also cultural fit and personality. Token holders gain benefits like early access, revenue sharing, and governance rights, pointing to a decentralized model. The project spans tokenomics, staking, and a roadmap from early launch to global scaling, with an audience of recruiters, job seekers, and investors across the AI and blockchain ecosystems.

## Audit Scope

Hashlock audited the Solidity code of the CeReBree project through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | Role |
|---|----------|------|
| 1 | `Presale.sol` | Token presale with ETH and USDT payments via Chainlink price feeds |
| 2 | `Staking.sol` | Multi tier, time locked staking with reward calculation |
| 3 | `Token.sol` | ERC20 token (CRB), 1 billion fixed supply, burnable |
| 4 | `IPresale.sol` | Presale interface |
| 5 | `IStaking.sol` | Staking interface |

**Audited Commit Hash:** `b6d6c5452f701a9f91adee79bcf2ca22defc5566`
**Fix Review Commit Hash:** `f85b5c97824eab430d93d50261e74fe4a1033476`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🟡 Low | 5 | ✅ Resolved |
| 📝 QA | 4 | ✅ Resolved |

**Total findings:** 9 (all resolved)

The presale supports ETH and USDT payments with Chainlink USD conversion and enforces minimum purchase requirements. The staking system offers three duration tiers (1 month at 8% APR, 3 months at 12% APR, 6 months at 18% APR) with batch unstaking for gas efficiency and total allocation tracking to prevent over commitment. The CRB token has a fixed maximum supply of 1 billion with burnable functionality and no post deployment minting. All findings were resolved before publication.

## Full Audit Report

📄 [Read the full audit report (PDF)](./CeReBree-Smart-Contract-Audit-Report-Final-Report-v2-2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/cerebree)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
