// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public _tokenName = "Kartik";
    string public _tokenAbbrv = "KT";
    uint public _totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public bal;

    // mint function
    function mint(address Add, uint Value) public {
        _totalSupply += Value;
        bal[Add] += Value;
    }

    // burn function
    function burn(address Add, uint Value) public {
        if(bal[Add] >= Value) {
            _totalSupply -= Value;
            bal[Add] -= Value;
    }
    }
}
