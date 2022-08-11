// SPDX-License-Identifier: MIT
// Mavrick.dev

// We define the compiler version
pragma solidity ^0.8.13;

interface IERC20 {

    // Getters Start

    function totalSupply() external view returns (unit);

    // Returns the amount of all tokens
    // This function is a getter and does not modify the state of the contract.
    // Therefore most tokens adopt 18 decimals and will return the total supply and other results as followed 1000000000000000000 for 1 token. 
    // Not every token has 18 decimals and this is something you really need to watch for when dealing with tokens.


    function balanceOf(address account) external view returns (uint);

    // Returns the amount of tokens owned by someone (address). 
    // This function is a getter and does not modify the state of the contract.

    function allowance(address owner, address spender) external view returns (uint);

    // The ERC-20 standard allows an address to give an allowance to another address to be able to retrieve tokens from it. 
    // This getter returns the remaining number of tokens that the spender will be allowed to spend on behalf of owner. 
    // This function is a getter and does not modify the state of the contract and should return 0 by default.

    // Getters End


    // Functions Start

    function transfer(address recipient, uint256 amount) external returns (bool);

    // Transfer tokens from one address to another.
    // Moves the amount of tokens from the function caller address (msg.sender) to the recipient address. 
    // This function emits the Transfer event defined later. It returns true if the transfer was possible.



    function approve(address spender, uint256 amount) external returns (bool);

    // Set the amount of allowance the spender is allowed to transfer from the function caller (msg.sender) balance. This function emits the Approval event. 
    // The function returns whether the allowance was successfully set.


    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);
    

    // TransferFrom() is intended to transfer tokens from one address to another on behalf of the owner address.
    // This function is similar to transfer but it is used by the spender to transfer on behalf of the owner.
    // This function is used by the spender to transfer tokens from the function caller's account to another account on behalf of the owner.
    // Moves the amount of tokens from sender to recipient using the allowance mechanism. 
    // amount is then deducted from the caller’s allowance. This function emits the Transfer event
    
    
    ////////////
    // Events 
    ///////////
    
    // Events in Solidity are the same as in any other programming language. 
    // An event is an inheritable member of the contract, which stores the arguments passed in the transaction logs when emitted. 
    // Generally, events are used to inform the calling application about the current state of the contract, with the help of the logging facility of EVM. 
    // Events notify the applications about the change made to the contracts and applications which can be used to execute the dependent logic.

    event Transfer(address indexed from, address indexed to, uint value);

    // Transfer event is emitted when a transfer is made.
    // The event parameters are the sender, the recipient and the amount of tokens transferred.
    // This event is emitted when the amount of tokens (value) is sent from the from address to the to address.
    // In the case of minting new tokens, the transfer is usually from the 0x00..0000 address while in the case of burning tokens the transfer is to 0x00..0000.


    event Approval(address indexed owner, address indexed spender, uint value);

    // This event is emitted when the amount of tokens (value) is approved by the owner to be used by the spender.


    
}

contract sampleContract{
     // Some actions...  
 
 }