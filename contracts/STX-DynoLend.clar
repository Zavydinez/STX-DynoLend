
;; STX-DynoLend
;; <add a description here>



# STX-DynoLend - Dynamic NFT-Backed Loan Smart Contract

## Overview

This Clarity smart contract implements a **dynamic NFT-backed lending system** on the Stacks blockchain. It allows users to mint NFTs whose attributes evolve based on **loan repayment behavior**, enabling a DeFi lending mechanism where NFTs serve as **collateral**.

Borrowers can list NFTs for loans, and lenders can fund these loans with STX. If the borrower repays on time, the NFT retains or improves its attributes. If the borrower defaults or misses payments, the NFT's attributes degrade.

---

## 🧠 Key Features

* **Minting Dynamic NFTs**
  Each NFT has mutable attributes: `rarity`, `power-level`, `condition`, and `last-updated`.

* **Loan Listing Mechanism**
  NFT owners can list tokens with loan terms (amount, duration, interest cap).

* **Lending System**
  Lenders offer loans that match listing conditions. Funds are transferred to borrowers, and NFTs are held in escrow.

* **Loan Terms and Tracking**
  Loans include amount, duration, interest, repayment history, and status.

* **Dynamic NFT Evolution**
  NFT attributes can be updated based on repayment status (future functionality could include scheduled updates).

---

## 📚 Data Structures

### ✅ Constants

* `CONTRACT_OWNER`: The deployer of the contract
* Various `ERR_` codes for error handling

### ✅ NFT Token

* `dynamic-nft`: Non-fungible token with numeric IDs

### ✅ Maps

* `token-attributes`: Tracks mutable NFT stats
* `loan-details`: Full loan data indexed by `loan-id`
* `token-loans`: Links NFTs to active loans
* `loan-listings`: Open listings of NFTs available for loan

### ✅ Variables

* `next-token-id`: Incremental ID for minting new NFTs
* `next-loan-id`: Incremental ID for tracking loans

---

## ⚙️ Functions

### 🔍 Read-Only

* `get-token-attributes`: View NFT stats
* `get-loan-details`: View loan information
* `get-token-loan`: View current loan on an NFT
* `get-loan-listing`: View open loan listing

### 🛠 Public

* `mint-nft`: Mint a new dynamic NFT with default attributes
* `list-nft-for-loan`: List an NFT for a loan with desired terms
* `offer-loan`: Lend STX to a borrower in exchange for NFT collateral

### 🧮 Private

* `calculate-payment`: Calculates block-based payment obligations
* `min-uint`, `max-uint`: Utility functions for comparisons

---

## 💡 Future Enhancements

* Repayment functionality
* Penalty and default logic
* NFT attribute mutation based on repayment
* Liquidation mechanisms
* Integration with frontends or NFT marketplaces

---

## 🔐 Access Control

* Only the NFT owner can list the token.
* NFTs are transferred into escrow (contract custody) during active loans.
* Loans can only be created if they meet listing requirements.

---

## 💬 Error Codes

| Code | Meaning             |
| ---- | ------------------- |
| 100  | Not authorized      |
| 101  | NFT not found       |
| 102  | Already listed      |
| 103  | Not listed          |
| 104  | Insufficient value  |
| 105  | Loan not found      |
| 106  | Loan defaulted      |
| 107  | Loan not yet due    |
| 108  | Loan already closed |

---

## 📦 Deployment Notes

* Written in Clarity for Stacks blockchain.
* Ensure enough STX is available for loan transfers.
* Future upgrades will require data migration or contract extension strategies.

---

## 🧪 Testing Ideas

* Mint NFTs and assert default attributes
* List and re-list edge cases
* Create valid and invalid loan offers
* Confirm NFT transfer to contract
* Simulate repayment and attribute change

---

## 🔠 Name Suggestions

1. **MorphoLoan**

   * From "morph" and "loan", highlighting dynamic NFTs
2. **ReputeFi**

   * Reputational finance via NFTs
3. **CollatX**

   * Short for collateral exchange
4. **MetaLoan**

   * Emphasizing metadata evolution
5. **DynoLend**

   * A playful take on "dynamic" and "lend"

---
