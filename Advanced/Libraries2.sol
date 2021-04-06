pragma solidity ^0.4.24;
import "https://github.com/ConsenSysMesh/openzeppelin-solidity/blob/master/contracts/math/SafeMath.sol";

contract Bank {
    mapping(address => uint) public accounts;
    using SafeMath for uint256;
    function deposit() public payable {
       require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error");
       accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }
    
    function withdraw(uint money) public {
       require(money <= accounts[msg.sender]);
       accounts[msg.sender] = accounts[msg.sender].sub(money);
    }
}