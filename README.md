# solidity_crowdfunding_example

## How to deploy

Install dependencies & configure environment variables.

```
npm install
npm install -g truffle
cp env.js.example env.js
```

There are 2 informations you need to provide.

1. `web3Url`: Ethereum full node url.
2. `privateKey`: Your private key in Ethereum.

```javascript
// env.js
let env = {
  // Private network
  devnet: {
    web3Url: 'http://127.0.0.1:8545',
    privateKey: 'YOUR_PRIVATE_KEY',
  },
  // Testing network
  testnet: {
    web3Url: 'https://ropsten.infura.io',
    privateKey: 'YOUR_PRIVATE_KEY',
  },
  // Main network
  mainnet: {
    web3Url: 'https://mainnet.infura.io',
    privateKey: 'YOUR_PRIVATE_KEY',
  }
};
```

Start to deploy CrowdFunding contracts in `testnet`.

```javascript
> truffle deploy --reset --network testnet
Deploying CrowdFunding...
  ... 0x829def96c4040daa04bbedbc059a076c64aa0de208cb2062f5b795b501640877
  CrowdFunding: 0x66fa70bd417b104a5f082e22969ca5c6f7788b66
Saving successful migration to network...
```
