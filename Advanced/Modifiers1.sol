pragma solidity ^0.5.0;

contract Purchase{
    address public seller;
    
    modifier onlySeller{ // Modifier
        require(msg.sender==seller);
        _;
    }
    
    function abort() public view onlySeller { // Modifier usage
        // ...
    }
}