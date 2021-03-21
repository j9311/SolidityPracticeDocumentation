pragma solidity ^ 0.4.0;

contract StorageSMRContract {
    string public data;
    
    function set(string memory _data) public {
        data = _data;
    }
    
    function get() view public returns(string memory){
        return data;
        
    }
}

/* creating public vaiable with value makes defacto get for value; created by set
pure allows view of variables hard coded in as read only
view lets you look at memory of smart contract
*/