pragma solidity ^0.4.24;

contract changeArrayValue{
    uint[20] public arr;
    
    function startChange() public{
        firstChange(arr);
        secondChange(arr);
    }
    
    function firstChange(uint[20] storage x) internal{
        x[0]=4;
    }
    function secondChange(uint[20] x) internal pure{
        x[0]=3;
    }
    function printChange() public view returns(uint){

        // This will return 4
        return arr[0];
    }
}