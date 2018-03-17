pragma solidity ^0.4.0;

contract JavaBookmark{
	struct Bookmark{
		address[] java;
		address[] notjava;
	}
	mapping(string=>Bookmark) bookmarks;
	address sennin;
	function JavaBookmark()public{
		sennin=msg.sender;
	}
	function Java(string url)public {
		bookmarks[url].java.push(msg.sender);
	}
	function GetJava(string url)public constant returns(uint count){
		Bookmark storage aBookmark=bookmarks[url];
		return aBookmark.java.length;
	}
	function NotJava(string url)public {
		bookmarks[url].notjava.push(msg.sender);
	}
	function GetNotJava(string url)public constant returns(uint count){
		Bookmark storage aBookmark=bookmarks[url];
		return aBookmark.notjava.length;
	}
}
