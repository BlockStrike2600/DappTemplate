# Dapp Template



## Requirements

- [Docker installed](https://docs.docker.com/get-docker/)
- [docker-compose installed](https://docs.docker.com/compose/install/)
- [Node.js installed](https://nodejs.org/en/download/)

## Installation


Install [Truffle](https://trufflesuite.com/) globaly with npm.

```sh
npm i -g truffle
```

Launch the [Ganache](https://trufflesuite.com/ganache/) container with

```sh
docker-compose up // To see the logs
```
```sh
docker-compose up -d // To launch in background
```
## Development

Create your smart contracts in the ./contracts/ folder

Write your units tests in Solidity or Javascript in the ./test/ folder

Write your migration scripts in the ./migrations/ folder

Change the truffle config in ./truffle-config.js

To compile:

```sh
truffle compile
```

To launch unit test (for example ./test/TestHelloWorld.sol):

```sh
truffle test ./test/TestHelloWorld.sol
```

To deploy on your Ganache node:

```sh
truffle migrate
```
