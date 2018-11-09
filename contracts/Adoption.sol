pragma solidity ^0.4.17;

contract Adoption {
  address[16] public adopters;
  
  modifier validAdoptId(uint petId) {
      require(petId >= 0 && petId < 16);
      _;
  }

  // 領養
  function adopt(uint petId) validAdoptId(petId) public returns (uint) {
    adopters[petId] = msg.sender;
    return petId;
  }

  function getAdopters() public view returns (address[16]) {
    return adopters;
  }
}