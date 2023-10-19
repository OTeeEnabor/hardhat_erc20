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

    //  create a constructor to instantiate the name and symbol of the erc20 token on deployment
    constructor(string memory _name, string memory _symbol ){
        name = _name;
        symbol = _symbol;
    }
    // create a function to assist with the conversion between wei and ether
    function decimals() external pure returns (uint8){
        return 18;
    }
    // create a function to transfer amount to an address
    function transfer(address recipient, uint256 amount) external returns (bool){
        require(recipient != address(0), "ERC20: transfer to the zero address");

        // create variable to gets the balance of the sender
        uint256  senderBalance = balanceOf[msg.sender];

        // require that the senderBalance is greater than the transfer amount
        require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");

        // deduct amount from sender balance if require passes
        balanceOf[msg.sender] = senderBalance - amount;

        // credit recipient with the amount transfer
        balanceOf[recipient]  += amount;

        // return true since the execution above did not fail
        return true;


    }


}