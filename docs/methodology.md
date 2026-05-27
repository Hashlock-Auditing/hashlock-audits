# Hashlock Audit Methodology

> How Hashlock approaches every smart contract security audit and penetration testing engagement.

Hashlock applies a structured, multi phase methodology to every security review. Our process combines **manual line by line code analysis** by senior auditors with **software assisted testing**, formal threat modelling, and collaborative remediation cycles. Below is the full breakdown of how we work.

## Phase 1: Engagement Onboarding

Every engagement begins with the **Request for Information (RFI)** process, capturing project context, codebase scope, deadlines, and special requirements such as NDA, public disclosure, monitoring add ons, or bug bounty integration. This produces a fixed scope and engagement plan signed off by both parties.

Inputs required from the client at this stage typically include:

- GitHub repository access (or zipped codebase) with the exact commit hash to audit
- Whitepaper, technical documentation, and intended behaviour specifications
- Deployment environment details such as target chain, compiler version, language version
- Token economics design (if applicable)
- Threat model assumptions and known prior security work

## Phase 2: Manual Code Review

> **Chain agnostic by capability, multi-chain by experience.**

The core of every Hashlock engagement is **manual, line by line analysis** by qualified senior auditors. Our reviewers look for:

- **Smart contract logic flaws**: incorrect state transitions, reentrancy, access control gaps, oracle manipulation, MEV exposure
- **Economic and incentive vulnerabilities**: tokenomics edge cases, governance attacks, flash loan exploitable paths
- **Cryptographic errors**: signature replay, weak randomness, incorrect hashing, insecure key derivation
- **Protocol level vulnerabilities**: bridge security, cross chain replay, validator slashing logic, consensus assumptions
- **Implementation defects**: integer overflows, unchecked external calls, incorrect error propagation, gas griefing

For each codebase we adapt to the specific language and ecosystem. Hashlock is **chain agnostic with deep multi-chain expertise**. We audit any blockchain and any smart contract language. Selected examples of stacks we have audited:

- **Solidity, Vyper** on EVM chains including Ethereum, Polygon, Arbitrum, Base, BNB Chain, and many more, covering OpenZeppelin patterns, ERC standard compliance, proxy and upgrade patterns
- **Rust** on Solana, Substrate (Polkadot, Kusama), Near, Cosmos, and other Rust based chains, covering pallet logic, sealing, ownership invariants, CPI safety
- **Move** on Aptos and Sui, covering resource semantics, object ownership, abilities
- **Cairo** on Starknet, covering proof system safety and L1 to L2 message flow
- **Go, CosmWasm** on Cosmos SDK appchains, covering module logic and IBC integrations
- **Zero knowledge circuits** including Noir, Circom, and other proving stacks, covering circuit safety, soundness, completeness
- **Bitcoin Scripts, BRC 20, Ordinals, Runes**, covering purpose specific verification
- **Any other blockchain or smart contract language on request**, including newer Layer 1s, emerging VMs, and novel cryptographic protocols

Our methodology adapts to the codebase, not the other way around.

## Phase 3: Software Assisted Testing

Manual review is supported by:

- **Static analysis tooling**: Slither, Mythril, Aderyn, Semgrep, and custom queries
- **Fuzzing**: Echidna, Foundry invariant testing, and custom fuzzers for protocol specific properties
- **Symbolic execution**: Manticore and KEVM derived tooling for critical paths
- **Formal verification**: applied selectively to mathematical primitives and bridge state machines
- **Deployment simulation**: fork testing on mainnet state with realistic adversarial scenarios

## Phase 4: Reporting and Severity Classification

Every finding is documented with:

- A unique identifier (e.g., `[H-01]`, `[M-03]`)
- The affected file and function
- A clear description of the vulnerability
- Impact analysis covering what an attacker can achieve
- Likelihood assessment covering technical and economic barriers to exploitation
- Concrete recommendation for remediation
- Severity assignment per our published criteria (see [Severity Definitions](./severity-definitions.md))

Reports include an Executive Summary, Project Context, Audit Scope, Intended Smart Contract Functions table (claimed vs actual behaviour), full findings detail, Centralisation review, Methodology, and Disclaimers.

## Phase 5: Remediation and Fix Review

After delivering the initial report, the client team addresses findings. Hashlock then performs a **fix review** on the updated commit hash, verifying that:

- Each finding has been correctly remediated, not just superficially patched
- The fix does not introduce regressions or new vulnerabilities
- Acknowledged but not resolved findings are documented with rationale

The final report version is only published after the fix review confirms remediation. Every report records both the **audited commit hash** and the **fix review commit hash** for full reproducibility.

## Phase 6: Optional Ongoing Security

Projects engaging Hashlock for the **Hashlocked tier** continue with:

- **Bug Bounty Program**: managed on Hashlock's own bug bounty platform with researcher payouts and triage
- **CCSS Certification Support**: for projects pursuing Cryptocurrency Security Standard compliance
- **vCISO Advisory**: ongoing security leadership, incident response readiness, operational security review

See [How to Choose an Auditor](./how-to-choose-an-auditor.md) for guidance on selecting the right engagement type for your project.

---

## Quality Standards

Every Hashlock audit is conducted by senior auditors with proven competitive security backgrounds, including top placements in public security contests such as Cantina, Code4rena, Sherlock, and bug bounty programs such as Immunefi. Our team has secured hundreds of protocols across the Web3 ecosystem and continues to participate in competitive audits to keep our methodology calibrated against the broader security research community.

## Resources

- 📋 [Severity Definitions](./severity-definitions.md)
- 🛡️ [Audit Process Timeline](./audit-process.md)
- ❓ [FAQ](./faq.md)
- 🎯 [How to Choose an Auditor](./how-to-choose-an-auditor.md)
- 🌐 [Hashlock Audits Directory](https://hashlock.com/audits)
- 📩 [Request an Audit](https://hashlock.com/new-client-request-for-information)

---

_This methodology is applied with appropriate adaptation across every engagement type, including smart contract audits, tokenomics audits, penetration testing, and ongoing advisory work._
