<img align="right" width="150" height="150" top="100" src="./assets/blueprint.png">

# huff-merkle-distributor • [![ci](https://github.com/huff-language/huff-project-template/actions/workflows/ci.yaml/badge.svg)](https://github.com/huff-language/huff-project-template/actions/workflows/ci.yaml) ![license](https://img.shields.io/github/license/huff-language/huff-project-template.svg) ![solidity](https://img.shields.io/badge/solidity-^0.8.15-lightgrey)

A merkle distributor Huff contract.

## Warning. Be Cautious.
Huff-merkle-distributor is still a work in progress and the and unaudited. We do not give any warranties and will not be liable for any loss incurred through any use of this codebase.

## Getting Started

Once you've cloned and entered into your repository, you need to install the necessary dependencies. In order to do so, simply run:

```shell
forge install
```

To build and test your contracts, you can run:

```shell
forge build
forge test
```

For more information on how to use Foundry, check out the [Foundry Github Repository](https://github.com/foundry-rs/foundry/tree/master/forge) and the [foundry-huff library repository](https://github.com/huff-language/foundry-huff).


## Blueprint

```ml
lib
├─ forge-std — https://github.com/foundry-rs/forge-std
├─ foundry-huff — https://github.com/huff-language/foundry-huff
└─ huff-mate — https://github.com/pentagonxyz/huffmate
scripts
├─ Deploy.s.sol — Deployment Script
src
├─ MerkleDistributor — A Merkle Distributor Contract in Huff
test
└─ MerkleDistTest.t — MerkleDistributorTests
```


## License

[The Unlicense](https://github.com/huff-language/huff-project-template/blob/master/LICENSE)


## Acknowledgements
- [Uniswap Merkle Distributor](https://github.com/Uniswap/merkle-distributor)
- [forge-template](https://github.com/foundry-rs/forge-template)
- [femplate](https://github.com/abigger87/femplate)
