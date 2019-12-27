pragma solidity 0.5.0;

//based on swc


contract Proxy {
  address public owner;
  address[] public whiteList;


  constructor() public payable{
    owner = msg.sender;  
    require(msg.value > 0);
  }
  
  modifier onlyOwner{
      require(msg.sender == owner);
      _;
  }
  
  
  function addTurstAddr(address _addr) external onlyOwner{
      whiteList.push(_addr);
  }

  function forward(address callee, bytes memory data) public {
    callee.delegatecall(data);
  }
  
  function withdraw() external{
      require(msg.sender == owner);
      msg.sender.transfer(address(this).balance);
  }

}