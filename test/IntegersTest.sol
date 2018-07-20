pragma solidity ^0.4.16;

import "../lib/Integers.sol";
import "../lib/Strings.sol";

contract IntegersTest {

    using Integers for uint;
    using Strings for string;

    function testParseToInt() public {
        assert(12345 == Integers.parseInt("12345"));
    }

    function testIntToString() public {
        uint value = 12345;
        string memory expected = "12345";
        assert(expected.compareTo(value.toString()));
    }
}