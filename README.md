# Fan Engagement Platform

## Overview
This project implements two blockchain-based token systems:
1. Fan Engagement Token (Fungible Token)
2. Holographic Performance Rights NFT (Non-Fungible Token)

## Features

### Fan Engagement Token
- Token Minting: Create and distribute tokens to fans
- Token Transfers: Send tokens between accounts
- Token Balance Tracking
- Token URI Metadata Support

### Holographic Performance Rights NFT
- Performance NFT Minting
- Performance Ownership Transfer
- Detailed Performance Metadata Storage
- Performance Data Retrieval

## Testing
The project includes comprehensive test suites using Vitest, covering:
- Token minting
- Token transfers
- Balance checking
- Metadata management
- Performance NFT creation
- Performance ownership transfers

## Technical Details
- Uses mock blockchain state simulation
- Supports Stacks blockchain address format
- Tracks token balances and performance metadata
- Includes metadata like creator, title, description, duration

## Example Addresses
- Primary Account: `ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM`
- Secondary Account: `ST2CY5V39NHDPWSXMW9QDT3HC3GD6Q6XX4CFRK9AG`

## Future Improvements
- Implement error handling
- Add more robust transfer checks
- Integrate with actual blockchain infrastructure
- Develop frontend interface

## Setup
1. Clone the repository
2. Install dependencies
3. Run tests with `vitest`
