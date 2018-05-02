pragma solidity ^0.4.0;


contract Bank{
    // specifiers in solidity are :public, private and internal(like protected)
    uint private value;
    
    function Bank(uint amount){
        value = amount;
    }
    function deposit(uint amount){
        value += amount;
    }
    
    function withdraw(uint amount){
        value -= amount;
    }
    
    function balance() returns(uint){
        return value;
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
