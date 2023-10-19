// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ERC20 {
    // declare uint variable to store the total supply of token
    uint256 public totalSupply;
    // declare a string variable to store the name of the token
    string public name;
    // declare a string variable to store the symbol of the token
    string public symbol;

    // create mapping that maps address to balance (uint256)
    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol ){
        name = _name;
        symbol = _symbol;
    }

    function decimals() external pure returns (uint8){
        return 18;
    }


}