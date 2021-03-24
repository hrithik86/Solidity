pragma solidity 0.4.24;

contract Bank{
    mapping (address=>uint) public accounts;
    
    function deposit(uint money) public{
        accounts[msg.sender]+=money;
    }
    
    function withdraw(uint money) public{
        accounts[msg.sender]-=money;
    }
    
    function getBalance() public view returns(uint){
        return accounts[msg.sender];
    }
}