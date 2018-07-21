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

    function testPlus() public {
        uint myInt = 5;
        assert(10 == myInt.plus(5));
    }
    
    function testMinus() public {
        uint myInt = 15;
        assert(10 == myInt.minus(5));
    }
    
    function testMultiply() public {
        uint myInt = 2;
        assert(10 == myInt.multiply(5));
    }
    
    function testDivide() public {
        uint myInt = 4;
        assert(2 == myInt.divide(2));
    }
    
    function testDivideByZero() public {
        uint myInt = 4;
        assert(0 == myInt.divide(0));
    }
    
    function testMod() public {
        uint myInt = 500;
        assert(2 == myInt.mod(6));
    }
}