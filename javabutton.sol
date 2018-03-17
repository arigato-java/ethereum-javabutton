pragma solidity ^0.4.0;

// A simple JavaButton implementation
contract JavaButton{
	uint256 public GlobalJavaCounter;
	uint256 public GlobalNotJavaCounter;
	address sennin;
	// ctor
	function JavaButton() public{
		sennin=msg.sender;
		GlobalJavaCounter=0;
		GlobalNotJavaCounter=0;
	}
	// Java
	function Java()public{
		GlobalJavaCounter++;
	}
	// NotJava
	function NotJava()public{
		GlobalNotJavaCounter++;
	}
}

