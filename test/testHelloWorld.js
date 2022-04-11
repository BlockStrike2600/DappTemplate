const HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", accounts => {
    it("should contains 'Hello World!'", async () => {
        const helloDeployed = await HelloWorld.deployed();
        const response = await helloDeployed.hello.call();
        assert.equal(response, "Hello World!", "HelloWorld.hello() is not returning 'Hello World!'")
    });
});