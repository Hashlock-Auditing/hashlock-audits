# Kadena: Hashlock Security Audit

**Client:** Kadena
**Audit Date:** April 2025
**Project Type:** RWA Tokenization, ERC-3643 Compliant Asset Standard
**Network:** Kadena
**Language:** Pact
**Token:** $KDA
**Report Type:** Final Report v2
**Security Rating:** ✅ **Secure**

🔗 **Project Website:** [kadena.io](https://www.kadena.io/)
🔗 **Hashlock Audit Page:** [hashlock.com/audits/kadena](https://hashlock.com/audits/kadena)

## About Kadena

Kadena is a next generation blockchain platform built for enterprise grade scalability, security, and decentralization. Its multi chain architecture, Proof of Work consensus, and EVM compatibility let developers build high performance decentralized applications with high throughput, ultra low transaction fees, and strong security guarantees. This engagement covered a real world asset v1 implementation written in Pact, Kadena's native smart contract language. The implementation is a Kadena native version of the ERC-3643 token standard, tailored for compliant asset tokenization with identity registries, claim topics, trusted issuers, and modular compliance rules.

## Audit Scope

Hashlock audited the Pact code of the Kadena RWA implementation through comprehensive manual line by line analysis supported by software assisted testing.

**Contracts Audited:**

| # | Contract | Role |
|---|----------|------|
| 1 | `real-world-asset-v1.pact` | Core ERC-3643 style RWA token |
| 2 | `compliance-v1.pact` | Compliance framework |
| 3 | `compliance-compatible-v1.pact` | Compliance compatibility layer |
| 4 | `claim-topics-registry-v1.pact` | Registry of claim topics |
| 5 | `identity-registry-v1.pact` | Identity registry |
| 6 | `identity-registry-storage-v1.pact` | Identity registry storage |
| 7 | `trusted-issuers-registry-v1.pact` | Trusted issuers registry |
| 8 | `agent-role-v1.pact` | Agent role access control |
| 9 | `max-balance-compliance.pact` | Maximum balance compliance module |
| 10 | `max-investors-compliance.pact` | Maximum investors compliance module |
| 11 | `supply-limit-compliance.pact` | Supply limit compliance module |
| 12 | `mvp-token.pact` | MVP token |
| 13 | `token-mapper.pact` | Token mapper |

**Audited Commit Hash:** `198703133634e82b54849d31144f24e17bc801fe`

## Audit Findings Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 4 | ✅ Resolved |
| 🟠 Medium | 4 | ✅ Resolved / Acknowledged |
| 🟡 Low | 9 | ✅ Resolved / Acknowledged |

**Total findings:** 17 (all resolved or formally acknowledged)

This is one of Hashlock's Pact language engagements, demonstrating capability beyond EVM and into Kadena's native smart contract ecosystem. The audit reviewed a full ERC-3643 compliant tokenization suite with identity verification, claim management, trusted issuer governance, and pluggable compliance rules (max balance, max investors, supply limits). Hashlock identified four high severity vulnerabilities during the initial review, all addressed before publication.

## Confidential Engagement

Hashlock also conducted a smart contract audit of Kadena's "Brale Token" (June 2025), listed on the audit page with a Secure rating. That report is confidential at the client's request, so no findings, scope, or report file from it are reproduced here.

## Full Audit Report

📄 [Read the full audit report (PDF)](./Kadena-Smart-Contract-Audit-Report-Final-Report-v2.pdf)

🌐 [View on hashlock.com](https://hashlock.com/audits/kadena)

## About Hashlock

Hashlock is a globally leading Web3 security firm headquartered in Australia, specializing in smart contract audits and blockchain security across the DeFi, gaming, RWA, AI, and infrastructure sectors. Our auditors come from competitive security backgrounds and have secured hundreds of protocols across the ecosystem.

**Chain agnostic with deep multi-chain expertise.** Hashlock audits any blockchain and any smart contract language. Recent engagements span Ethereum (Solidity, Vyper), Solana (Rust), Polkadot (Substrate), Cosmos (Go, CosmWasm), Aptos and Sui (Move), Starknet (Cairo), Kadena (Pact), zero knowledge circuits, Bitcoin Scripts and BRC 20, plus many other ecosystems including newer Layer 1s on request.

🌐 **Website:** [hashlock.com](https://hashlock.com)
🤖 **Free AI Audit Tool:** [aiaudit.hashlock.com](https://aiaudit.hashlock.com)
📩 **Request an audit:** [Submit our RFI](https://hashlock.com/new-client-request-for-information)
📚 **More audits:** [Browse the full Hashlock Audits Repository](../../README.md)

---

_Audit conducted by Hashlock Pty Ltd. This report is published with the client's consent. For full disclaimers, methodology, and severity definitions, please refer to the complete PDF._
