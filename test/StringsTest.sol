pragma solidity ^0.4.16;

import "../lib/Strings.sol";

contract StringsTest {

    using Strings for string;
    
    function testLength() public {
        string memory myStr = "20scoops CNX";
        assert(12 == myStr.length());
    }

    function testConcat() public {
        string memory result = "20scoops CNX";
        string memory str = "20scoops";
        string memory expected = str.concat(" ").concat("CNX");
        assert(expected.compareTo(result));
    }

    function testReplace() public {
        string memory str = "20scoops CNX ";
        string memory expected = "20scoopsaCNX ";
        assert(expected.compareTo(str.replace(" ","a")));
    }

    function testReplaceAll() public {
        string memory str = "20scoops CNX ";
        string memory expected = "20scoopsaCNXa";
        assert(expected.compareTo(str.replaceAll(" ","a")));
    }

    function testCompareTo() public {
        string memory str = "20scoops CNX";
        assert(str.compareTo("20scoops CNX"));
    }
}