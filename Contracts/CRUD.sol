pragma solidity ^ 0.4.0;

contract CRUD{
    struct User {
        uint id;
        string name;
        
    }
    
    User[] public users;
    uint public nextId = 1;
    
    function create(string memory name) public {
        users.push(User(nextId, name));
        nextId++;
    }
    
    function read(uint id) view public returns(uint, string memory){
        /*for(uint i = 0; i < users.length; i++){ <---lower gas cost
            if (users[i].id == id) {*/
            uint i = find(id);
                return (users[i].id, users[i].name);
    }
    
    function update (uint id, string memory name) public {
        // for (uint i =  0; i <users.length; i++){ <---lower gas cost
        //     if (users[i].id == id){
             uint i = find(id);
                users[i].name = name;
    }
    
    function remove (uint id) public {
        uint i = find(id);
             delete users[i];
    }
    
    function find(uint id) view internal returns (uint) {
         for (uint i =  0; i <users.length; i++){
            if (users[i].id == id){
                return i;
            }
        }
        revert(); /*must update to newer versions for string data to be supported in revert argument*/
    }
}