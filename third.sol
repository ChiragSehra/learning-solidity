pragma solidity ^0.4.0;

interface Regulator{
    function checkValue(uint amount) returns(bool);
    function loan() returns(bool);
}

contract Bank is Regulator{
    // specifiers in solidity are :public, private and internal(like protected)
    uint private value;
    address private owner;
    
    modifier ownerFunc{
        require(owner ==msg.sender);
        // this tells that wherever ownerFunc is applied the condition will be checked first and then all other code will be executed
        _;
    }
    
    function Bank(uint amount){
        value = amount;
        owner = msg.sender;
    }
    function deposit(uint amount) ownerFunc{
        value += amount;
    }
    
    // since ownerFunc is applied to deposit and withdraw only sender/creator of the contract can
    // use these functions. You can see this by changing the address of sender from right side menu
    // and the function will give error.
    
    function withdraw(uint amount) ownerFunc{
        if(checkValue(amount)){
        value -= amount;
        }
    }
    
    function balance() returns(uint){
        return value;
    }
    
    function checkValue(uint amount) returns(bool){
        return amount>=value;
    }
    
    function loan() returns(bool){
        return value>0;
    }
    
}

// is "Contract name" is used for inheritance(extending contract)

contract MyFirstContract is Bank(10){
    string private name;
    uint private age;
    
    function setName(string newName){
        name = newName;
    }
    
    function getName() returns (string){
        return name;
    }
    
    function setAge(uint newAge){
        age = newAge;
    }
    
    function getAge() returns (uint){
        return age;
    }
    
}
