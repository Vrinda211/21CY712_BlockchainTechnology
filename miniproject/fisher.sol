//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract tourist{

    mapping(uint128 =>f_user) internal fusermap;

 

    struct f_user {

        string fman_Name;

        string locatn;
        string Password;

        uint256 phone ;
        uint128 id;

    }

    f_user internal fuser;

 
function store (string memory _Name, string memory _location, string memory _Password,uint256 _phone, uint128 _id) public{

    fuser.fman_Name = _Name;
    fuser.locatn = _location;
    fuser.Password = _Password;

    fuser.phone = _phone;
    fusermap[_id] = fuser;

}

}