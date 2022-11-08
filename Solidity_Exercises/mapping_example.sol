// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/**
 * @title student
 * @dev Store & retrieve value in a variable
 */
contract mappingexample {
    mapping(uint128=>student) studentmap;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    struct student {
        string name;
        string dept;
        string bloodgroup;
    }
    student s;
    modifier isOwner() {
        require(owner == msg.sender, "Only owner can access it");
        _;
    }
    function store(uint128 roll, string memory _name, string memory _dept, string memory _bg) public isOwner {
     
        s.name = _name;
        s.dept = _dept;
        s.bloodgroup = _bg;
        studentmap[roll] = s;
       
    }
    function retrieve(uint128 _roll) public view returns(string memory, string memory) {
        student memory s1 = studentmap[_roll];
        return (s1.name, s1.bloodgroup);
    }
}
