// version of solidity we are going to use
pragma solidity ^0.4.0;

// contract is like a class
contract MyFirstContract{
    // a private string variable
    string private name;
    // a private unsigned variable
    uint private age;
    
    // function defination
    function setName(string newName){
        name = newName;
    }
    
    // it is mandatory to mention the return type before definifng the function
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
