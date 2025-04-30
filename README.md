# ✨ EtherEcho ✨ - Advanced ETH Address Poisoning Simulation Tool

<p align="center">
  <img src="https://i.imgur.com/k0nIaiJ.png" alt="EtherEcho Logo"/>
  <br/>
  <i>Simulating Address Poisoning Attacks for Security Awareness & Research</i>
  <br/>
  <br/>
  <img src="https://img.shields.io/badge/Version-1.0.0-blue?style=for-the-badge" alt="Version">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/Status-Active%20Development-brightgreen?style=for-the-badge" alt="Status">
  <br/>
  <img src="https://img.shields.io/github/stars/EchoEth/eth-address-poisoner?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/forks/EchoEth/eth-address-poisoner?style=social" alt="GitHub Forks">
</p>

---
## ⚙️ Usage
1. Clone the repository
2. Rename env.example to `.env`
3. Edit `.env` with your private key & RPC url
4. Install dependencies `pip install -r requirements.txt`
5. Run the bot `py poison.py`

If the `contract_state.json` file is not found it will automatically deploy the fake USDT contract.

---


## ⚙️ How EtherEcho Works

`EtherEcho` automates the crucial steps of an address poisoning *simulation* for security testing:

1.  **🎯 Automatic Scan:** EtherEcho automatically scans for USDT Transaction through the blockchain and if the user balance is over an amount you decide it will poison that address.
2.  **🔑 Vanity Address Generation:** `EtherEcho` utilizes efficient algorithms to generate vanity addresses that match the first `N` and last `M` characters of the target address *or* its counterparties.
3.  **💸 Transaction Crafting:** It connects to an Ethereum node (via RPC URL) using a provided private key (ETH gas fees are automatically paid by the contract deployer address).
4.  **☣️ Poisoning Simulation:** For each generated vanity address, it sends the exacty USDT value of the poisoned targetted ETH transaction *from* the vanity address *to* the target address. This populates the target's transaction history with these look-alike addresses.
5.  **📊 Logging & Output:** Provides clear logs of generated addresses, transaction hashes, and success/failure status.

---

## 🤔 What is ETH Address Poisoning?

ETH Address Poisoning is a social engineering attack targeting cryptocurrency users. It exploits the common habit of users copying addresses from their transaction history rather than verifying them fully each time.

**Here's the attack flow:**

1.  **Target Identification:** The attacker identifies a target address (Victim).
2.  **Vanity Address Generation:** The attacker generates a large number of Ethereum addresses (`AttackerVanityAddr`) that visually mimic the Victim's address (or an address the Victim frequently interacts with). Usually, the first few and last few characters match (e.g., `0x1234...abcd`).
3.  **The "Poison" Transaction:** The attacker sends a tiny (often zero-value) amount of ETH or a token *from* their `AttackerVanityAddr` *to* the Victim's address.
4.  **The Trap:** This transaction now appears in the Victim's wallet history. The `AttackerVanityAddr` looks very similar to an address the Victim trusts or uses often.
5.  **The Mistake:** Later, when the Victim intends to send a *significant* amount of funds to their intended recipient, they might quickly glance at their history, see the familiar-looking `AttackerVanityAddr`, copy it, and paste it into the recipient field without careful verification.
6.  **Funds Lost:** The Victim unknowingly sends their funds to the attacker's vanity address instead of the legitimate recipient.

**Why it's effective:**

*   **User Habit:** Relies on the shortcut of copy-pasting from history.
*   **Visual Deception:** Long hexadecimal addresses are hard to compare character-by-character. Matching start/end characters often provide a false sense of security.
*   **Wallet UI:** Some wallets truncate addresses in the UI, making the similar parts more prominent.

---

## 🤝 CONTACTS


# **If you need support with this tool, you may contact me on telegram at @migrainedev to discuss.**


---

