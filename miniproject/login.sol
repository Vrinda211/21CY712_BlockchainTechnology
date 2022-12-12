//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Login {

    mapping(uint128 => user) internal usermap;


    struct user{

        uint128 id;

        string Password;  

    }

 

    user internal use;

 

function submit(uint128 _id, string memory _Password) public{

    use.Password = _Password;

    usermap[_id] = use;

}

}