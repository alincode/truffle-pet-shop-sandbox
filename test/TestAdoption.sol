pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";

// 這裡對應到你之前寫的智能合約
import "../contracts/Adoption.sol";

contract TestAdoption {
  Adoption instance = Adoption(DeployedAddresses.Adoption());

  // 測試領養
  function testAdopt() public {
    uint returnedId = instance.adopt(8);
    uint expected = 8;
    Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded.");
  }

  function testGetAdopterPetId() public {
    address expected = this;
    address adopter = instance.adopters(8);
    Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
  }

  function testGetAdopters() public {
    address expected = this;
    address[16] memory adopters = instance.getAdopters();
    Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
  }
}