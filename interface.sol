// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface  IERC20 {
    
    function totalSupply() external view returns(uint);
    //functions in interface cannot have an implementation, that is the reason for having a semi colon instead of curly brackets
    //external functions are the type of functions that are part of the contract but can only be called externally and outside the contract by other contracts
    //external fucntion use less gas as they are not saved in memory like ublic functions and can be read directly from the call data
    function balanceOf(address account) external view returns(uint);
    //check the amount of token that we have
    function transfer(address recepient, uint amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    //allows you to spend money on behalf of someone - just selects you but the you also need to approve
    function approve(address spender, uint amount) external returns(bool);

    //allows the owner to approve the amount to be spent by the suer
    function transferFrom(address sender, address recepient, uint amount) external returns (bool);
    //allows one to transfer tokens from someone's account to my account
    //this comes into play when the owner has approved you to spend money from his account

    event Transfer(address indexed from, address indexed to, uint value);
    //event is used to communicate with the frontend
    event Approval (address indexed owner, address indexed spender, uint value);

}
