var Adoption = artifacts.require("Adoption");

contract('Adoption', async (accounts) => {
  it("should assert true", async () => {
    var adoption = await Adoption.deployed();
    assert.isTrue(true);
  });
});