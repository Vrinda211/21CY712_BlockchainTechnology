// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract examination_mapping {
    mapping(uint128=>student) studentmap;
    struct student{
    string Name;
    string Department;
    uint256 Mark1;
    uint256 Mark2;
    uint256 Mark3;
    uint256 total;
    uint256 avg;}
    student s;

    
    function Calculate(uint128 _rol) public{
        student memory s1 = studentmap[_rol];
        s1.total = s1.Mark1 + s1.Mark2 + s1.Mark3;
        s1.avg = (s1.total/3);
        studentmap[_rol] = s1;

    }

    /**
     * @dev Store value in variable
     * @param _Name value to store
     */


    function store(uint128 _rollnumber, string memory _Name, string memory _Dept, uint256 _M1, uint256 _M2, uint256 _M3) public {
     
     s.Name = _Name;
     s.Department = _Dept;
     s.Mark1 = _M1;
     s.Mark2 = _M2;
     s.Mark3 = _M3;
     studentmap[_rollnumber] = s;
         }
    

    /**
     * @dev Return value 
     * @return num value of 'number'
     */
    function retrieve(uint128 _roll) public view returns (string memory, string memory, uint256, uint256){
        student memory s1 = studentmap[_roll];
        return(s1.Name, s1.Department, s1.total, s1.avg);
    }
}
