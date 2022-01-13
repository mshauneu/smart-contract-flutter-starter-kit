# Ethereum wallet using an [ERC-20](https://en.wikipedia.org/wiki/ERC-20) smart contract

A digital wallet app, developed in dart language and flutter framework. This app can transfer tokens from one wallet to another, through an [ERC-20](https://en.wikipedia.org/wiki/ERC-20) Ethereum contract.

## What's being used

- Built in [Flutter](https://flutter.dev/docs/get-started/install) framework
- [QR code scanner](https://github.com/juliuscanute/qr_code_scanner) to scan addresses
- [Web3Dart](https://github.com/simolus3/web3dart) to interact with Ethereum blockchain
- [Flutter hooks](https://github.com/rrousselGit/flutter_hooks) to manage widget life-cycle.
- [Solidity](https://github.com/mshauneu/smart-contract-starter-kit) smart contract

## The smart contract

Feel free to check out the smart contract used in this project
[https://github.com/mshauneu/smart-contract-starter-kit](https://github.com/mshauneu/smart-contract-starter-kit)

## Getting started

### Run Ganache UI

![1](/docs/1.png)

### TatooineCoin (TC) ICO

```shell
npx hardhat --network ganache deploy:tc
```

### Find TC contract address

![2](/docs/2.png)

### Check balances

```shell
npx hardhat --network ganache exec:tc --address 0x5CBE9A4B158558B0abA87A2adC74AA76D8d9da71
```

Example output:

```txt
0xa9A53B0b9F5B50AD4b7F296dA342A819A67f5d29 - 100000000
0x06308E766B42fB089d5482e1DD1238591c920577 - 0
0x251F05a4d55A308B91722e721eb2b64787313bDF - 0
```

### Find PrivateKey

![4](/docs/4.png)

### Update AppConfig

![3](/docs/3.png)

### Run App

```shell
flutter pub get packages
flutter packages pub run build_runner build
flutter run -d chrome
```

### Import wallet

Hi `Import wallet` button, select `Private Key`:

![5](/docs/5.png)

### Select Local (Ganeche) network

![6](/docs/6.png)

### Find Recepient Address

![7](/docs/7.png)

### Transfer TC

![8](/docs/8.png)

## License

This source code is licensed under the MIT license found in the [LICENSE.txt](./LICENSE.txt) file.
