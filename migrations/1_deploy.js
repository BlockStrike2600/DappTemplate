const HelloWorld = artifacts.require("HelloWorld.sol");

module.exports = async (deployer, network, accounts) => {
    await deployer.deploy(HelloWorld);
	console.log(`HelloWorld address:  ${HelloWorld.address}`);
};
