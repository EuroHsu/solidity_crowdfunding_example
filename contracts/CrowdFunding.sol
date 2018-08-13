pragma solidity ^0.4.23;

contract CrowdFunding {
  address public owner = msg.sender;
  uint public amountRaised = 0;

  event Feedback (address indexed _address, uint _value);

  modifier onlyOwner {
    if (msg.sender == owner) _;
  }

  function() public payable {
    address _address = msg.sender;
    uint _value = msg.value;
    amountRaised += _value;

    emit Feedback(_address, _value);
  }

  function withdraw() public onlyOwner {
    owner.transfer(amountRaised);
    emit Feedback(owner, amountRaised);
  }
}