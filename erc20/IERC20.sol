// SPDX-License-Identifier: MIT
// We define the compiler version
pragma solidity ^0.8.13;

interface IERC20 {

// Getters Start

function totalSupply() external view returns (unit);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

contract sampleContract{
     // Some actions...  
 
 }