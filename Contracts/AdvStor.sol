pragma solidity ^0.4.0;

contract AdvStor {
    uint[] public ids;
    
    function add(uint id) public { /* dont want view or pure, mutable*/
        ids.push(id);
    } 
    
    function get(uint position) view public returns (uint) { /*akin to index*/
        return ids[position];
    }
    
    
    function getAll() view public returns (uint[] memory) {
        return ids;
    }
    
    function length() view public returns(uint) {
        return ids.length;
    }
    
    
}
