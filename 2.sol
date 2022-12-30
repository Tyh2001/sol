pragma solidity >=0.7.0 <0.9.0;

contract Hello {
    string name;

    constructor() {
        name = "Hello world!";
    }

    function hello() public view returns (string memory) {
        return name;
    }
}
