pragma solidity ^0.4.0;

// A simple JavaButton implementation
contract JavaButton{
	uint256 GlobalJavaCounter;
	uint256 GlobalNotJavaCounter;
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
	function GetJava()public constant returns(uint256 ){
		return GlobalJavaCounter;
	}
	function GetNotJava()public constant returns(uint256 ){
		return GlobalNotJavaCounter;
	}
}

