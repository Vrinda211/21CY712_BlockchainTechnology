//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract normaluser{

    mapping(uint128 =>n_user) internal nusermap;

 

    struct n_user {

        string user_Name;

        string Email;

        string Password;

        uint256 phone ;
        string location;
        uint128 id;

    }

 

    n_user internal user;

 

function store (string memory _Name,string memory _Email,string memory _Password,uint256 _phone, string memory _location, uint128 _id) public{

    user.user_Name = _Name;
    user.Email = _Email;

    user.Password = _Password;

    user.phone= _phone;
    user.location = _location;
    nusermap[_id] = user;

}

 

}