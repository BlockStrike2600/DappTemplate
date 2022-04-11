//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.6 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/HelloWorld.sol";

contract TestHelloWorld {
    function compareStrings(string memory a, string memory b) public pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
    }

    function testHelloWorldUsingDeployedContract() public {
        HelloWorld helloDeployed = HelloWorld(DeployedAddresses.HelloWorld());
        string memory expected = "Hello World!";

        Assert.equal(compareStrings(helloDeployed.hello(), expected), true, "HelloWorld.hello() is not returning 'Hello World!'");
    }
}